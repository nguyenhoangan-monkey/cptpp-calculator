type t = {
  hs_code : Hs_code.t;
  free_on_board_value : Money.t;  (** free-on-board value, USD, non-negative *)
  shipped_from : Country.t;
  shipped_to : Country.t;
}

(* unsafe creation *)
let of_strings_exn hs_code_str fob_str shipped_from_str shipped_to_str =
  (* Get country string *)
  let shipped_from =
    try Country.of_iso_string_exn shipped_from_str with Invalid_argument _ -> Country.of_string_exn shipped_from_str
  in

  let shipped_to =
    try Country.of_iso_string_exn shipped_to_str with Invalid_argument _ -> Country.of_string_exn shipped_to_str
  in

  {
    hs_code = Hs_code.of_string_exn hs_code_str;
    free_on_board_value = Money.of_string_exn fob_str;
    shipped_from;
    shipped_to;
  }

(* pretty printer *)
let print output_stream t =
  Format.fprintf output_stream
    "@[<v>Product {@,  hs_code = %s;@,  free_on_board_value = %s;@,  shipped_from = %s;@,  shipped_to = %s;@,}@]"
    (Hs_code.to_string t.hs_code) (Money.to_string t.free_on_board_value) (Country.to_iso_string t.shipped_from)
    (Country.to_iso_string t.shipped_to)
