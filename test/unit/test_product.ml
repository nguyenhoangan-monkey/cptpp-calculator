(* test/unit/test_product.ml *)
open Domain
open Product

(* --- FIXTURES --- *)

(* First Definition *)
let pvc_pellet_metrics : material_metrics =
  { hs_code = Hs_code.of_string "3904.10"; origin = "CHN"; cost = 5.00 }

let paint_metrics : material_metrics =
  { hs_code = Hs_code.of_string "3208.20"; origin = "JPN"; cost = 2.50 }

let box_metrics : material_metrics =
  { hs_code = Hs_code.of_string "4819.10"; origin = "VNM"; cost = 1.50 }

let pvc_pellet : material =
  {
    metadata = Some { id = "mat-pvc-001"; name = "PVC pellets" };
    trade_metrics = pvc_pellet_metrics;
  }

let paint : material =
  {
    metadata = Some { id = "mat-paint-001"; name = "Acrylic paint" };
    trade_metrics = paint_metrics;
  }

let box : material =
  {
    metadata = Some { id = "mat-box-001"; name = "Cardboard box" };
    trade_metrics = box_metrics;
  }

let hatsune_miku_metrics : product_metrics =
  {
    hs_code = Hs_code.of_string "9503.00.00";
    export_value = 50.00;
    origin_country = "VNM";
    destination_country = "MEX";
    bill_of_materials = [ pvc_pellet; paint; box ];
  }

let miku_def_1 : product =
  {
    metadata = Some { id = "miku-v4x-001"; name = "Hatsune Miku figurine" };
    trade_metrics = hatsune_miku_metrics;
  }

(* Second Definition *)
let miku_def_2 : product =
  {
    metadata = Some { id = "miku-v4x-001"; name = "Hatsune Miku figurine" };
    trade_metrics =
      {
        hs_code = Hs_code.of_string "9503.00.00";
        export_value = 50.00;
        origin_country = "VNM";
        destination_country = "MEX";
        bill_of_materials =
          [
            {
              metadata = Some { id = "mat-pvc-001"; name = "PVC pellets" };
              trade_metrics =
                { hs_code = Hs_code.of_string "3904.10"; origin = "CHN"; cost = 5.00 };
            };
            {
              metadata = Some { id = "mat-paint-001"; name = "Acrylic paint" };
              trade_metrics =
                { hs_code = Hs_code.of_string "3208.20"; origin = "JPN"; cost = 2.50 };
            };
            {
              metadata = Some { id = "mat-box-001"; name = "Cardboard box" };
              trade_metrics =
                { hs_code = Hs_code.of_string "4819.10"; origin = "VNM"; cost = 1.50 };
            };
          ];
      };
  }

(* Third Definition *)
let miku_def_3 : product =
  {
    metadata = None;
    trade_metrics =
      {
        hs_code = Hs_code.of_string "9503.00.00";
        export_value = 50.00;
        origin_country = "VNM";
        destination_country = "MEX";
        bill_of_materials =
          [
            {
              metadata = None;
              trade_metrics =
                { hs_code = Hs_code.of_string "3904.10"; origin = "CHN"; cost = 5.00 };
            };
            {
              metadata = None;
              trade_metrics =
                { hs_code = Hs_code.of_string "3208.20"; origin = "JPN"; cost = 2.50 };
            };
            {
              metadata = None;
              trade_metrics =
                { hs_code = Hs_code.of_string "4819.10"; origin = "VNM"; cost = 1.50 };
            };
          ];
      };
  }

(* --- HELPER FUNCTIONS --- *)

(** Strips all metadata from a product and its materials to allow functional comparison *)
let strip_metadata (p : product) : product =
  let strip_mat_meta (m : material) : material = { m with metadata = None } in
  {
    metadata = None;
    trade_metrics =
      {
        p.trade_metrics with
        bill_of_materials = List.map strip_mat_meta p.trade_metrics.bill_of_materials;
      };
  }

(* --- TESTS --- *)

let test_absolute_equality () =
  (* Tests that decomposing variables vs writing inline yields the exact same structure *)
  Alcotest.(check bool)
    "Def 1 and Def 2 are structurally identical" true (miku_def_1 = miku_def_2)

let test_functional_equality () =
  (* Strip metadata from 1 and 2, then compare directly to 3 *)
  let stripped_1 = strip_metadata miku_def_1 in
  let stripped_2 = strip_metadata miku_def_2 in

  Alcotest.(check bool)
    "Def 1 equals Def 3 (excluding metadata)" true (stripped_1 = miku_def_3);
  Alcotest.(check bool)
    "Def 2 equals Def 3 (excluding metadata)" true (stripped_2 = miku_def_3)

let () =
  let open Alcotest in
  run "Product Definition Tests"
    [
      ( "Equivalency",
        [
          test_case "Absolute Equality (1 & 2)" `Quick test_absolute_equality;
          test_case "Functional Equality (1, 2 & 3)" `Quick test_functional_equality;
        ] );
    ]
