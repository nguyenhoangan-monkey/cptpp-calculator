(* clone of hs_code.mli *)

type t = string
(** abstract type for a validated HS Code *)

(* right now both of these are useless *)
let of_string (s : string) : t = s
let to_string (s : t) : string = s
