import urllib.request
import json
import re
import os
import unicodedata

def clean_variant_name(name):
    name = unicodedata.normalize('NFD', name)
    name = "".join([c for c in name if not unicodedata.combining(c)])
    
    name = re.sub(r'[-_./,]', ' ', name)
    
    name = re.sub(r'[^a-zA-Z0-9\s]', '', name)

    variant = "_".join([w.capitalize() for w in name.split() if w])

    # Hardcoded exceptions
    if variant == "Dr_Congo":
        return "Democratic_Republic_Of_Congo"
    
    return variant


def generate_ocaml_variants(output_path: str):
    # Fetches global country data and generates an OCaml variant module
    
    print("Fetching country data from mledoze/countries...")
    URL = "https://raw.githubusercontent.com/mledoze/countries/master/countries.json"
    response = urllib.request.urlopen(URL)
    data = json.loads(response.read().decode())

    variants = set()
    country_strings = {}  # Map variant -> set of match strings
    iso_matches = []

    global_string_registry = {}
    country_strings = {}

    # Get variant names
    print("Processing country variants and aliases...")
    for country in data:
        english_name = country.get("name", {}).get("common", "")
        variant = clean_variant_name(english_name)
        variants.add(variant)
        
        if variant not in country_strings:
            country_strings[variant] = set()
            
    # Pass 1: Gather all aliases per country and track global usage
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
            
        # Clean and register strings globally
        for alias in aliases:
            alias_clean = alias.strip()
            if alias_clean and '"' not in alias_clean:
                quoted_alias = f'"{alias_clean}"'
                
                # Add to global registry to track duplicates
                if quoted_alias not in global_string_registry:
                    global_string_registry[quoted_alias] = set()
                global_string_registry[quoted_alias].add(variant)
                
                # Add to local country map
                country_strings[variant].add(quoted_alias)
                
        # (Keep your iso_matches logic here as it was)
        iso3 = country.get("cca3")
        iso_matches.append(f'  | "{iso3}" -> Some {variant}')

    # Pass 2: Purge any alias that belongs to MORE THAN ONE country
    print("Purging ambiguous translation duplicates...")
    duplicate_strings = {
        string for string, owners in global_string_registry.items() if len(owners) > 1
    }

    for variant in country_strings:
        # Subtract the set of duplicates from this country's strings
        country_strings[variant] -= duplicate_strings

    # Create target directories if they do not exist
    output_dir = os.path.dirname(output_path)
    if output_dir:
        os.makedirs(output_dir, exist_ok=True)

    print(f"Writing OCaml source to {output_path}...")
    
    # Generate the OCaml code
    with open(output_path, "w", encoding="utf-8") as f:
        f.write("(*\n")
        f.write("  THIS IS AUTO GENERATED FROM CPTPP-PARSER\n")
        f.write("  data source: https://raw.githubusercontent.com/mledoze/countries/master/countries.json\n")
        f.write("*)\n\n")

        f.write("type t =\n")
        for v in sorted(variants):
            f.write(f"  | {v}\n")
        
        f.write("\n\n")

        f.write("let of_string = function\n")
        for variant, aliases in country_strings.items():
            # Only write a match arm if the country still has aliases left
            if aliases:
                collapsed_aliases = " | ".join(sorted(aliases))
                f.write(f"  | {collapsed_aliases} -> Some {variant}\n")
        f.write("  | _ -> None\n")
        
        f.write("\n\n")

        f.write("let of_iso_string str =\n")
        f.write("  match String.uppercase_ascii str with\n")
        for im in iso_matches:
            f.write(f"{im}\n")
        f.write("  | _ -> None\n")
        
    print("Country generation complete.")

if __name__ == "__main__":
    # Fallback for testing the script locally by itself
    generate_ocaml_variants("country.ml")