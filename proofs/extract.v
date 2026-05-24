(** Master Extraction File *)

(* Import all modules *)
(** Master Extraction File *)

(* Import all modules *)
From Stdlib Require Import ZArith.
From Stdlib Require Import QArith.
From cptpp.chapter3 Require Import article5.

Require Import Extraction.

Extraction Language OCaml.

(* Pos *)

(* Coq_Pos *)
Extract Constant Pos.succ => "Z.succ".
Extract Constant Pos.add => "Z.add".
Extract Constant Pos.add_carry => "(fun x y -> Z.succ (Z.add x y))".
Extract Constant Pos.mul => "Z.mul".

(* Z *)
Extract Constant Z.double => "(fun x -> Z.shift_left x 1)".
Extract Constant Z.succ_double => "(fun x -> Z.succ (Z.shift_left x 1))".
Extract Constant Z.pred_double => "(fun x -> Z.pred (Z.shift_left x 1))".
Extract Constant Z.pos_sub => "Z.sub".
Extract Constant Z.add => "Z.add".
Extract Constant Z.opp => "Z.neg".
Extract Constant Z.mul => "Z.mul".

(* Q *)
Extract Inductive Q => "Q.t" [ "Q.make" ]. 
Extract Constant Qplus  => "Q.add".
Extract Constant Qmult  => "Q.mul".
Extract Constant Qminus => "Q.sub".
Extract Constant Qinv   => "Q.inv".
Extract Constant Qdiv   => "Q.div".

(* Extract *)
Set Extraction Output Directory "../lib/engine".

Extraction "cptpp.ml"
  rvc_focused_value
  rvc_build_down
  rvc_build_up
  rvc_net_cost.