let raw_hs_world_csv = [%blob "../../data/parsed/harmonized_system/hs_world_2022.csv"]

let parse_tariffs () =
  print_endline "Data successfully embedded into the parser layer!"