(* lib/domain/country.mli *)

type t = Vietnam | Mexico | China | Japan

val of_string : string -> t option
val to_iso_string : t -> string
