(**
 * SPDX-License-Identifier: GPL-3.0-only
 * Copyright (C) 2026 Nguyễn Hoàng An
 *)

(* input is the union of Material and Good *)
type input = Material of Material.t | Good of Good.t

(*  each node has a metadata, an input (material/good), and children.
    If there is no children, the list is empty. it is lazily loaded. *)
type 'meta t = { metadata : 'meta; input : input; children : 'meta t list Lazy.t }

(* --- Constructors --- *)
let material metadata item children = { metadata; input = Material item; children = Lazy.from_val children }
let good metadata item children = { metadata; input = Good item; children = Lazy.from_val children }

(* --- Accessors --- *)
let metadata t = t.metadata
let input t = t.input
let children t = Lazy.force t.children (*eager*)

(* --- Modifiers --- *)
let add_child parent child = { parent with children = lazy (child :: Lazy.force parent.children) }
