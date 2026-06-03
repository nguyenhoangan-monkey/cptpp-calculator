(**
 * SPDX-License-Identifier: GPL-3.0-only
 * Copyright (C) 2026 Nguyễn Hoàng An
 *)

open Domain

(* Unsafe definition *)
(* Country names are truly multilingual: China, Japan, Vietnam, Vietnam -> Mexico*)
let pvc_pellet = Material.of_strings_exn "3904.10" "中国" "5.00"
let paint = Material.of_strings_exn "3208.20" "日本" "2.50"
let box = Material.of_strings_exn "4819.10" "Việt Nam" "1.50"
let hatsune_miku = Good.of_strings_exn "9503.00.00" "20.00" "Vietnam" "México"

let unsafe_miku_tree =
  Tech_tree.good "Hatsune Miku Figurine (初音ミク) - Juguete de plástico 🇯🇵" hatsune_miku
    [
      Tech_tree.material "PVC Plastic Pellets / 聚氯乙烯树脂颗粒" pvc_pellet [];
      Tech_tree.material "Acrylic Paint Sub-component / アクリル塗料" paint [];
      Tech_tree.material "Cardboard Packaging Box / Thùng carton đóng gói" box [];
    ]

(** Safe definition **)
let make_miku () =
  let open Result.Syntax in
  (* make some loading, ask well as shuffle the names a bit *)
  let china = "中国" in
  let japan = Data.Country.of_string_exn "日本" in
  let mock_cost_api () = lazy (Money.of_string "20.00") in
  let mock_hs_api () = lazy (Hs_code.of_string "3208.20") in
  let mock_hs_function () = Hs_code.of_string "4819.10" in

  let+ pvc_pellet = Material.make Material.{ hs_code = Raw "3904.10"; origin = Raw china; cost = Raw "5.00" }
  and+ paint =
    Material.make Material.{ hs_code = Maybe (mock_hs_api ()); origin = Ready (Some japan); cost = Raw "2.50" }
  and+ box =
    Material.make Material.{ hs_code = Maybe (lazy (mock_hs_function ())); origin = Raw "Việt Nam"; cost = Raw "1.50" }
  and+ hatsune_miku =
    Good.make
      Good.
        {
          hs_code = Raw "9503.00.00";
          free_on_board_value = Maybe (mock_cost_api ());
          shipped_from = Raw "VNM";
          shipped_to = Raw "MEX";
        }
  in

  (* but from this point on everything is identical *)
  Tech_tree.good "Hatsune Miku Figurine (初音ミク) - Juguete de plástico 🇯🇵" hatsune_miku
    [
      Tech_tree.material "PVC Plastic Pellets / 聚氯乙烯树脂颗粒" pvc_pellet [];
      Tech_tree.material "Acrylic Paint Sub-component / アクリル塗料" paint [];
      Tech_tree.material "Cardboard Packaging Box / Thùng carton đóng gói" box [];
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
