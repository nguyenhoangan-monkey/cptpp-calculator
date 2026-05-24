import urllib.request
import json
import re
import os

def clean_variant_name(name):
    # Formats string into a valid OCaml variant name
    name = re.sub(r'[^a-zA-Z0-9\s_]', '', name)
    return "_".join([w.capitalize() for w in name.split()])

def generate_ocaml_variants(output_path: str):
    # Fetches global country data and generates an OCaml variant module
    
    print("Fetching country data from mledoze/countries...")
    URL = "https://raw.githubusercontent.com/mledoze/countries/master/countries.json"
    response = urllib.request.urlopen(URL)
    data = json.loads(response.read().decode())

    variants = set()
    country_strings = {}  # Map variant -> set of match strings
    iso_matches = []

    print("Processing country variants and aliases...")
    for country in data:
        # Generate a good variant name
        iso3 = country.get("cca3")
        english_name = country.get("name", {}).get("common", "")
        
        variant = clean_variant_name(english_name)
        variants.add(variant)
        
        if variant not in country_strings:
            country_strings[variant] = set()
            
        # Gather aliases
        aliases = {english_name}
        
        for native in country.get("name", {}).get("native", {}).values():
            aliases.add(native.get("common", ""))
            
        for trans in country.get("translations", {}).values():
            aliases.add(trans.get("common", ""))
            
        alt_spellings = country.get("altSpellings", [])
        if len(alt_spellings) > 1:
            for alt in alt_spellings[1:]:
                aliases.add(alt)
            
        # Clean up aliases and wrap them in quotes
        for alias in aliases:
            alias_clean = alias.strip()
            if alias_clean and '"' not in alias_clean:
                country_strings[variant].add(f'"{alias_clean}"')
                
        iso_matches.append(f'  | "{iso3}" -> Some {variant}')

    # Create target directories if they do not exist
    output_dir = os.path.dirname(output_path)
    if output_dir:
        os.makedirs(output_dir, exist_ok=True)

    print(f"Writing OCaml source to {output_path}...")
    
    # Generate the OCaml code
    # It is assumed that these countries generation are exhaustive
    # If you want to define custom regions, you need another data type
    with open(output_path, "w", encoding="utf-8") as f:
        f.write("type t =\n")
        for v in sorted(variants):
            f.write(f"  | {v}\n")
        
        f.write("\n\n") #add a breather

        f.write("let of_string = function\n")
        for variant, aliases in country_strings.items():
            # Collapse the aliases into a single line: | "A" | "B" | "C" -> Some Variant
            collapsed_aliases = " | ".join(sorted(aliases))
            f.write(f"  | {collapsed_aliases} -> Some {variant}\n")
        f.write("  | _ -> None\n")  # Added default case for of_string

        f.write("\n\n") #add a breather
        
        f.write("let of_iso_string str =\n")
        f.write("  match String.uppercase_ascii str with\n")
        for im in iso_matches:
            f.write(f"{im}\n")
        f.write("  | _ -> None\n")  # Added default case for of_iso_string
        
    print("Country generation complete.")

if __name__ == "__main__":
    # Fallback for testing the script locally by itself
    generate_ocaml_variants("country.ml")