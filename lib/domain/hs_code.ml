type t = { chapter : string; heading : string; subheading : string; extension : string }

let of_string s =
  let cleaned =
    String.trim s |> String.to_seq |> Seq.filter (fun c -> c <> '.') |> String.of_seq
  in
  let len = String.length cleaned in

  let is_numeric str =
    String.to_seq str |> Seq.for_all (function '0' .. '9' -> true | _ -> false)
  in

  if len >= 6 && len <= 10 && is_numeric cleaned then
    Ok
      {
        chapter = String.sub cleaned 0 2;
        heading = String.sub cleaned 2 2;
        subheading = String.sub cleaned 4 2;
        extension = String.sub cleaned 6 (len - 6);
      }
  else Error (Printf.sprintf "Invalid HS Code format: '%s'. Expected 6 to 10 digits." s)

let of_string_exn s = match of_string s with Ok t -> t | Error msg -> failwith msg

let to_string code =
  if code.extension = "" then
    Printf.sprintf "%s%s.%s" code.chapter code.heading code.subheading
  else
    Printf.sprintf "%s%s.%s.%s" code.chapter code.heading code.subheading code.extension
