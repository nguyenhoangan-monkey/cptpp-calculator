(** Master Extraction File *)

(* 1. Import all your verified modules *)
Require Import cptpp.chapter3.article5.

Require Import Extraction.
Extraction Language OCaml.

(* 2. Set up your OCaml environment mappings *)
Require Import ExtrOcamlZBigInt.
Extract Constant Q => "Q.t".
Extract Constant Qmake => "Q.make".
Extract Constant Qminus => "Q.sub".
Extract Constant Qmult => "Q.mul".
Extract Constant Qdiv => "Q.div".

(* 3. Extract EVERYTHING into a single file *)
Extraction "lib/engine/cptpp.ml"
  rvc_focused_value
  rvc_build_down
  rvc_build_up
  rvc_net_cost.
