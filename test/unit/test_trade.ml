open Domain

(* Unsafe definition *)
let hatsune_miku_unsafe =
  let pvc_pellet = Material.of_strings_exn "3904.10" Country.China "5.00" in
  let paint = Material.of_strings_exn "3208.20" Country.Japan "2.50" in
  let box = Material.of_strings_exn "4819.10" Country.Vietnam "1.50" in

  Good.of_strings_exn "9503.00.00" "20.00" Country.Vietnam Country.Mexico [ pvc_pellet; paint; box ]

(** Safe definition **)
let make_miku () =
  let open Result.Syntax in
  (* Unsafe handling *)
  let validated_product_result =
    let* hs_figurine = Hs_code.of_string "9503.00.00" in
    let* hs_pvc = Hs_code.of_string "3904.10" in
    let* hs_paint = Hs_code.of_string "3208.20" in
    let* hs_box = Hs_code.of_string "4819.10" in

    let* cost_pvc = Money.of_string "5.00" in
    let* cost_paint = Money.of_string "2.50" in
    let* cost_box = Money.of_string "1.50" in
    let* export_val = Money.of_string "20.00" in

    let pvc_pellet = Material.{ hs_code = hs_pvc; origin = Country.China; cost = cost_pvc } in
    let paint = Material.{ hs_code = hs_paint; origin = Country.Japan; cost = cost_paint } in
    let box = Material.{ hs_code = hs_box; origin = Country.Vietnam; cost = cost_box } in

    Ok
      Good.
        {
          hs_code = hs_figurine;
          free_on_board_value = export_val;
          shipped_from = Country.Vietnam;
          shipped_to = Country.Mexico;
          bill_of_materials = [ pvc_pellet; paint; box ];
        }
  in

  (* Unwrapping the product *)
  match validated_product_result with
  | Ok product -> product
  | Error err -> failwith ("Miku generation failed internal validation: " ^ err)

let hatsune_miku_safe = make_miku ()

(* --- TESTS --- *)
let good_testable = Alcotest.testable Good.print ( = )

let test_absolute_equality () =
  Alcotest.(check good_testable)
    "Unsafe and safe initialization are structurally identical" hatsune_miku_safe hatsune_miku_unsafe

let () =
  let open Alcotest in
  run "CPTPP trade object tests"
    [ ("Initialization", [ test_case "Unsafe and safe initialization" `Quick test_absolute_equality ]) ]
