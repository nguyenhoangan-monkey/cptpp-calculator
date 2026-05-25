(* Material that is not meant to leave borders as-is *)
type t = { hs_code : Hs_code.t; origin : Country.t; cost : Money.t }

module Raw = struct
  type ('a, 'e) maybe_raw = Raw of string | Ready of 'a | Maybe of ('a, 'e) result Lazy.t

  type t = {
    hs_code : (Hs_code.t, string) maybe_raw;
    origin : (Country.t, string) maybe_raw;
    cost : (Money.t, string) maybe_raw;
  }
end

(* internal helper to resolve individual fields *)
let parse_country s = match Country.of_iso_string s with Ok c -> Ok c | Error _ -> Country.of_string s
let resolve_field parser = function Raw.Raw s -> parser s | Raw.Ready v -> Ok v | Raw.Maybe r -> Lazy.force r

(* exposed constructor *)
let make (raw : Raw.t) =
  let open Result.Syntax in
  let* hs_code = raw.hs_code |> resolve_field Hs_code.of_string in
  let* origin = raw.origin |> resolve_field parse_country in
  let* cost = raw.cost |> resolve_field Money.of_string in
  Ok { hs_code; origin; cost }

let of_string hs_code_str origin_str cost_str =
  let open Result.Syntax in
  let* hs_code = Hs_code.of_string hs_code_str in
  let* origin = Country.of_string origin_str in
  let* cost = Money.of_string cost_str in
  Ok { hs_code; origin; cost }

(* unsafe creation *)
let of_strings_exn hs_code_str origin_str cost_str =
  let origin = try Country.of_iso_string_exn origin_str with Invalid_argument _ -> Country.of_string_exn origin_str in

  { hs_code = Hs_code.of_string_exn hs_code_str; origin; cost = Money.of_string_exn cost_str }

(* pretty printer *)
let print output_stream t =
  Format.fprintf output_stream "Material { hs_code = %s; origin = %s; cost = %s }" (Hs_code.to_string t.hs_code)
    (Country.to_iso_string t.origin) (Money.to_string t.cost)
