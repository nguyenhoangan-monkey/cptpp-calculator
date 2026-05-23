open Domain

(* Unsafe definition *)
let pvc_pellet = Material.of_strings_exn "3904.10" Country.China "5.00"
let paint = Material.of_strings_exn "3208.20" Country.Japan "2.50"
let box = Material.of_strings_exn "4819.10" Country.Vietnam "1.50"
let hatsune_miku = Good.of_strings_exn "9503.00.00" "20.00" Country.Vietnam Country.Mexico

let unsafe_miku_tree =
  Tech_tree.node "Hatsune Miku Figurine (Final Good)" Good hatsune_miku
    [
      Tech_tree.leaf "PVC Plastic Pellets" Material pvc_pellet;
      Tech_tree.leaf "Acrylic Paint Sub-component" Material paint;
      Tech_tree.leaf "Cardboard Packaging Box" Material box;
    ]

(** Safe definition **)
let make_miku () =
  let open Result.Syntax in
  let+ hs_figurine = Hs_code.of_string "9503.00.00"
  and+ hs_pvc = Hs_code.of_string "3904.10"
  and+ hs_paint = Hs_code.of_string "3208.20"
  and+ hs_box = Hs_code.of_string "4819.10"
  and+ cost_pvc = Money.of_string "5.00"
  and+ cost_paint = Money.of_string "2.50"
  and+ cost_box = Money.of_string "1.50"
  and+ export_val = Money.of_string "20.00" in

  let pvc_pellet = Material.{ hs_code = hs_pvc; origin = Country.China; cost = cost_pvc } in
  let paint = Material.{ hs_code = hs_paint; origin = Country.Japan; cost = cost_paint } in
  let box = Material.{ hs_code = hs_box; origin = Country.Vietnam; cost = cost_box } in
  let hatsune_miku =
    Good.
      {
        hs_code = hs_figurine;
        free_on_board_value = export_val;
        shipped_from = Country.Vietnam;
        shipped_to = Country.Mexico;
      }
  in

  Tech_tree.node "Hatsune Miku Figurine (Final Good)" Good hatsune_miku
    [
      Tech_tree.leaf "PVC Plastic Pellets" Material pvc_pellet;
      Tech_tree.leaf "Acrylic Paint Sub-component" Material paint;
      Tech_tree.leaf "Cardboard Packaging Box" Material box;
    ]

let safe_miku_tree =
  match make_miku () with
  | Ok product -> product
  | Error err -> failwith ("Miku generation failed internal validation: " ^ err)

(* --- TESTS --- *)

(* TODO: implement a proper tree printing function *)
let dummy_tree_printer ppf _tree = Format.pp_print_string ppf "<abstract_tree>"
let tree_testable = Alcotest.testable dummy_tree_printer ( = )

let test_absolute_equality () =
  Alcotest.(check tree_testable)
    "Unsafe and safe initialization are structurally identical" safe_miku_tree unsafe_miku_tree

let () =
  let open Alcotest in
  run "CPTPP accumulation tree equality"
    [ ("Initialization", [ test_case "Unsafe and safe initialization" `Quick test_absolute_equality ]) ]
