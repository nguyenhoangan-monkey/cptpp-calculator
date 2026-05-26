(* Goods are anything that is meant to go to international trade *)
(* It does not imply origin. It must have a value, arrival and departure location *)

type t

module Raw : sig
  type ('a, 'e) maybe_raw = Raw of string | Ready of 'a | Maybe of ('a, 'e) result Lazy.t

  type t = {
    hs_code : (Hs_code.t, string) maybe_raw;
    free_on_board_value : (Money.t, string) maybe_raw;
    shipped_from : (Country.t, string) maybe_raw;
    shipped_to : (Country.t, string) maybe_raw;
  }
end

val make : Raw.t -> (t, string) result
val of_string : string -> string -> string -> string -> (t, string) result
val of_strings_exn : string -> string -> string -> string -> t
val print : Format.formatter -> t -> unit
