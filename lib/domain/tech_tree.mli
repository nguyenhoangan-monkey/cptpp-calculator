(** Represent an accumulation chain or, as a single node, additional metadata. It should be expected that these nodes
    and leafs can be both goods and materials, and the value can be expanded as metadata. **)
type input = Material of Material.t | Good of Good.t

type 'meta tech_spec = { metadata : 'meta; input : input }

(* abstract data type *)
type 'meta t

(** Type witnesses used to infer underlying domain classifications at compile time. *)
type _ kind = Material : Material.t kind | Good : Good.t kind

(* operations *)
val leaf : 'meta -> 'a kind -> 'a -> 'meta t
val node : 'meta -> 'a kind -> 'a -> 'meta t list -> 'meta t
val metadata : 'meta t -> 'meta
val input : 'meta t -> input

(* actual, real functions *)
val add_child : 'meta t -> 'meta t -> 'meta t
