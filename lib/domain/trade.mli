module Material : sig
  type t = { hs_code : Hs_code.t; origin : Country.t; cost : Q.t  (** Unit cost, USD, non-negative *) }

  val of_strings_exn : string -> Country.t -> string -> t
  val print : Format.formatter -> t -> unit
end

module Good : sig
  type t = {
    hs_code : Hs_code.t;
    export_value : Q.t;  (** free-on-board value, USD, non-negative *)
    origin_country : Country.t;
    destination_country : Country.t;
    bill_of_materials : Material.t list;
  }

  val of_strings_exn : string -> string -> Country.t -> Country.t -> Material.t list -> t
  val print : Format.formatter -> t -> unit
end
