import csv
from pathlib import Path
import tempfile
import os

def world_2022_to_ocaml(input_path: str, output_path: str) -> None:
    # Path(output_path).parent.mkdir(parents=True, exist_ok=True)

    # dictionaries to look up later
    hs_code_to_desc = {}
    hs_code_to_parent = {}

    with open(input_path, mode="r", encoding="utf-8") as infile:
        reader = csv.DictReader(infile)
        for row in reader:
            hs_code = row["hscode"]
            hs_code_to_desc[hs_code] = row["description"]
            
            parent_value = "" if row["parent"] == "TOTAL" else row["parent"]
            hs_code_to_parent[hs_code] = parent_value

    # first, get the true list of nested HS code via... list comprehensions
    sub_codes = {k: v for k, v in hs_code_to_parent.items()}
    two_digit_codes = {
        v: [k for k, val in sub_codes.items() if val == v]
        for v in set(sub_codes.values()) if len(v) == 2
    }
    four_digit_codes = {
        v: [k for k, val in sub_codes.items() if val == v]
        for v in set(sub_codes.values()) if len(v) == 4
    }

    def trim_digits(key, value):
        if not value.startswith(key):
            return ValueError
        else:
            return value[-2:]

    two_digit_codes_trimmed = {key: [trim_digits(key, i) for i in value_list] for key, value_list in two_digit_codes.items()}
    four_digit_codes_trimmed = {key: [trim_digits(key, i) for i in value_list] for key, value_list in four_digit_codes.items()}
    hs_code_data = {chapter: [{heading: four_digit_codes_trimmed[chapter + heading]} for heading in value_list] for chapter, value_list in two_digit_codes_trimmed.items()}


    # then generate the ocaml code
    out_path = Path(output_path)
    
    out_path.parent.mkdir(parents=True, exist_ok=True)
    
    with tempfile.NamedTemporaryFile(mode='w', dir=out_path.parent, delete=False) as tf:
        temp_name = tf.name
        
        tf.write("(* Auto-generated code matrix from cptpp-parser/data/hs_world_2022.ml *)\n\n")
        tf.write("let is_valid (code : Hs_code.t) =\n")
        tf.write("  let c = Hs_code.chapter code in\n")
        tf.write("  let h = Hs_code.heading code in\n")
        tf.write("  let s = Hs_code.subheading code in\n")
        tf.write("  match (c, h, s) with\n")
        tf.write("  ")
        
        
        for chapter, headings in sorted(hs_code_data.items()):
            c_int = int(chapter)
            for heading_dict in headings:
                for heading, subheadings in heading_dict.items():
                    h_int = int(heading)
                    for sub in subheadings:
                        s_int = int(sub)
                        tf.write(f"| ({c_int}, {h_int}, {s_int}) ")
        
        tf.write("-> true\n")
        tf.write("  | _ -> false\n")
        
    try:
        os.replace(temp_name, out_path)
    except Exception as e:
        if os.path.exists(temp_name):
            os.remove(temp_name)
        raise e