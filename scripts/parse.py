#################################################
# YOU MUST RUN THE MAKEFILE, NOT EXECUTING THIS #
# THIS BASICALLY JUST STORE THE PATHS TO .PY    #
#################################################
from scripts import parse_hs
from scripts import parse_country

def main():
    print("Starting harmonization suite...")

    print("1/2: Processing Harmonized System codes...")
    parse_hs.world_2022_to_ocaml(
        "raw_data/harmonized_system/hs_world_2022/harmonized-system.csv",
        "data/hs_world_2022.ml"
    )
    
    print("2/2: Generating OCaml country files...")
    parse_country.generate_ocaml_variants("parsed/ocaml_files/country.ml")

    print("All datasets parsed successfully.")

if __name__ == "__main__":
    main()