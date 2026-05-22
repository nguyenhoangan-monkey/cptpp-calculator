(* test/unit/test_product.ml *)
open Domain
open Product

(* Global definition *)
let hs_figurine = Hs_code.of_string_exn "9503.00.00"
let hs_pvc      = Hs_code.of_string_exn "3904.10"
let hs_paint    = Hs_code.of_string_exn "3208.20"
let hs_box      = Hs_code.of_string_exn "4819.10"

let pvc_pellet = make_material hs_pvc Country.China "5.00"
let paint      = make_material hs_paint Country.Japan "2.50" 
let box        = make_material hs_box Country.Vietnam "1.50"

let bill_of_materials = [ pvc_pellet; paint; box ]

let hatsune_miku = {
  hs_code = hs_figurine;
  export_value = Bignum.of_string "20.00";
  origin_country = Country.Vietnam;
  destination_country = Country.Mexico;
  bill_of_materials;
}


(** Generator factory **)
let make_miku ~export_value =
  let hs_figurine = Hs_code.of_string_exn "9503.00.00" in
  let hs_pvc      = Hs_code.of_string_exn "3904.10" in
  let hs_paint    = Hs_code.of_string_exn "3208.20" in
  let hs_box      = Hs_code.of_string_exn "4819.10" in

  let pvc_pellet = make_material hs_pvc Country.China "5.00" in
  let paint      = make_material hs_paint Country.Japan "2.50" in
  let box        = make_material hs_box Country.Vietnam "1.50" in

  let bill_of_materials = [ pvc_pellet; paint; box ] in

  {
    hs_code = hs_figurine;
    export_value = Bignum.of_string export_value;
    origin_country = Country.Vietnam;
    destination_country = Country.Mexico;
    bill_of_materials;
  }

let generator_miku   = make_miku ~export_value:"20.00"


(* --- TESTS --- *)

let test_absolute_equality () =
  (* Tests that object created by explicit definition and generator are the same *)
  Alcotest.(check bool)
    "Explicit object and generator object are structurally identical" true
    (hatsune_miku = generator_miku)

let () =
  let open Alcotest in
  run "Product Definition Tests"
    [ ("Equivalency", [ test_case "Absolute equality" `Quick test_absolute_equality ]) ]
