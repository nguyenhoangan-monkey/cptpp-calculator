(* test/unit/test_product.ml *)
open Domain
open Product

(* --- FIXTURES --- *)

(* Long definition *)
(* HS code 3904.10: "Poly(vinyl chloride), not mixed with any other substances" *)
let pvc_pellet =
  {
    hs_code = Hs_code.of_string "3904.10";
    origin = Country.China;
    cost = Bignum.of_string "5.00";
  }

(* HS code 3208.20: "Based on acrylic or vinyl polymers" *)
let paint =
  {
    hs_code = Hs_code.of_string "3208.20";
    origin = Country.Japan;
    cost = Bignum.of_string "2.50";
  }

(* HS code 4819.10: "Cartons, boxes and cases, of corrugated paper or paperboard" *)
let cardboard_box =
  {
    hs_code = Hs_code.of_string "4819.10";
    origin = Country.Vietnam;
    cost = Bignum.of_string "1.50";
  }

let miku_def_long =
  {
    hs_code = Hs_code.of_string "9503.00.00";
    export_value = Bignum.of_string "50.00";
    origin_country = Country.Vietnam;
    destination_country = Country.Mexico;
    bill_of_materials = [ pvc_pellet; paint; cardboard_box ];
  }

(* Inline definition *)
let miku_def_short =
  {
    hs_code = Hs_code.of_string "9503.00.00";
    export_value = Bignum.of_string "50.00";
    origin_country = Country.Vietnam;
    destination_country = Country.Mexico;
    bill_of_materials =
      [
        {
          hs_code = Hs_code.of_string "3904.10";
          origin = Country.China;
          cost = Bignum.of_string "5.00";
        };
        {
          hs_code = Hs_code.of_string "3208.20";
          origin = Country.Japan;
          cost = Bignum.of_string "2.50";
        };
        {
          hs_code = Hs_code.of_string "4819.10";
          origin = Country.Vietnam;
          cost = Bignum.of_string "1.50";
        };
      ];
  }
(* --- TESTS --- *)

let test_absolute_equality () =
  (* Tests that decomposing variables vs writing inline yields the exact same structure *)
  Alcotest.(check bool)
    "Def 1 and Def 2 are structurally identical" true
    (miku_def_long = miku_def_short)

let () =
  let open Alcotest in
  run "Product Definition Tests"
    [ ("Equivalency", [ test_case "Absolute equality" `Quick test_absolute_equality ]) ]
