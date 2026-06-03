(**
 * SPDX-License-Identifier: GPL-3.0-only
 * Copyright (C) 2026 Nguyễn Hoàng An
 *)

(* Material that is not meant to leave borders as-is *)
(* We might not know its origin country, so that's why it's `Country.t option`. *)

type t = { hs_code : Hs_code.t; origin : Data.Country.t option; cost : Money.t }

module Raw = struct
  type ('value, 'error) maybe_raw = Raw of string | Ready of 'value | Maybe of ('value, 'error) result Lazy.t

  type t = {
    hs_code : (Hs_code.t, string) maybe_raw;
    origin : (Data.Country.t option, string) maybe_raw;
    cost : (Money.t, string) maybe_raw;
  }
end

(* parse country names *)
(* first check whether it is explicitly left blank, "Unknown", or "unknown" -> None *)
(* then check whether the country ISO string -> Some Country.t *)
(* then check whether the country natural name -> Some Country.t *)
(* if none matches -> Error *)
(* there is no trimming and such. it is expected for the user to handle this. *)
let parse_country_opt s =
  match s with
  | "" | "Unknown" | "unknown" -> Ok None
  | raw_string -> (
      match Data.Country.of_iso_string raw_string with
      | Ok c -> Ok (Some c)
      | Error _ -> ( match Data.Country.of_string raw_string with Ok c -> Ok (Some c) | Error e -> Error e))

(* internal helper to resolve individual fields *)
let resolve_field parser = function Raw.Raw s -> parser s | Raw.Ready v -> Ok v | Raw.Maybe r -> Lazy.force r

(* exposed constructor *)
let make (raw : Raw.t) =
  let open Result.Syntax in
  let* hs_code = raw.hs_code |> resolve_field Hs_code.of_string in
  let* origin = raw.origin |> resolve_field parse_country_opt in
  let* cost = raw.cost |> resolve_field Money.of_string in
  Ok { hs_code; origin; cost }

let of_string hs_code_str origin_str cost_str =
  let open Result.Syntax in
  let* hs_code = Hs_code.of_string hs_code_str in
  let* origin = parse_country_opt origin_str in
  let* cost = Money.of_string cost_str in
  Ok { hs_code; origin; cost }

(* unsafe creation *)
let of_strings_exn hs_code_str origin_str cost_str =
  match of_string hs_code_str origin_str cost_str with Ok material -> material | Error msg -> failwith msg

(* pretty printer *)
let print output_stream t =
  let origin_str = match t.origin with None -> "Unknown" | Some c -> Data.Country.to_iso_string c in
  Format.fprintf output_stream "Material { hs_code = %s; origin = %s; cost = %s }" (Hs_code.to_string t.hs_code)
    origin_str (Money.to_string t.cost)
