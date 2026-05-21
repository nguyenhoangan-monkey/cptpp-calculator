(* clone of hs_code.mli *)

(** abstract type for a validated HS Code *)
type t = string

(* right now both of these are useless *)
let of_string (s : string) : t = s

let to_string (s : t) : string = s