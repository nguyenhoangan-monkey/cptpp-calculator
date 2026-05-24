(* Import all modules *)
From cptpp.chapter3 Require Import article5.

Require Import Extraction.
Extraction Language OCaml.


(********** WARNING: EXTRACTION LOGIC **********)
(* THE EXTRACTION IS THE MAKE AND BREAK OF FORMAL VERIFICATION *)

(* For CPTPP calculations, we don't need absolute correctness like working from *)
(* the successor function and carry and such in positive integers. *)
(* The calculations should also be reasonably fast for CPTPP to simulate thousands *)
(* or millions of different products. *)

(* Since OCaml has spent a long time making Zarith a good and functional library, *)
(* it is best to take it from there and build it up. *)
(* Thus I shall directly map Z and Q operations to fundamental *)
(* operations provided in Rocq, then build up from the theorems provided. *)

(* If the numbers are wrong, well... might as well start using SAP GTS. *)

(* Libraries *)
From Stdlib Require Import ZArith.
From Stdlib Require Import QArith.


(* Successor functions *)
From Stdlib Require ExtrOcamlZInt.


(* Z *)
(* Use a standard library, disable type-violating functions *)
(* Also I explicitly write some functions here to ensure type consistency. *)
Extract Inductive Z => "Z.t" [ "Z.zero" "Z.succ" "Z.pred" ].
Extract Constant Z.add => "Z.add".
Extract Constant Z.opp => "Z.neg".
Extract Constant Z.mul => "Z.mul".
Extract Constant Z.pos_sub => "fun x y -> Z.sub (Z.of_int x) (Z.of_int y)".
Extract Constant Z.double      => "fun x -> Z.(shift_left x 1)".
Extract Constant Z.succ_double => "fun x -> Z.(add (shift_left x 1) one)".
Extract Constant Z.pred_double => "fun x -> Z.(sub (shift_left x 1) one)".


(* Q *)
(* An important notice here is that we should not use structural equality *)
(* when writing rocq "=", instead we should use setoid equality "==" *)
(* since we have Q.make to do automatic simplification. *)
(* 1/2 != 2/4. however, 1/2 == 2/4 *)

(* Another important notice is that there is no check for divide by zero. *)
(* Therefore, all proofs with division need to make provision like: *)
(* Definition safe_div (num den : Q) (not_zero : den <> 0) : Q := num / den. *)

(* Else we will can prove that 1/0 = 0 and that is just wrong: *)
(* Definition simplify_fraction (x : Q) : Q := x / x. *)

(* Theorem math_is_broken : simplify_fraction 0 == 0.
Proof.
  unfold simplify_fraction.
  (* Coq looks at '0 / 0'. *)
  (* Because the denominator is 0, Coq decides the answer is 0. *)
  reflexivity.
Qed. *)

Extract Inductive Q => "Q.t" [ "Q.make" ].
Extract Constant Qplus  => "Q.add".
Extract Constant Qmult  => "Q.mul".
Extract Constant Qminus => "Q.sub".
Extract Constant Qinv   => "Q.inv".
Extract Constant Qdiv   => "Q.div".

Extract Constant hundred => "Q.of_int 100".


(* And... that's it. As long as rocq proof works, CPTPP rules work.*)
(* Don't break too much sweat about it. Thank god to .mli *)

(* rocq makefile -f _CoqProject -o Makefile *)
(* make *)

(********** WARNING: EXTRACTION LOGIC **********)


(* Extracting definitions and proofs *)
Set Extraction Output Directory "../lib/engine".

Extraction "cptpp.ml"
  rvc_focused_value
  rvc_build_down
  rvc_build_up
  rvc_net_cost.