open Core

type t

val of_string : string -> (t, string) Result.t
val of_string_exn : string -> t
val to_string : t -> string