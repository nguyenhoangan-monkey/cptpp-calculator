(** Goods might not be finished products or components, they can be shipped raw products with no backlog. **)

type t = { hs_code : Hs_code.t; free_on_board_value : Money.t; shipped_from : Country.t; shipped_to : Country.t }

val of_strings_exn : string -> string -> Country.t -> Country.t -> t
val print : Format.formatter -> t -> unit
