open Core

let raw_hs_world_csv = [%blob "hs_world_2022.csv"]
let lookup_table = Hashtbl.create (module String)

(* Parse the embedded CSV on module load and populate the table *)
let () =
  let csv_channel = Csv.of_string raw_hs_world_csv in
  let csv_data = Csv.input_all csv_channel in
  let rows = Csv.to_array csv_data in

  Array.iteri rows ~f:(fun idx row ->
      if idx > 0 && Array.length row >= 2 then
        let hscode = String.strip row.(0) in
        let description = String.strip row.(1) in
        Hashtbl.set lookup_table ~key:hscode ~data:description)

let lookup_code code =
  match Hashtbl.find lookup_table (String.strip code) with
  | Some desc -> desc
  | None -> "Error: HS Code not found"
