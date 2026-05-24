(** * Chapter 3: Rules of Origin and Origin Procedures
    * Article 3.5: Regional Value Content (RVC) *)

From Stdlib Require Import QArith.
From Stdlib Require Import List.

Open Scope Q_scope.

Section RegionalValueContent.

  Definition hundred : Q := 100 # 1.

  Definition safe_div (num den : Q) (not_zero : den <> 0) : Q :=
    num / den.

  (* Assumptions *)
  Context (value_of_good nc vnm vom : Q).
  Hypothesis (vg_not_zero : value_of_good <> 0).
  Hypothesis (nc_not_zero : nc <> 0).

  (* Definitions *)
  Definition rvc_build_down : Q :=
    (safe_div (value_of_good - vnm) value_of_good vg_not_zero) * hundred.

  Definition rvc_build_up : Q :=
    (safe_div vom value_of_good vg_not_zero) * hundred.

  Definition rvc_net_cost : Q :=
    (safe_div (nc - vnm) nc nc_not_zero) * hundred.
  

  (* Theorems *)
  Theorem rvc_methods_equivalent :
    value_of_good = vnm + vom ->
    rvc_build_down = rvc_build_up.
  Proof.
  Abort.

End RegionalValueContent.
