(* hs_code.ml *)

(* I want to use numbers for XX.XX.XX and make illegal states unrepresentable *)
(* Had I use string for chapters, headings and subheadings, typematching would be a pain *)
(* Since the extension is custom per country, it is best left as an string of any length *)
(* Note: single digit printed and string are explicitly disallowed in HS code *)
module Chapter : sig
  type t = private int
  val make : int -> (t, string) result
  val to_int : t -> int
end = struct
  type t = int
  let make n = 
    if n >= 1 && n <= 99 then Ok n
    else Error "Chapter must be between 01 and 99"
  let to_int n = n
end

module Heading : sig
  type t = private int
  val make : int -> (t, string) result
  val to_int : t -> int
end = struct
  type t = int
  let make n = 
    if n >= 0 && n <= 99 then Ok n 
    else Error "Heading must be between 00 and 99"
  let to_int n = n
end

module Subheading : sig
  type t = private int
  val make : int -> (t, string) result
  val to_int : t -> int
end = struct
  type t = int
  let make n = 
    if n >= 0 && n <= 99 then Ok n
    else Error "Subheading must be between 00 and 99"
  let to_int n = n
end

type t = {
  chapter : Chapter.t;
  heading : Heading.t;
  subheading : Subheading.t;
  extension : string option;
}

(* of_string makes an implicit assumption that the hs are structured as *)
(* XX.XX.XX or XX.XX.XX.<custom>. the caller should clean their own string. *)
(* Note: single digit printed and string are explicitly disallowed in HS code *)
let of_string s =
  let open Result.Syntax in

  let cleaned = 
    let t = String.trim s in
    if String.ends_with ~suffix:"." t then
      String.sub t 0 (String.length t - 1)
    else t
  in
  
  match String.split_on_char '.' cleaned with
  | c_str :: h_str :: s_str :: ext_parts ->
      let ext = 
        match ext_parts with
        | [] -> None
        | parts -> Some (String.concat "." parts)
      in

      (* Helper to ensure character is a digit '0'..'9' *)
      let is_digit c = '0' <= c && c <= '9' in

      let parse_component str err =
        if String.length str = 2 && is_digit str.[0] && is_digit str.[1] then
          int_of_string_opt str |> Result.of_option ~error:err
        else
          Error err
      in
      
      let* c_raw = parse_component c_str "Invalid chapter" in
      let* h_raw = parse_component h_str "Invalid heading" in
      let* s_raw = parse_component s_str "Invalid subheading" in
      
      let+ chapter    = Chapter.make c_raw
      and+ heading   = Heading.make h_raw
      and+ subheading = Subheading.make s_raw in
      { chapter; heading; subheading; extension = ext }
      
  | _ -> 
      Error "String does not conform to XX.XX.XX structure."

let of_string_exn s = match of_string s with Ok t -> t | Error msg -> failwith msg

let to_string { chapter; heading; subheading; extension } =
  let c = Chapter.to_int chapter in
  let h = Heading.to_int heading in
  let s = Subheading.to_int subheading in
  match extension with
  | None -> Printf.sprintf "%02d.%02d.%02d" c h s
  | Some e -> Printf.sprintf "%02d.%02d.%02d.%s" c h s e