type t

(* Constructors *)
val of_string : string -> (t, string) result
val of_string_exn : string -> t
val to_string : t -> string
val pp : Format.formatter -> t -> unit

(* Semantic Getters *)
val chapter : t -> int
val heading : t -> int
val subheading : t -> int
val extension : t -> string option

(* comparison *)
type match_level =
  | Identical
  | Chapter_mismatch
  | Heading_mismatch
  | Subheading_mismatch
  | Extension_mismatch

val match_level : t -> t -> match_level
val equal : t -> t -> bool
val compare : t -> t -> int
