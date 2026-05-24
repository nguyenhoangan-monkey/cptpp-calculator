(* lib/domain/country.mli *)

type t

val to_string : t -> string
val to_iso_string : t -> string
val of_string : string -> (t, string) result
val of_iso_string : string -> (t, string) result
val of_string_exn : string -> t
val of_iso_string_exn : string -> t
