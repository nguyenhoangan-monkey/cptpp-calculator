type t
(** abstract type for a validated HS Code *)

val of_string : string -> t
val to_string : t -> string
