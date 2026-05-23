(** Represent an accumulation chain or, as a single node, additional metadata. It should be expected that these nodes
    and leafs can be both goods and materials, and the value can be expanded as metadata. **)

type input = Material of Material.t | Good of Good.t
type 'meta t

(* --- Constructors --- *)
val good : 'meta -> Good.t -> 'meta t list -> 'meta t
val material : 'meta -> Material.t -> 'meta t list -> 'meta t

(* --- Accessors --- *)
val metadata : 'meta t -> 'meta
val input : 'meta t -> input
val children : 'meta t -> 'meta t list (*eager*)

(* --- Modifiers --- *)
val add_child : 'meta t -> 'meta t -> 'meta t
