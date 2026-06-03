"""
 SPDX-License-Identifier: GPL-3.0-only
 Copyright (C) 2026 Nguyễn Hoàng An
"""

import urllib.request
import json
import re
import os
import unicodedata
from pathlib import Path
import tempfile
from typing import Dict, List, Set, Tuple, Any

def fetch_country_data() -> List[Dict[str, Any]]:
    print("Fetching country data from mledoze/countries...")
    url = "https://raw.githubusercontent.com/mledoze/countries/master/countries.json"
    response = urllib.request.urlopen(url)
    return json.loads(response.read().decode())

def generate_ocaml_variants(raw_data: List[Dict[str, Any]], output_path: str) -> None:
    def process_country_mappings(data: List[Dict[str, Any]]) -> Tuple[Set[str], Dict[str, str], Dict[str, str], Dict[str, Set[str]], List[str]]:
        def clean_variant_name(name: str) -> str:
            name = unicodedata.normalize('NFD', name)
            name = "".join([c for c in name if not unicodedata.combining(c)])
            name = re.sub(r'[-_./,]', ' ', name)
            name = re.sub(r'[^a-zA-Z0-9\s]', '', name)
            variant = "_".join([w.capitalize() for w in name.split() if w])

            if variant == "Dr_Congo":
                return "Democratic_Republic_Of_Congo"
            
            return variant
        print("Processing country variants and aliases...")
        variants = set()
        to_iso_matches = {}  
        to_name_matches = {} 
        country_strings = {}
        global_string_registry = {}
        iso_matches = []

        for country in data:
            english_name = country.get("name", {}).get("common", "")
            variant = clean_variant_name(english_name)
            variants.add(variant)
            
            iso3 = country.get("cca3", "")
            to_iso_matches[variant] = iso3
            to_name_matches[variant] = english_name
            
            if variant not in country_strings:
                country_strings[variant] = set()
                
            aliases = {english_name}

            for native in country.get("name", {}).get("native", {}).values():
                aliases.add(native.get("common", ""))
                aliases.add(native.get("official", ""))

            for trans in country.get("translations", {}).values():
                aliases.add(trans.get("common", ""))
                aliases.add(trans.get("official", ""))

            alt_spellings = country.get("altSpellings", [])
            if len(alt_spellings) > 1:
                for alt in alt_spellings[1:]:
                    aliases.add(alt)

            aliases.discard("")
                
            for alias in aliases:
                alias_clean = alias.strip()
                if alias_clean and '"' not in alias_clean:
                    quoted_alias = f'"{alias_clean}"'
                    
                    if quoted_alias not in global_string_registry:
                        global_string_registry[quoted_alias] = set()
                    global_string_registry[quoted_alias].add(variant)
                    country_strings[variant].add(quoted_alias)
                    
            iso_matches.append(f'  | "{iso3}" -> Some {variant}')

        print("Purging ambiguous translation duplicates...")
        duplicate_strings = {
            string for string, owners in global_string_registry.items() if len(owners) > 1
        }

        for variant in country_strings:
            country_strings[variant] -= duplicate_strings

        return variants, to_iso_matches, to_name_matches, country_strings, iso_matches

    def write_atomic_ocaml_file(
        variants: Set[str],
        to_iso_matches: Dict[str, str],
        to_name_matches: Dict[str, str],
        country_strings: Dict[str, Set[str]],
        iso_matches: List[str],
        out_file_path: str
    ) -> None:
        out_path = Path(out_file_path)
        out_path.parent.mkdir(parents=True, exist_ok=True)

        print(f"Writing OCaml source to {out_file_path}...")
        with tempfile.NamedTemporaryFile(mode='w', dir=out_path.parent, delete=False, encoding="utf-8") as tf:
            temp_name = tf.name
            
            tf.write("(*\n")
            tf.write("  THIS IS AUTO GENERATED FROM CPTPP\n")
            tf.write("  data source: https://raw.githubusercontent.com/mledoze/countries/master/countries.json\n")
            tf.write("*)\n\n")

            tf.write("type t =\n")
            for v in sorted(variants):
                tf.write(f"  | {v}\n")
            tf.write("\n\n")

            tf.write("let to_iso_string = function\n")
            for variant, iso3 in sorted(to_iso_matches.items()):
                tf.write(f'  | {variant} -> "{iso3}"\n')
            tf.write("\n\n")

            tf.write("let to_string = function\n")
            for variant, english_name in sorted(to_name_matches.items()):
                escaped_name = english_name.replace('"', '\\"')
                tf.write(f'  | {variant} -> "{escaped_name}"\n')
            tf.write("\n\n")

            tf.write("let of_string_base = function\n")
            for variant, aliases in sorted(country_strings.items()):
                if aliases:
                    collapsed_aliases = " | ".join(sorted(aliases))
                    tf.write(f"  | {collapsed_aliases} -> Some {variant}\n")
            tf.write("  | _ -> None\n")
            tf.write("\n\n")

            tf.write("let of_iso_string_base str =\n")
            tf.write("  match String.uppercase_ascii str with\n")
            for im in sorted(iso_matches):
                tf.write(f"{im}\n")
            tf.write("  | _ -> None\n")
            tf.write("\n\n")

            tf.write("""let of_string_exn s =
  match of_string_base s with
  | Some country -> country
  | None -> invalid_arg (Printf.sprintf "Country.of_string_exn: invalid string format '%s'" s)

let of_iso_string_exn s =
  match of_iso_string_base s with
  | Some country -> country
  | None -> invalid_arg (Printf.sprintf "Country.of_iso_string_exn: invalid ISO string format '%s'" s)

let of_string s =
  match of_string_base s with
  | Some country -> Ok country
  | None -> Error (Printf.sprintf "Invalid country string: '%s'" s)

let of_iso_string s =
  match of_iso_string_base s with
  | Some country -> Ok country
  | None -> Error (Printf.sprintf "Invalid ISO country string: '%s'" s)

""")

        try:
            os.replace(temp_name, out_path)
        except Exception as e:
            if os.path.exists(temp_name):
                os.remove(temp_name)
            raise e

    # Execute pipeline stages sequential loop
    variants, to_iso, to_name, country_strs, iso_tbl = process_country_mappings(raw_data)
    write_atomic_ocaml_file(variants, to_iso, to_name, country_strs, iso_tbl, output_path)
    print("Country generation complete.")


if __name__ == "__main__":
    generate_ocaml_variants("country.ml")