(* Material that is not meant to leave borders as-is *)

type t = { hs_code : Hs_code.t; origin : Country.t; cost : Money.t }

(* unsafe creation *)
let of_strings_exn hs_code_str origin cost_str =
  { hs_code = Hs_code.of_string_exn hs_code_str; origin; cost = Money.of_string_exn cost_str }

(* pretty printer *)
let print output_stream t =
  Format.fprintf output_stream "Material { hs_code = %s; origin = %s; cost = %s }" (Hs_code.to_string t.hs_code)
    (Country.to_iso_string t.origin) (Money.to_string t.cost)
