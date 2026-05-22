import csv
from pathlib import Path

def parse_hs_world_2022(input_path: str, output_path: str) -> None:
    """
    Filters and cleans raw HS code CSV data into a minimalist format.
    Made for raw_data/harmonized_system/hs_world_2022/harmonized-system.csv
    """
    # Ensure the output directory exists before writing
    Path(output_path).parent.mkdir(parents=True, exist_ok=True)

    with open(input_path, mode="r", encoding="utf-8") as infile, \
         open(output_path, mode="w", encoding="utf-8", newline="") as outfile:
        
        reader = csv.DictReader(infile)
        
        # Explicitly declare our minimalist headers for the clean file
        fieldnames = ["hscode", "description", "parent"]
        writer = csv.DictWriter(outfile, fieldnames=fieldnames)
        writer.writeheader()
        
        for row in reader:
            # Convert "TOTAL" to an empty string to map cleanly to OCaml Options
            parent_value = "" if row["parent"] == "TOTAL" else row["parent"]
            
            writer.writerow({
                "hscode": row["hscode"],
                "description": row["description"],
                "parent": parent_value
            })
            
    print(f"Successfully harmonized: {input_path} -> {output_path}")
    