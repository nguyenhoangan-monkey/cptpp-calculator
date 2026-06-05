open Core_kernel

type target = {
  inputs  : string list;
  output  : string;
}

(* Safely invoke Cargo to compile the Rust frontend static archive *)
let compile_rust_frontend () : (unit, string) result =
  let cmd = "cargo build --release --manifest-path lib/rust-frontend/Cargo.toml" in
  match Unix.system cmd with
  | Ok () -> Ok ()
  | Error _ -> Error "Rust frontend compilation failed."

(* Coordinate the data compilation stages sequentially *)
let compile_data target : unit =
  printf "Step 1: Ingesting data via FFI...\n";
  let raw_stream = Reader.Ffi_import.run target.inputs in

  printf "Step 2: Running semantic validation passes...\n";
  let validated_stream = 
    raw_stream
    |> Validator.Static_check.validate
    |> Validator.Hierarchy_resolve.resolve
  in

  printf "Step 3: Executing mid-end optimizations...\n";
  let optimized_stream = 
    validated_stream
    |> Optimizer.Dead.eliminate
    |> Optimizer.Simplify.run
  in

  printf "Step 4: Compiling low-level compressed layouts...\n";
  let packed_payload = Compressor.Layout.pack optimized_stream in

  printf "Step 5: Emitting serialized binary to %s...\n" target.output;
  Serializer.Bin_writer.write_miku_file target.output packed_payload

(* Main orchestration entry point called by cli.ml *)
let run (inputs : string list) (output : string) : unit =
  match compile_rust_frontend () with
  | Error msg -> 
      prerr_endline ("Build Error: " ^ msg);
      exit 1
  | Ok () ->
      try 
        compile_data { inputs; output };
        printf "Build successful! Created binary asset.\n"
      with exn ->
        (* Graceful fallback to your diagnostic printer if execution explodes *)
        Validator.Diagnostic.print exn;
        exit 1