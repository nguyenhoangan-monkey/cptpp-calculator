type hscode_entry = {
  code : string;
  description : string;
}

type fabricated_ir = {
  entries : hscode_entry array;
}

let verify_and_dump ir =
  Printf.printf "[Gateway] Received %d raw HS code entries from FFI.\n" (Array.length ir.entries);
  
  let sample_size = min 3 (Array.length ir.entries) in
  for i = 0 to sample_size - 1 do
    let entry = ir.entries.(i) in
    Printf.printf "  Sample %d -> HS Code: %s | Desc: %s\n" 
      i entry.code entry.description
  done;
  
  ir.entries