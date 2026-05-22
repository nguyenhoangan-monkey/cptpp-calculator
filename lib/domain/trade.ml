module Material = struct
  type t = { hs_code : Hs_code.t; origin : Country.t; cost : Q.t  (** Unit cost, USD, non-negative *) }

  (* unsafe creation *)
  let of_strings_exn hs_code_str origin cost_str =
    { hs_code = Hs_code.of_string_exn hs_code_str; origin; cost = Q.of_string cost_str }

  (* pretty printer *)
  let print output_stream t =
    Format.fprintf output_stream "Material { hs_code = %s; origin = %s; cost = %s }" (Hs_code.to_string t.hs_code)
      (Country.to_iso_string t.origin) (Q.to_string t.cost)
end

module Good = struct
  type t = {
    hs_code : Hs_code.t;
    export_value : Q.t;  (** free-on-board value, USD, non-negative *)
    origin_country : Country.t;
    destination_country : Country.t;
    bill_of_materials : Material.t list;
  }

  (* unsafe creation *)
  let of_strings_exn hs_code_str export_value_str origin_country destination_country bill_of_materials =
    {
      hs_code = Hs_code.of_string_exn hs_code_str;
      export_value = Q.of_string export_value_str;
      origin_country;
      destination_country;
      bill_of_materials;
    }

  (* pretty printer *)
  let print output_stream t =
    Format.fprintf output_stream
      "@[<v>Product {@,\
      \  hs_code = %s;@,\
      \  export_value = %s;@,\
      \  origin_country = %s;@,\
      \  destination_country = %s;@,\
      \  bill_of_materials = [@,\
      \    @[<v>%a@]@,\
      \  ];@,\
       }@]"
      (* Back to %s for the string representation *)
      (Hs_code.to_string t.hs_code)
      (Q.to_string t.export_value)
      (Country.to_iso_string t.origin_country)
      (Country.to_iso_string t.destination_country)
      (Format.pp_print_list ~pp_sep:Format.pp_force_newline Material.print)
      t.bill_of_materials
end
