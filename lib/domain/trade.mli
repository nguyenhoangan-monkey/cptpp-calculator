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
  (** Materials might not be raw resources, they simply just mean the product is not shipped. **)

  type t = { hs_code : Hs_code.t; origin : Country.t; cost : Money.t }

  val of_strings_exn : string -> Country.t -> string -> t
  val print : Format.formatter -> t -> unit
end

module Good : sig
  (** Goods might not be finished products or components, they can be shipped raw products with no backlog. **)

  type t = { hs_code : Hs_code.t; free_on_board_value : Money.t; shipped_from : Country.t; shipped_to : Country.t }

  val of_strings_exn : string -> string -> Country.t -> Country.t -> t
  val print : Format.formatter -> t -> unit
end

module Tech_tree : sig
  (** Represent an accumulation chain or, as a single node, additional metadata. It should be expected that these nodes
      and leafs can be both goods and materials, and the value can be expanded as metadata. **)
  type input = Material of Material.t | Good of Good.t

  type 'meta tech_spec = { metadata : 'meta; input : input }

  (* abstract data type *)
  type 'meta t

  (** Type witnesses used to infer underlying domain classifications at compile time. *)
  type _ kind = Material : Material.t kind | Good : Good.t kind

  (* operations *)
  val leaf : 'meta -> 'a kind -> 'a -> 'meta t
  val node : 'meta -> 'a kind -> 'a -> 'meta t list -> 'meta t
  val metadata : 'meta t -> 'meta
  val input : 'meta t -> input

  (* actual, real functions *)
  val add_child : 'meta t -> 'meta t -> 'meta t
end
