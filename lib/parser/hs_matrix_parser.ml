let raw_hs_world_csv = [%blob "hs_world_2022.csv"] (* ignore error, it is in subrepo *)


(* Defer table creation until the first time it is actually needed *)
let lookup_table =
  lazy
    (let table = Hashtbl.create 1024 in
     (* Standard library hash table *)
     let csv_channel = Csv.of_string raw_hs_world_csv in
     let csv_data = Csv.input_all csv_channel in

     List.iteri
       (fun idx row ->
         if idx > 0 && List.length row >= 2 then
           let hscode = String.trim (List.nth row 0) in
           let description = String.trim (List.nth row 1) in
           Hashtbl.replace table hscode description)
       csv_data;
     table)

(* Return an option (Some/None) instead of an error string *)
let lookup_code code =
  let table = Lazy.force lookup_table in
  Hashtbl.find_opt table (String.trim code)
