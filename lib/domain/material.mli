(** Materials might not be raw resources, they simply just mean the product is not shipped. **)

type t

module Raw : sig
  type ('a, 'e) maybe_raw = Raw of string | Ready of 'a | Maybe of ('a, 'e) result Lazy.t

  type t = {
    hs_code : (Hs_code.t, string) maybe_raw;
    origin : (Country.t, string) maybe_raw;
    cost : (Money.t, string) maybe_raw;
  }
end

val make : Raw.t -> (t, string) result
val of_string : string -> string -> string -> (t, string) result
val of_strings_exn : string -> string -> string -> t
val print : Format.formatter -> t -> unit
