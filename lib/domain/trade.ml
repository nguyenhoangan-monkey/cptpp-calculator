module Money = struct
  type t = Q.t

  (* Input *)
  let of_q q = if Q.geq q Q.zero then Ok q else Error "Monetary values cannot be negative"
  let of_string str = try of_q (Q.of_string str) with _ -> Error (Printf.sprintf "Invalid monetary format: '%s'" str)
  let of_string_exn str = match of_string str with Ok v -> v | Error msg -> failwith msg

  (* Non-destructive operations *)
  let ( + ) = Q.add

  let ( - ) a b =
    let res = Q.sub a b in
    of_q res

  (* Destructive operations *)
  let to_string t =
    let f = Q.to_float t in
    Printf.sprintf "%.2f" f
end

module Material = struct
  type t = { hs_code : Hs_code.t; origin : Country.t; cost : Money.t }

  (* unsafe creation *)
  let of_strings_exn hs_code_str origin cost_str =
    { hs_code = Hs_code.of_string_exn hs_code_str; origin; cost = Money.of_string_exn cost_str }

  (* pretty printer *)
  let print output_stream t =
    Format.fprintf output_stream "Material { hs_code = %s; origin = %s; cost = %s }" (Hs_code.to_string t.hs_code)
      (Country.to_iso_string t.origin) (Money.to_string t.cost)
end

module Good = struct
  type t = {
    hs_code : Hs_code.t;
    free_on_board_value : Money.t;  (** free-on-board value, USD, non-negative *)
    shipped_from : Country.t;
    shipped_to : Country.t;
    bill_of_materials : Material.t list;
  }

  (* unsafe creation *)
  let of_strings_exn hs_code_str fob_str shipped_from shipped_to bill_of_materials =
    {
      hs_code = Hs_code.of_string_exn hs_code_str;
      free_on_board_value = Money.of_string_exn fob_str;
      shipped_from;
      shipped_to;
      bill_of_materials;
    }

  (* pretty printer *)
  let print output_stream t =
    Format.fprintf output_stream
      "@[<v>Product {@,\
      \  hs_code = %s;@,\
      \  free_on_board_value = %s;@,\
      \  shipped_from = %s;@,\
      \  shipped_to = %s;@,\
      \  bill_of_materials = [@,\
      \    @[<v>%a@]@,\
      \  ];@,\
       }@]"
      (* Back to %s for the string representation *)
      (Hs_code.to_string t.hs_code)
      (Money.to_string t.free_on_board_value) (Country.to_iso_string t.shipped_from)
      (Country.to_iso_string t.shipped_to)
      (Format.pp_print_list ~pp_sep:Format.pp_force_newline Material.print)
      t.bill_of_materials
end
