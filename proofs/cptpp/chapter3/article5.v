(** * Chapter 3: Rules of Origin and Origin Procedures
    * Article 3.5: Regional Value Content (RVC) *)

Require Import QArith.
Require Import List.

Open Scope Q_scope.

Section RegionalValueContent.

  Definition hundred : Q := 100 # 1.

  Definition rvc_focused_value (value_of_good fvnm : Q) : Q :=
    ((value_of_good - fvnm) / value_of_good) * hundred.

  Definition rvc_build_down (value_of_good vnm : Q) : Q :=
    ((value_of_good - vnm) / value_of_good) * hundred.

  Definition rvc_build_up (value_of_good vom : Q) : Q :=
    (vom / value_of_good) * hundred.

  Definition rvc_net_cost (nc vnm : Q) : Q :=
    ((nc - vnm) / nc) * hundred.

End RegionalValueContent.
