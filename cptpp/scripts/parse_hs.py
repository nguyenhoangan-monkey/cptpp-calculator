import csv
from pathlib import Path
import tempfile
import os
from typing import Dict, List, Tuple

def world_2022_to_ocaml(input_path: str, output_path: str) -> None:
    def parse_hs_csv(csv_path: str) -> Tuple[Dict[str, str], Dict[str, str]]:
        hs_code_to_desc = {}
        hs_code_to_parent = {}
        with open(csv_path, mode="r", encoding="utf-8") as infile:
            reader = csv.DictReader(infile)
            for row in reader:
                hs_code = row["hscode"]
                hs_code_to_desc[hs_code] = row["description"]
                parent_value = "" if row["parent"] == "TOTAL" else row["parent"]
                hs_code_to_parent[hs_code] = parent_value
        return hs_code_to_desc, hs_code_to_parent

    def process_hs_hierarchy(sub_codes: Dict[str, str]) -> List[int]:
        two_digit_codes = {
            v: [k for k, val in sub_codes.items() if val == v]
            for v in set(sub_codes.values()) if len(v) == 2
        }
        four_digit_codes = {
            v: [k for k, val in sub_codes.items() if val == v]
            for v in set(sub_codes.values()) if len(v) == 4
        }

        def trim_digits(key: str, value: str) -> str:
            if not value.startswith(key):
                raise ValueError(f"Value '{value}' does not match prefix key '{key}'")
            return value[-2:]

        two_digit_codes_trimmed = {
            key: [trim_digits(key, i) for i in value_list] 
            for key, value_list in two_digit_codes.items()
        }
        four_digit_codes_trimmed = {
            key: [trim_digits(key, i) for i in value_list] 
            for key, value_list in four_digit_codes.items()
        }
        hs_code_data = {
            chapter: [{heading: four_digit_codes_trimmed[chapter + heading]} for heading in value_list] 
            for chapter, value_list in two_digit_codes_trimmed.items()
        }

        flat_codes = []
        for chapter, headings in hs_code_data.items():
            c_int = int(chapter)
            for heading_dict in headings:
                for heading, subheadings in heading_dict.items():
                    h_int = int(heading)
                    for sub in subheadings:
                        s_int = int(sub)
                        encoded = (c_int * 10000) + (h_int * 100) + s_int
                        flat_codes.append(encoded)
                        
        flat_codes.sort()
        return flat_codes

    def write_ocaml_matrix(flat_codes: List[int], out_file_path: str) -> None:
        out_path = Path(out_file_path)
        out_path.parent.mkdir(parents=True, exist_ok=True)
        
        with tempfile.NamedTemporaryFile(mode='w', dir=out_path.parent, delete=False) as tf:
            temp_name = tf.name
            
            tf.write("let codes = [|\n")
            for i, code in enumerate(flat_codes):
                tf.write(f" {code};")
                if i % 10 == 9:
                    tf.write("\n")
            tf.write("\n|]\n\n")
                        
        try:
            os.replace(temp_name, out_path)
        except Exception as e:
            if os.path.exists(temp_name):
                os.remove(temp_name)
            raise e

    # Execute the isolated pipeline stages sequentially
    _, hs_code_to_parent = parse_hs_csv(input_path)
    flat_codes = process_hs_hierarchy(hs_code_to_parent)
    write_ocaml_matrix(flat_codes, output_path)