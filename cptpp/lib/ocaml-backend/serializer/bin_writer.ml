open Compressor.Layout

let write_miku_file filename payload : unit =
  let header = Format_header.expected_header in
  
  (* Determine exact allocation sizes required for the binary buffer *)
  let header_size = Format_header.bin_size_magic_header header in
  let payload_size = bin_size_miku_payload payload in
  let total_size = header_size + payload_size in
  
  (* Standard OCaml Bigarray instead of Core.Bigstring *)
  let buf = Bigarray.Array1.create Bigarray.char Bigarray.c_layout total_size in
  
  (* Write sequential blocks natively using generated bin_prot writers *)
  let next_pos = Format_header.bin_write_magic_header buf ~pos:0 header in
  let _ = bin_write_miku_payload buf ~pos:next_pos payload in
  
  (* Stream byte-perfect array straight to disk using standard channel *)
  let oc = open_out_bin filename in
  try
    (* Blit from Bigarray to a standard bytes buffer to write via standard IO *)
    let temp_bytes = Bytes.create total_size in
    for i = 0 to total_size - 1 do
      Bytes.set temp_bytes i (Bigarray.Array1.get buf i)
    done;
    output_bytes oc temp_bytes;
    close_out oc
  with e ->
    close_out_noerr oc;
    raise e