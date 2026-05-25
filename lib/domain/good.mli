(** Goods might not be finished products or components, they can be shipped raw products with no backlog. **)

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
