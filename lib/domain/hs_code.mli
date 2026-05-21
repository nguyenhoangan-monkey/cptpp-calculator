(** abstract type for a validated HS Code *)
type t

(** constructs an [Hs_code.t] from a raw string *)
val of_string : string -> t