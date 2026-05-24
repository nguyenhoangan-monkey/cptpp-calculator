(* open Domain
open QCheck

(* 1. Generators for your primitives *)
let country_gen = Gen.oneof_list Country.[ China; Japan; Vietnam; Mexico; Canada; Australia ]

(* Let's assume you have a safe way to generate valid domain types for the test *)
let hs_code_gen = Gen.map (fun s -> Hs_code.of_string_exn s) (Gen.string_size ~gen:Gen.num (Gen.return 6))
let money_gen = Gen.map (fun f -> Money.of_float f) (Gen.float_bound_inclusive 10_000.0)
let name_gen = Gen.string_readable

(* 2. Generators for your domain records *)
let material_gen =
  Gen.map3 
    (fun hs origin cost -> Material.{ hs_code = hs; origin; cost })
    hs_code_gen country_gen money_gen

let good_meta_gen =
  Gen.map4 
    (fun hs fob from to_c -> Good.{ hs_code = hs; free_on_board_value = fob; shipped_from = from; shipped_to = to_c })
    hs_code_gen money_gen country_gen country_gen *)