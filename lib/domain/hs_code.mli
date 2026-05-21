(** abstract type for a validated HS Code *)
type t

val of_string : string -> t
val to_string : t -> string