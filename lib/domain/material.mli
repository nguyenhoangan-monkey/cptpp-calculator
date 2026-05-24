(** Materials might not be raw resources, they simply just mean the product is not shipped. **)

type t = { hs_code : Hs_code.t; origin : Country.t; cost : Money.t }

val of_strings_exn : string -> string -> string -> t
val print : Format.formatter -> t -> unit
