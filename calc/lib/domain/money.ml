(**
 * SPDX-License-Identifier: GPL-3.0-only
 * Copyright (C) 2026 Nguyễn Hoàng An
 *)

type t = Q.t

(* Input *)
let of_q q = if Q.geq q Q.zero then Ok q else Error "Monetary values cannot be negative"
let of_string str = try of_q (Q.of_string str) with _ -> Error (Printf.sprintf "Invalid monetary format: '%s'" str)
let of_string_exn str = match of_string str with Ok v -> v | Error msg -> failwith msg

(* Non-destructive operations *)
let ( + ) = Q.add

let ( - ) a b =
  let res = Q.sub a b in
  of_q res

(* Destructive operations *)
let to_string t =
  let f = Q.to_float t in
  Printf.sprintf "%.2f" f
