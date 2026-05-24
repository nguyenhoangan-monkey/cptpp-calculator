
type positive =
| XI of positive
| XO of positive
| XH

type z =
| Z0
| Zpos of positive
| Zneg of positive

module Pos :
 sig
  val succ : positive -> positive

  val add : positive -> positive -> positive

  val add_carry : positive -> positive -> positive

  val pred_double : positive -> positive

  val mul : positive -> positive -> positive
 end

module Coq_Pos :
 sig
  val succ : positive -> positive

  val add : positive -> positive -> positive

  val add_carry : positive -> positive -> positive

  val mul : positive -> positive -> positive
 end

module Z :
 sig
  val double : z -> z

  val succ_double : z -> z

  val pred_double : z -> z

  val pos_sub : positive -> positive -> z

  val add : z -> z -> z

  val opp : z -> z

  val mul : z -> z -> z
 end

val qmult : Q.t -> Q.t -> Q.t

val qminus : Q.t -> Q.t -> Q.t

val qdiv : Q.t -> Q.t -> Q.t

val hundred : Q.t

val rvc_focused_value : Q.t -> Q.t -> Q.t

val rvc_build_down : Q.t -> Q.t -> Q.t

val rvc_build_up : Q.t -> Q.t -> Q.t

val rvc_net_cost : Q.t -> Q.t -> Q.t
