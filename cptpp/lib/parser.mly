(* SPDX-License-Identifier: GPL-3.0-only *)

(* Copyright (C) 2026 Nguyễn Hoàng An *)
(* Original code from Min-Caml.
   Copyright (c) 2005- Eijiro Sumii, Moe Masuko, and Kenichi Asai
   Available under the BSD 3-Clause License.
*)

// %{
// open Syntax
// %}

%token <string> FIELD
%token COMMA
%token NEWLINE
%token EOF

%start <Syntax.exp> exp

%%

exp:
  | EOF { [] }
  | rows = file_content EOF { rows }
;

file_content:
  | r = row { [r] }
  | r = row NEWLINE rows = file_content_tail { r :: rows }
  | NEWLINE rows = file_content_tail { [""] :: rows } 
;

file_content_tail:
  | /* empty */ { [] }
  | rows = file_content { rows }
;

row:
  | f = FIELD { [f] }
  | f = FIELD COMMA rest = fields { f :: rest }
  | COMMA rest = fields { "" :: rest }
;

fields:
  | /* empty trailing field */ { [""] }
  | f = FIELD { [f] }
  | f = FIELD COMMA rest = fields { f :: rest }
  | COMMA rest = fields { "" :: rest }
;