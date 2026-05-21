(* clone of hs_code.mli *)

(** abstract type for a validated HS Code *)
type t

(** constructs an [Hs_code.t] from a raw string *)
(* right now it is useless *)
let of_string s = s