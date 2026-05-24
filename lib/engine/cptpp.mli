
module Pos :
 sig
  val succ : int -> int

  val add : int -> int -> int

  val add_carry : int -> int -> int

  val pred_double : int -> int

  val mul : int -> int -> int
 end

module Coq_Pos :
 sig
  val succ : int -> int

  val add : int -> int -> int

  val add_carry : int -> int -> int

  val mul : int -> int -> int
 end

module Z :
 sig
  val double : Z.t -> Z.t

  val succ_double : Z.t -> Z.t

  val pred_double : Z.t -> Z.t

  val pos_sub : int -> int -> Z.t

  val add : Z.t -> Z.t -> Z.t

  val opp : Z.t -> Z.t

  val mul : Z.t -> Z.t -> Z.t
 end

val qmult : Q.t -> Q.t -> Q.t

val qminus : Q.t -> Q.t -> Q.t

val qdiv : Q.t -> Q.t -> Q.t

val hundred : Q.t

val rvc_focused_value : Q.t -> Q.t -> Q.t

val rvc_build_down : Q.t -> Q.t -> Q.t

val rvc_build_up : Q.t -> Q.t -> Q.t

val rvc_net_cost : Q.t -> Q.t -> Q.t
