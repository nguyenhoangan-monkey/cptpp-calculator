open Domain

(* Unsafe definition *)
let pvc_pellet = Material.of_strings_exn "3904.10" "China" "5.00"
let paint = Material.of_strings_exn "3208.20" "Japan" "2.50"
let box = Material.of_strings_exn "4819.10" "Vietnam" "1.50"
let hatsune_miku = Good.of_strings_exn "9503.00.00" "20.00" "Vietnam" "Mexico"

let unsafe_miku_tree =
  Tech_tree.good "Hatsune Miku Figurine (Final Good)" hatsune_miku
    [
      Tech_tree.material "PVC Plastic Pellets" pvc_pellet [];
      Tech_tree.material "Acrylic Paint Sub-component" paint [];
      Tech_tree.material "Cardboard Packaging Box" box [];
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
  and+ export_val = Money.of_string "20.00"
  and+ china = Country.of_string "China"
  and+ japan = Country.of_string "Japan"
  and+ mexico = Country.of_string "Mexico"
  and+ vietnam = Country.of_string "Vietnam" in

  let pvc_pellet = Material.{ hs_code = hs_pvc; origin = china; cost = cost_pvc } in
  let paint = Material.{ hs_code = hs_paint; origin = japan; cost = cost_paint } in
  let box = Material.{ hs_code = hs_box; origin = vietnam; cost = cost_box } in
  let hatsune_miku =
    Good.{ hs_code = hs_figurine; free_on_board_value = export_val; shipped_from = vietnam; shipped_to = mexico }
  in

  Tech_tree.good "Hatsune Miku Figurine (Final Good)" hatsune_miku
    [
      Tech_tree.material "PVC Plastic Pellets" pvc_pellet [];
      Tech_tree.material "Acrylic Paint Sub-component" paint [];
      Tech_tree.material "Cardboard Packaging Box" box [];
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
