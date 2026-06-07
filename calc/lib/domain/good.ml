(** * SPDX-License-Identifier: GPL-3.0-only * Copyright (C) 2026 Nguyễn Hoàng An *)

type t = {
  hs_code : Hs_code.t;
  free_on_board_value : Money.t;  (** free-on-board value, USD, non-negative *)
  shipped_from : Data.Country.t;
  shipped_to : Data.Country.t;
}

module Raw = struct
  type ('a, 'e) maybe_raw = Raw of string | Ready of 'a | Maybe of ('a, 'e) result Lazy.t

  type t = {
    hs_code : (Hs_code.t, string) maybe_raw;
    free_on_board_value : (Money.t, string) maybe_raw;
    shipped_from : (Data.Country.t, string) maybe_raw;
    shipped_to : (Data.Country.t, string) maybe_raw;
  }
end

(* internal helper to resolve individual fields *)
let parse_country s = match Data.Country.of_iso_string s with Ok c -> Ok c | Error _ -> Data.Country.of_string s
let resolve_field parser = function Raw.Raw s -> parser s | Raw.Ready v -> Ok v | Raw.Maybe r -> Lazy.force r

(* exposed constructor *)
let make (raw : Raw.t) =
  let open Result.Syntax in
  let* hs_code = raw.hs_code |> resolve_field Hs_code.of_string in
  let* free_on_board_value = raw.free_on_board_value |> resolve_field Money.of_string in
  let* shipped_from = raw.shipped_from |> resolve_field parse_country in
  let* shipped_to = raw.shipped_to |> resolve_field parse_country in
  Ok { hs_code; free_on_board_value; shipped_from; shipped_to }

let of_string hs_code_str fobv_str from_str to_str =
  let open Result.Syntax in
  let* hs_code = Hs_code.of_string hs_code_str in
  let* free_on_board_value = Money.of_string fobv_str in
  let* shipped_from = Data.Country.of_string from_str in
  let* shipped_to = Data.Country.of_string to_str in
  Ok { hs_code; free_on_board_value; shipped_from; shipped_to }

(* unsafe creation *)
let of_strings_exn hs_code_str fob_str shipped_from_str shipped_to_str =
  match of_string hs_code_str fob_str shipped_from_str shipped_to_str with
  | Ok trade_data -> trade_data
  | Error msg -> failwith msg

(* pretty printer *)
let print output_stream t =
  Format.fprintf output_stream
    "@[<v>Product {@,  hs_code = %s;@,  free_on_board_value = %s;@,  shipped_from = %s;@,  shipped_to = %s;@,}@]"
    (Hs_code.to_string t.hs_code) (Money.to_string t.free_on_board_value)
    (Data.Country.to_iso_string t.shipped_from)
    (Data.Country.to_iso_string t.shipped_to)
