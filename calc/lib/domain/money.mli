(** Unit cost, USD, non-negative *)

type t

val of_string : string -> (t, string) result
val of_string_exn : string -> t
val of_q : Q.t -> (t, string) result
val ( + ) : t -> t -> t
val ( - ) : t -> t -> (t, string) result
val to_string : t -> string
