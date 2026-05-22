module Money : sig
  (** Unit cost, USD, non-negative *)

  type t

  val of_string : string -> (t, string) result
  val of_string_exn : string -> t
  val of_q : Q.t -> (t, string) result
  val ( + ) : t -> t -> t
  val ( - ) : t -> t -> (t, string) result
  val to_string : t -> string
end

module Material : sig
  type t = { hs_code : Hs_code.t; origin : Country.t; cost : Money.t }

  val of_strings_exn : string -> Country.t -> string -> t
  val print : Format.formatter -> t -> unit
end

module Good : sig
  type t = {
    hs_code : Hs_code.t;
    free_on_board_value : Money.t;
    shipped_from : Country.t;
    shipped_to : Country.t;
    bill_of_materials : Material.t list;
  }

  val of_strings_exn : string -> string -> Country.t -> Country.t -> Material.t list -> t
  val print : Format.formatter -> t -> unit
end
