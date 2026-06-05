type t = {
  mutable next_id : int;
  forward_map     : (string, int) Hashtbl.t;
  backward_map    : string Dynarray.t; (* Fast layout generation at the end *)
}

let create () = {
  next_id = 0;
  forward_map = Hashtbl.create 1024;
  backward_map = Dynarray.create ();
}

let intern compiler str =
  match Hashtbl.find_opt compiler.forward_map str with
  | Some id -> id
  | None ->
      let id = compiler.next_id in
      compiler.next_id <- id + 1;
      Hashtbl.add compiler.forward_map str id;
      Dynarray.add_last compiler.backward_map str;
      id

let export_pool compiler = 
  Dynarray.to_array compiler.backward_map