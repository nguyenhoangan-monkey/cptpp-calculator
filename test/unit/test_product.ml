(* test/unit/test_product.ml *)
open Domain
open Product

(* --- FIXTURES --- *)

(* Long definition *)
(* HS code 3904.10: "Poly(vinyl chloride), not mixed with any other substances" *)
let pvc_pellet : material = {
  hs_code = Hs_code.of_string "3904.10";
  origin = "CHN";
  cost = 5.00;
}

(* HS code 3208.20: "Based on acrylic or vinyl polymers" *)
let paint : material = {
  hs_code = Hs_code.of_string "3208.20";
  origin = "JPN";
  cost = 2.50;
}

(* HS code 4819.10: "Cartons, boxes and cases, of corrugated paper or paperboard" *)
let cardboard_box : material = {
  hs_code = Hs_code.of_string "4819.10";
  origin = "VNM";
  cost = 1.50;
}

let miku_def_long : product = {
  hs_code = Hs_code.of_string "9503.00.00";
  export_value = 50.00;
  origin_country = "VNM";
  destination_country = "MEX";
  bill_of_materials = [ pvc_pellet; paint; cardboard_box ] 
}

(* Inline definition *)
let miku_def_short : product = {
  hs_code = Hs_code.of_string "9503.00.00";
  export_value = 50.00;
  origin_country = "VNM";
  destination_country = "MEX";
  bill_of_materials = [
    { hs_code = Hs_code.of_string "3904.10"; origin = "CHN"; cost = 5.00 };
    { hs_code = Hs_code.of_string "3208.20"; origin = "JPN"; cost = 2.50 };
    { hs_code = Hs_code.of_string "4819.10"; origin = "VNM"; cost = 1.50 };
  ];
}

(* --- TESTS --- *)

let test_absolute_equality () =
  (* Tests that decomposing variables vs writing inline yields the exact same structure *)
  Alcotest.(check bool)
    "Def 1 and Def 2 are structurally identical" true (miku_def_long = miku_def_short)

let () =
  let open Alcotest in
  run "Product Definition Tests"
    [
      ( "Equivalency",
        [
          test_case "Absolute equality" `Quick test_absolute_equality;
        ] );
    ]
