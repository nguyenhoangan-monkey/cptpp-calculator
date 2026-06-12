(* SPDX-License-Identifier: GPL-3.0-only *)

(* Copyright (C) 2026 Nguyễn Hoàng An *)
(* Original code from Min-Caml.
   Copyright (c) 2005- Eijiro Sumii, Moe Masuko, and Kenichi Asai
   Available under the BSD 3-Clause License.
*)

open Cmdliner
open Compiler_lib

(* Type alias for the memory-mapped buffer.
   This is an off-heap, 1D array of C-layout characters. *)
type mmap_buffer = (char, Bigarray.int8_unsigned_elt, Bigarray.c_layout) Bigarray.Array1.t

let compile _outchan l = (* Compile the buffer and output it to the channel *)
  (* Id.counter := 0;
  Typing.extenv := M.empty; *)
  l
  |> Lexer.f
  |> Parser.f
  |> Typing.f
  |> KNormal.f
  |> Alpha.f
  |> Closure.f
  |> Virtual.f
  |> Simm.f
  |> RegAlloc.f
  |> Emit.f outchan


let file f =
  let open Result.Syntax in

  let* input_bytes = File.read (f ^ ".csv") in
  let* output_bytes = compile input_bytes in
  File.write (f ^ ".miku") output_bytes


let cmd = (* List of command line arguments *)
  let open Term.Syntax in
  let command_arguments =
    let+ files    = Arg.(info [] |> pos_all string [] |> non_empty)in
    List.iter file files
  in
  Cmd.v (Cmd.info "cptpp") command_arguments

let () = (* Compiler execution begins here *)
  exit (Cmd.eval cmd)
