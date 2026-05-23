open Domain

(* Unsafe definition *)
let hatsune_miku_unsafe =
  let pvc_pellet = Trade.Material.of_strings_exn "3904.10" Country.China "5.00" in
  let paint = Trade.Material.of_strings_exn "3208.20" Country.Japan "2.50" in
  let box = Trade.Material.of_strings_exn "4819.10" Country.Vietnam "1.50" in

  let bill_of_materials = [ pvc_pellet; paint; box ] in

  Trade.Good.of_strings_exn "9503.00.00" "20.00" Country.Vietnam Country.Mexico
    bill_of_materials

(** Safe definition **)
let make_miku () =
  let open Result.Syntax in
  let parse_cost str err = try Ok (Q.of_string str) with _ -> Error err in

  (* Unsafe handling *)
  let validated_product_result =
    let* hs_figurine = Hs_code.of_string "9503.00.00" in
    let* hs_pvc = Hs_code.of_string "3904.10" in
    let* hs_paint = Hs_code.of_string "3208.20" in
    let* hs_box = Hs_code.of_string "4819.10" in

    let* cost_pvc = parse_cost "5.00" "Invalid PVC cost" in
    let* cost_paint = parse_cost "2.50" "Invalid paint cost" in
    let* cost_box = parse_cost "1.50" "Invalid box cost" in
    let* export_val = parse_cost "20.00" "Invalid export value" in

    let pvc_pellet = make_material hs_pvc Country.China cost_pvc in
    let paint = make_material hs_paint Country.Japan cost_paint in
    let box = make_material hs_box Country.Vietnam cost_box in

    let bill_of_materials = [ pvc_pellet; paint; box ] in

    Ok
      {
        hs_code = hs_figurine;
        export_value = export_val;
        origin_country = Country.Vietnam;
        destination_country = Country.Mexico;
        bill_of_materials;
      }
  in

  (* Unwrapping the product *)
  match validated_product_result with
  | Ok product -> product
  | Error err -> failwith ("Miku generation failed internal validation: " ^ err)

let hatsune_miku_safe = make_miku ()

(* --- TESTS --- *)
let test_absolute_equality () =
  Alcotest.(check bool)
    "Unsafe and safe initialization are structurally identical" true
    (hatsune_miku_unsafe = hatsune_miku_safe)

let () =
  let open Alcotest in
  run "Product Definition Tests"
    [ ("Equivalency", [ test_case "Absolute equality" `Quick test_absolute_equality ]) ]
