open Core

type t = {
  chapter    : string;
  heading    : string;
  subheading : string;
  extension  : string;
}

let of_string s =
  let cleaned = String.strip s |> String.filter ~f:(fun c -> not (Char.equal c '.')) in
  let len = String.length cleaned in
  
  if len >= 6 && len <= 10 && String.for_all cleaned ~f:Char.is_digit then
    Ok {
      chapter    = String.sub cleaned ~pos:0 ~len:2;
      heading    = String.sub cleaned ~pos:2 ~len:2;
      subheading = String.sub cleaned ~pos:4 ~len:2;
      extension  = String.sub cleaned ~pos:6 ~len:(len - 6);
    }
  else
    Error (Printf.sprintf "Invalid HS Code format: '%s'. Expected 6 to 10 digits." s)



let of_string_exn (s : string) : t =
  match of_string s with
  | Ok t -> t
  | Error msg -> failwith msg

  
let to_string (code : t) : string =
  if String.is_empty code.extension then
    Printf.sprintf "%s%s.%s" code.chapter code.heading code.subheading
  else
    Printf.sprintf "%s%s.%s.%s" code.chapter code.heading code.subheading code.extension