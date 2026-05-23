module Money = struct
  type t = Q.t

  (* Input *)
  let of_q q = if Q.geq q Q.zero then Ok q else Error "Monetary values cannot be negative"
  let of_string str = try of_q (Q.of_string str) with _ -> Error (Printf.sprintf "Invalid monetary format: '%s'" str)
  let of_string_exn str = match of_string str with Ok v -> v | Error msg -> failwith msg

  (* Non-destructive operations *)
  let ( + ) = Q.add

  let ( - ) a b =
    let res = Q.sub a b in
    of_q res

  (* Destructive operations *)
  let to_string t =
    let f = Q.to_float t in
    Printf.sprintf "%.2f" f
end

module Material = struct
  type t = { hs_code : Hs_code.t; origin : Country.t; cost : Money.t }

  (* unsafe creation *)
  let of_strings_exn hs_code_str origin cost_str =
    { hs_code = Hs_code.of_string_exn hs_code_str; origin; cost = Money.of_string_exn cost_str }

  (* pretty printer *)
  let print output_stream t =
    Format.fprintf output_stream "Material { hs_code = %s; origin = %s; cost = %s }" (Hs_code.to_string t.hs_code)
      (Country.to_iso_string t.origin) (Money.to_string t.cost)
end

module Good = struct
  type t = {
    hs_code : Hs_code.t;
    free_on_board_value : Money.t;  (** free-on-board value, USD, non-negative *)
    shipped_from : Country.t;
    shipped_to : Country.t;
  }

  (* unsafe creation *)
  let of_strings_exn hs_code_str fob_str shipped_from shipped_to =
    {
      hs_code = Hs_code.of_string_exn hs_code_str;
      free_on_board_value = Money.of_string_exn fob_str;
      shipped_from;
      shipped_to;
    }

  (* pretty printer *)
  let print output_stream t =
    Format.fprintf output_stream
      "@[<v>Product {@,  hs_code = %s;@,  free_on_board_value = %s;@,  shipped_from = %s;@,  shipped_to = %s;@,}@]"
      (Hs_code.to_string t.hs_code) (Money.to_string t.free_on_board_value) (Country.to_iso_string t.shipped_from)
      (Country.to_iso_string t.shipped_to)
end

module Tech_tree = struct
  (* input is the union of Material and Good *)
  type input = Material of Material.t | Good of Good.t

  (* tech_spec is the full description of a product 
     that is placed in the accumulation hierarchy
     metadata can be... anything really. we don't care.
     HOWEVER, the metadata and its children metadata must be of the exact type. *)
  type 'meta tech_spec = { metadata : 'meta; input : input }
  type 'meta t = Leaf of 'meta tech_spec | Node of 'meta tech_spec * 'meta t list Lazy.t

  (** Ok, this is quite complicated. Let me explain. If we use a classical definition of nodes in a tree like: **)
  (* let leaf spec = Leaf spec *)
  (* let node spec children = Node (spec, Lazy.from_val children) *)

  (** The problem is that these will have a lot of boilerplates like: **)
  (* Tech_tree.leaf { metadata = "PVC Plastic Pellets"; input = Material pvc_pellet }; *)

  (* We want to simplify this. therefore, I use a GADT type (basically a phantom type) and *)
  (* then use a lambda function to only allow Good and Material type. Since this is a phantom type, *)
  (* it is imperiative to show which kind of input do we allow it to be flexible. In this case, it is *)
  (* kind and item (thus that's why we MUST have the type a to show phantom type). From here, we match *)
  (* what type does this object belong to, then classify it as such. *)

  (** Anyways the cool thing now is that the declaration of the same thing is now just: **)
  (* Tech_tree.leaf "PVC Plastic Pellets" Material pvc_pellet; *)

  type _ kind = Material : Material.t kind | Good : Good.t kind

  let leaf : type a. 'meta -> a kind -> a -> 'meta t =
   fun metadata kind item ->
    match kind with
    | Material -> Leaf { metadata; input = Material item }
    | Good -> Leaf { metadata; input = Good item }

  let node : type a. 'meta -> a kind -> a -> 'meta t list -> 'meta t =
   fun metadata kind item children ->
    match kind with
    | Material -> Node ({ metadata; input = Material item }, Lazy.from_val children)
    | Good -> Node ({ metadata; input = Good item }, Lazy.from_val children)

  (* IMPORTANT: tech spec is not exposed *)
  let tech_spec tree = match tree with Leaf spec -> spec | Node (spec, _) -> spec
  let metadata t = (tech_spec t).metadata
  let input t = (tech_spec t).input

  (* add element, it is implicit that tech_spec is the type *)
  let add_child parent child =
    match parent with
    | Leaf spec -> Node (spec, Lazy.from_val [ child ])
    | Node (spec, (lazy existing_children)) -> Node (spec, Lazy.from_val (child :: existing_children))
end
