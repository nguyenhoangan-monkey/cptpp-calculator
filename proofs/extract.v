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
From Stdlib Require Import Qcanon.
From Stdlib Require Import QArith.
From Stdlib Require Import ZArith.


(* Successor functions *)
(* Avoid polluting, don't use: From Stdlib Require ExtrOcamlZInt. *)
(*  ExtrOcamlZInt has a disclaimer: *)
(** Disclaimer: trying to obtain efficient certified programs
    by extracting [Z] into [int] is definitively *not* a good idea.
    See the Disclaimer in [ExtrOcamlNatInt]. *)

(* Z *)
(* Use a standard library, disable deconstruction *)
Extract Inductive Z => "Z.t" 
  [ "Z.zero" "failwith ""Forbidden Zpos constructor!""" "failwith ""Forbidden Zneg constructor!""" ] 
  "(fun f_zero f_pos f_neg z -> failwith ""Forbidden Z destructuring!"")".
Extract Constant Z.add => "Z.add".
Extract Constant Z.opp => "Z.neg".
Extract Constant Z.mul => "Z.mul".
Extract Constant Z.abs => "Z.abs".


(* Q *)
(* An important notice here is that we should not use structural equality *)
(* when writing rocq "=", instead we should use setoid equality "==" *)
(* since we have Q.make to do automatic simplification. *)
(* 1/2 != 2/4. however, 1/2 == 2/4 *)

(* Thus we force it to keep its internal representation as Z.t/positive and... *)
Extract Inductive Q => "{ qnum : Z.t; qden : int }" [ "" ].


(* Qc *)
(* Qc allow for reduced fractions so we can say 1/2 != 2/4. *)

(* Another important notice is that there is no check for divide by zero. *)
(* Therefore, all proofs with division need to make provision like: *)
(* Definition safe_div (num den : Qc) (not_zero : den <> 0) : Qc := num / den. *)

(* Else we will can prove that 1/0 = 0 and that is just wrong: *)
(* Definition simplify_fraction (x : Q) : Q := x / x. *)

(* Theorem math_is_broken : simplify_fraction 0 == 0.
Proof.
  unfold simplify_fraction.
  (* Coq looks at '0 / 0'. *)
  (* Because the denominator is 0, Coq decides the answer is 0. *)
  reflexivity.
Qed. *)

(* Use a standard library, disable deconstruction *)
Extract Inductive Qc => "Q.t" 
  [ "failwith ""Forbidden Qc constructor!""" ] 
  "(fun f_match q -> failwith ""Forbidden Qc destructuring!"")".
Extract Constant Qcplus  => "Q.add".
Extract Constant Qcmult  => "Q.mul".
Extract Constant Qcminus => "Q.sub".
Extract Constant Qcinv   => "Q.inv".
Extract Constant Qcdiv   => "Q.div".


(* And... that's it. As long as rocq proof works, CPTPP rules work.*)
(* Don't break too much sweat about it. Thank god to .mli *)

(* rocq makefile -f _CoqProject -o Makefile *)
(* make *)

(********** WARNING: EXTRACTION LOGIC **********)


(* Extracting definitions and proofs *)
Set Extraction Output Directory "../lib/engine".

Extraction "cptpp.ml"
  rvc_build_down
  rvc_build_up
  rvc_net_cost.