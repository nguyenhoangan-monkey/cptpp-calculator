open Bin_prot.Std

type magic_header = {
  magic   : string;  (* Strictly "MIKU" *)
  version : int;     (* Incremental binary version schema e.g., 20260605 *)
} [@@deriving bin_io]

let expected_header = { magic = "MIKU"; version = 1 }