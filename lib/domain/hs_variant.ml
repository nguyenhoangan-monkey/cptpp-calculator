(* types *)
type wco_version = WCO2017 | WCO2022 | WCO2028
type trade_direction = Import | Export
type hs_system = Rules.CPTPP.t option * wco_version * trade_direction

(* for ease of development, accept a compromise where the extensions are unstructured *)
type t = { system : hs_system; base_hs : Hs_code.t }

(* let make version country direction hs_code *)
let resolve_data_source config =
  let open Data in
  match config with
  | None, WCO2022, (Import | Export) -> Some Hs_world_2022.codes
  | Some Country.Vietnam, WCO2022, (Import | Export) -> None
  | Some Country.Japan, WCO2022, (Import | Export) -> None
  | _ -> None

(* query functions *)
let is_valid code =
  let c = Hs_code.chapter code in
  let h = Hs_code.heading code in
  let s = Hs_code.subheading code in
  let target = (c * 10000) + (h * 100) + s in

  let open Data in
  let rec binary_search low high =
    if low > high then false
    else
      let mid = low + ((high - low) / 2) in
      let value = Array.unsafe_get Hs_world_2022.codes mid in
      if value = target then true
      else if value > target then binary_search low (mid - 1)
      else binary_search (mid + 1) high
  in
  binary_search 0 (Array.length Hs_world_2022.codes - 1)
