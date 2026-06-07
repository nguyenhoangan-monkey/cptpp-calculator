open Shexp_process

let orchestrate () =
  Stdlib.print_endline "[Orchestrator] Step 1: Compiling Protobuf files...";
  eval (run "protoc" ["--rust_out=./rust-middleend/writer"; "proto/ir.proto"]);

  Stdlib.print_endline "[Orchestrator] Step 2: Building Rust binary...";
  eval (run "cargo" ["build"; "--manifest-path"; "./rust-middleend/Cargo.toml"; "--release"]);

  Stdlib.print_endline "[Orchestrator] Step 3: Executing Rust frontend...";
  (* We use run_output inside eval so it extracts and returns the stdout string *)
  let rust_bytes = 
    eval (run_output "./rust-middleend/target/release/rust_generator" []) 
  in

  Stdlib.print_endline "[Orchestrator] Step 4: Handing off data to OCaml backend reader...";
  Reader.Buffer_read.process_bytes rust_bytes

let () = orchestrate ()