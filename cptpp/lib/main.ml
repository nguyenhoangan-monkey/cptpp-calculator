(* SPDX-License-Identifier: GPL-3.0-only *)

(* Copyright (C) 2026 Nguyễn Hoàng An *)
(* Original code from Min-Caml.
   Copyright (c) 2005- Eijiro Sumii, Moe Masuko, and Kenichi Asai
   Available under the BSD 3-Clause License.
*)
(* dune exec lib/main.exe *)

open Cmdliner

let compile _outchan l = (* Compile the buffer and output it to the channel *)
  (* Id.counter := 0;
  Typing.extenv := M.empty; *)
  l
  |> Lexer.f
  |> Parser.f
  (* |> Typing.f
  |> KNormal.f
  |> Alpha.f
  |> Closure.f
  |> Virtual.f
  |> Simm.f
  |> RegAlloc.f
  |> Emit.f outchan *)

let file f =
  let* inchan = In_channel.with_open_text (f ^ ".csv") in
  let* outchan = Out_channel.with_open_text (f ^ ".miku") in
  inchan
  |> lexbuf outchan
  |> ignore

let cmd = (* List of command line arguments *)
  let open Term.Syntax in
  let term =
    (* let+ emit_csv = Arg.(info ["emit-csv"] |> flag |> value) *)
    (* and+ output   = Arg.(info ["o"] |> opt (some string) None |> required) *)
    let+ files    = Arg.(info [] |> pos_all string [] |> non_empty)
    in
    List.iter file files
  in
  Cmd.v (Cmd.info "cptpp") term

let () = (* Compiler execution begins here *)
  exit (Cmd.eval cmd)
