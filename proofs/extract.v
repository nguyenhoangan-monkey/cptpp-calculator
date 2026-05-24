(** Master Extraction File *)

(* Import all modules *)
(** Master Extraction File *)

(* Import all modules *)
From Stdlib Require Import QArith.
From cptpp.chapter3 Require Import article5.

Require Import Extraction.

Extraction Language OCaml.

(* Q *)
(* Extract Inductive Q => "Q.t" [ "Q.make" ]. 

Extract Constant Qplus  => "Q.add".
Extract Constant Qminus => "Q.sub".
Extract Constant Qmult  => "Q.mul".
Extract Constant Qdiv   => "Q.div".
Extract Constant Qinv   => "Q.inv".
Extract Constant Qeq    => "Q.equal". *)

(* Extract *)
Set Extraction Output Directory "../lib/engine".

Extraction "cptpp.ml"
  rvc_focused_value
  rvc_build_down
  rvc_build_up
  rvc_net_cost.