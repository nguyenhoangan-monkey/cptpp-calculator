#################################################
# YOU MUST RUN THE MAKEFILE, NOT EXECUTING THIS #
#################################################
from scripts import harmonized_system
from scripts import countries

def main():
    print("Starting harmonization suite...")

    print("1/2: Processing Harmonized System codes...")
    harmonized_system.parse_hs_world_2022(
        "raw_data/harmonized_system/hs_world_2022/harmonized-system.csv",
        "parsed/harmonized_system/hs_world_2022.csv"
    )
    
    print("2/2: Generating OCaml country files...")
    countries.generate_ocaml_variants("parsed/ocaml_files/country.ml")

    print("All datasets parsed successfully.")

if __name__ == "__main__":
    main()