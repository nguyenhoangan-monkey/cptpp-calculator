
type positive =
| XI of positive
| XO of positive
| XH

type z =
| Z0
| Zpos of positive
| Zneg of positive

module Pos =
 struct
  (** val succ : positive -> positive **)

  let rec succ = function
  | XI p -> XO (succ p)
  | XO p -> XI p
  | XH -> XO XH

  (** val add : positive -> positive -> positive **)

  let rec add x y =
    match x with
    | XI p ->
      (match y with
       | XI q0 -> XO (add_carry p q0)
       | XO q0 -> XI (add p q0)
       | XH -> XO (succ p))
    | XO p ->
      (match y with
       | XI q0 -> XI (add p q0)
       | XO q0 -> XO (add p q0)
       | XH -> XI p)
    | XH -> (match y with
             | XI q0 -> XO (succ q0)
             | XO q0 -> XI q0
             | XH -> XO XH)

  (** val add_carry : positive -> positive -> positive **)

  and add_carry x y =
    match x with
    | XI p ->
      (match y with
       | XI q0 -> XI (add_carry p q0)
       | XO q0 -> XO (add_carry p q0)
       | XH -> XI (succ p))
    | XO p ->
      (match y with
       | XI q0 -> XO (add_carry p q0)
       | XO q0 -> XI (add p q0)
       | XH -> XO (succ p))
    | XH ->
      (match y with
       | XI q0 -> XI (succ q0)
       | XO q0 -> XO (succ q0)
       | XH -> XI XH)

  (** val pred_double : positive -> positive **)

  let rec pred_double = function
  | XI p -> XI (XO p)
  | XO p -> XI (pred_double p)
  | XH -> XH

  (** val mul : positive -> positive -> positive **)

  let rec mul x y =
    match x with
    | XI p -> add y (XO (mul p y))
    | XO p -> XO (mul p y)
    | XH -> y
 end

module Coq_Pos =
 struct
  (** val succ : positive -> positive **)

  let rec succ = Z.succ

  (** val add : positive -> positive -> positive **)

  let rec add = Z.add

  (** val add_carry : positive -> positive -> positive **)

  and add_carry = (fun x y -> Z.succ (Z.add x y))

  (** val mul : positive -> positive -> positive **)

  let rec mul = Z.mul
 end

module Z =
 struct
  (** val double : z -> z **)

  let double = (fun x -> Z.shift_left x 1)

  (** val succ_double : z -> z **)

  let succ_double = (fun x -> Z.succ (Z.shift_left x 1))

  (** val pred_double : z -> z **)

  let pred_double = (fun x -> Z.pred (Z.shift_left x 1))

  (** val pos_sub : positive -> positive -> z **)

  let rec pos_sub = Z.sub

  (** val add : z -> z -> z **)

  let add = Z.add

  (** val opp : z -> z **)

  let opp = Z.neg

  (** val mul : z -> z -> z **)

  let mul = Z.mul
 end

(** val qmult : Q.t -> Q.t -> Q.t **)

let qmult = Q.mul

(** val qminus : Q.t -> Q.t -> Q.t **)

let qminus = Q.sub

(** val qdiv : Q.t -> Q.t -> Q.t **)

let qdiv = Q.div

(** val hundred : Q.t **)

let hundred =
  Q.make ((Zpos (XO (XO (XI (XO (XO (XI XH))))))), XH)

(** val rvc_focused_value : Q.t -> Q.t -> Q.t **)

let rvc_focused_value value_of_good fvnm =
  qmult (qdiv (qminus value_of_good fvnm) value_of_good) hundred

(** val rvc_build_down : Q.t -> Q.t -> Q.t **)

let rvc_build_down value_of_good vnm =
  qmult (qdiv (qminus value_of_good vnm) value_of_good) hundred

(** val rvc_build_up : Q.t -> Q.t -> Q.t **)

let rvc_build_up value_of_good vom =
  qmult (qdiv vom value_of_good) hundred

(** val rvc_net_cost : Q.t -> Q.t -> Q.t **)

let rvc_net_cost nc vnm =
  qmult (qdiv (qminus nc vnm) nc) hundred
