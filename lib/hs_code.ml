(* exposing the config *)
module type Bounded_int_config = sig
  val min : int
  val max : int
  val name : string
end

(* Here we parse the 2 char string, check digit, and manually parse digit to int *)
(* Note: single digit printed and string are explicitly disallowed in HS code *)
(* Note: HS code must be XX.XX.XX, any lower and is rejected *)
module Bounded_int (Config : Bounded_int_config) : sig
  type t

  val of_string : string -> (t, string) result
  val to_int : t -> int
end = struct
  type t = int

  let of_string s =
    let open Result.Syntax in
    
    let* () = 
      if String.length s = 2 then Ok () 
      else Error (Printf.sprintf "%s segment must be exactly 2 characters long (received %S)" Config.name s) 
    in
    let* c1 = match s.[0] with 
      | '0' .. '9' as c -> Ok c 
      | _ -> Error (Printf.sprintf "Invalid character %C in %s segment; must be a digit" s.[0] Config.name) 
    in
    let* c2 = match s.[1] with 
      | '0' .. '9' as c -> Ok c 
      | _ -> Error (Printf.sprintf "Invalid character %C in %s segment; must be a digit" s.[1] Config.name) 
    in
    
    let n = (int_of_char c1 - 48) * 10 + (int_of_char c2 - 48) in
    if n >= Config.min && n <= Config.max then 
      Ok n 
    else 
      Error (Printf.sprintf "%s value %02d is out of bounds (must be between %02d and %02d)" 
               Config.name n Config.min Config.max)

  let to_int n = n
end

(* calling the functor *)
module Chapter = Bounded_int (struct
  let min = 1
  let max = 99
  let name = "Chapter"
end)

module Heading = Bounded_int (struct
  let min = 0
  let max = 99
  let name = "Heading"
end)

module Subheading = Bounded_int (struct
  let min = 0
  let max = 99
  let name = "Subheading"
end)


(* For the extensions, since the max length for any commodity number
  according to Data Element 7357 / TDED 7357 (WCO Data Model)
  is 22 alphanumeric characters. Subtracting from the 6 digits, we
  enforce a maximum of 16 characters for the extension.

  Plus, they are strictly enforced to be only uppercase and numbers,
  brackets and delimiters. Thus this is how we store the extension internally.

  Here, we only check the characters in place. There is no state machine.
*)
module Extension : sig
  type t
  val of_string : string -> (t, string) result
  val to_string : t -> string
end = struct
  type t = string
  
  let of_string s =
    if String.length s = 0 then Error "Extension cannot be empty"
    else if String.length s > 16 then Error "Extension exceeded 16 characters"
    else Ok s

  let to_string t = t
end


(* type declaration *)
type t = { chapter : Chapter.t; heading : Heading.t; subheading : Subheading.t; extension : Extension.t option }

type prefix_result = 
  | ValidPrefix of bytes * string
  | Invalid of string

(*
  INDUCTION PROOF: STRICT 6-BYTE GUARANTEE
  
  Loop Invariant: At step n, `prefix_bytes` contains exactly `digits_found` 
  bytes, where 0 <= digits_found <= 6.

  - Base Case (n=0): `digits_found = 0`, `prefix_bytes` is empty. (True)
  - Inductive Step (n -> n+1): 
    * If `digits_found < 6`, a valid digit mutates the buffer and increments 
      `digits_found` to n+1. Invariant holds.
    * If `digits_found = 6`, the guard matches `false`, short-circuiting all 
      future writes to `extension_buf`. `digits_found` stays 6. Invariant holds.

  The function only yields `ValidPrefix` on `End` if `digits_found = 6`.
  By the invariant, `digits_found = 6` implies exactly 6 bytes were written.

  Contrapositive: If bytes written <> 6, then `digits_found <> 6`, forcing 
  the `End` branch to evaluate to `Invalid`. 
  *)
let extract_six_digits uchars =
  (* Allocate exactly 6 bytes, no resizing allowed *)
  let prefix_bytes = Bytes.create 6 in

  (* This is resizable, 16 here is a suggestion *)
  let extension_buf = Buffer.create 16 in
  
  (* We use a state machine "scan" to parse the prefix. The states are:
  - digits_found acts as the index for prefix_bytes: 0, 1, 2, 3, 4, 5
  - total_chars_read is... well... total chars read
  - last_char is the last read char *)
  let rec scan digits_found total_chars_read last_char remaining_uchars =
    if digits_found = 6 then begin
      (* termination case *)      
      List.iter (Uutf.Buffer.add_utf_8 extension_buf) remaining_uchars;
      ValidPrefix (prefix_bytes, Buffer.contents extension_buf)
    end else
      (* transistion case *)
      match remaining_uchars with
      | [] -> 
          Invalid "String ended before 6 digits were found"
      | uchar :: tail ->
          let code = Uchar.to_int uchar in
          let next_total = total_chars_read + 1 in
          
          if code < 0 || code > 127 then
            Invalid (Printf.sprintf "Illegal multi-byte character at position %d" next_total)
          else
            let c = Char.chr code in
            match c with
            | '0' .. '9' ->
                Bytes.set prefix_bytes digits_found c;
                scan (digits_found + 1) next_total '0' tail
            | ' ' -> scan digits_found next_total ' ' tail
            | '_' -> begin
                match last_char with
                | '-' -> Invalid (Printf.sprintf "Illegal sequence '-_' at position %d" next_total)
                | _   -> scan digits_found next_total '_' tail
              end
            | '-' -> begin
                match last_char with
                | '_' -> Invalid (Printf.sprintf "Illegal sequence '_-' at position %d" next_total)
                | _   -> scan digits_found next_total '-' tail
              end
            | '.' | '/' -> begin
                match last_char with
                | '.' | '/' -> 
                    Invalid (Printf.sprintf "Illegal consecutive delimiters at position %d" next_total)
                | _ -> 
                    if digits_found = 2 || digits_found = 4 then
                      scan digits_found next_total c tail
                    else
                      Invalid (Printf.sprintf "Malformed HS structure: delimiter '%c' placed at invalid digit count %d" c digits_found)
              end
            | _ ->
                Invalid (Printf.sprintf "Illegal formatting character '%c' at position %d" c next_total)
  in

  (* Start parsing of prefix:
  - digits_found acts as the index for prefix_bytes: 0, 1, 2, 3, 4, 5
  - total_chars_read is... well... total chars read
  - last_char start with a null character *)
  scan 0 0 '\000' uchars


let prefix_unicode_parser raw_s =
  let decoder = Uutf.decoder (`String raw_s) in
  let rec decode_all acc =
    match Uutf.decode decoder with
    | `Await -> Error "Unexpected streaming block"
    | `Malformed _ -> Error "Input contains invalid UTF-8 byte sequences"
    | `End -> Ok (List.rev acc)
    | `Uchar uchar -> decode_all (uchar :: acc)
  in

  match decode_all [] with
  | Error msg -> Invalid msg
  | Ok uchars -> extract_six_digits uchars


(* tracking the state of brackets *)
type bracket_context =
| Outside
| Inside of char * bool

(* Now, we clean and check whether it has any semantic meaning *)
(* The caller has the responsibility to enforce data hierarchy. *)
let extension_validator raw_s uchars =
  let rec loop ctx streak chars =
    match chars with
    | [] ->
        (match ctx with
         | Outside -> ValidPrefix (Bytes.of_string raw_s, raw_s)
         | Inside _ -> Invalid "Unclosed bracket at end of extension")
    | u :: rest ->
        let code = Uchar.to_int u in
        if code < 0 || code > 127 then 
          Invalid "Multi-byte/Non-ASCII characters are not allowed"
        else
          let c = Char.chr code in
          match c with
          | ' ' -> 
              loop ctx streak rest 

          | 'A' .. 'Z' | 'a' .. 'z' | '0' .. '9' ->
              let next_ctx = match ctx with
                | Outside -> Outside
                | Inside (close, _) -> Inside (close, true)
              in
              loop next_ctx None rest 

          | '[' | '(' ->
              (match ctx with
              | Inside _ -> Invalid "Nested brackets are not allowed"
              | Outside ->
                  let expected_close = if c = '[' then ']' else ')' in
                  loop (Inside (expected_close, false)) None rest)

          | ']' | ')' ->
              (match ctx with
              | Outside -> Invalid "Unmatched closing bracket"
              | Inside (expected, has_alnum) ->
                  if c <> expected then Invalid "Mismatched closing bracket type"
                  else if not has_alnum then Invalid "Bracket contains no alphanumeric characters"
                  else loop Outside None rest)

          | '-' | '/' | ':' | '_' | '.' ->
              (match streak with
              | None -> loop ctx (Some c) rest
              | Some last_delim ->
                  if c <> last_delim then Invalid "Heterogeneous continuous delimiters detected"
                  else loop ctx (Some c) rest)

          | _ ->
              Invalid (Printf.sprintf "Invalid character '%c' in extension" c)
  in
  loop Outside None uchars

let extension_unicode_validator raw_s =
  let decoder = Uutf.decoder (`String raw_s) in
  let rec decode_all acc =
    match Uutf.decode decoder with
    | `Await -> Invalid "Unexpected streaming block"
    | `Malformed _ -> Invalid "Input contains invalid UTF-8 byte sequences"
    | `End -> extension_validator raw_s (List.rev acc)
    | `Uchar uchar -> decode_all (uchar :: acc)
  in
  decode_all []


(* here we flatten the implicit hierarchy of the extension for the densest *)
(* most compact representation, as recommended by the *)
(* Data Element 7357 / TDED 7357 (WCO Data Model). *)
let extension_parser uchars =
  (* acc holds the characters in reverse order, count tracks length dynamically *)
  let rec loop acc count chars =
    match chars with
    | [] ->
        (match count with
        | 0 -> Ok None
        | c when c > 16 -> Error "Flattened extension exceeds 16-character ceiling"
        | _ -> 
            let final_str = String.of_seq (List.to_seq (List.rev acc)) in
            Ok (Some final_str))
          
    | u :: rest ->
        let code = Uchar.to_int u in
        if code < 0 || code > 127 then
          loop acc count rest
        else
          let c = Char.chr code in
          match c with
          | 'a' .. 'z' -> 
              loop (Char.uppercase_ascii c :: acc) (count + 1) rest
          | 'A' .. 'Z' | '0' .. '9' -> 
              loop (c :: acc) (count + 1) rest
          | _ -> 
              loop acc count rest
  in
  loop [] 0 uchars

let extension_unicode_parser raw_s =
  let decoder = Uutf.decoder (`String raw_s) in
  let rec decode_all acc =
    match Uutf.decode decoder with
    | `Await -> Error "Unexpected streaming block"
    | `Malformed _ -> Error "Input contains invalid UTF-8 byte sequences"
    | `End -> extension_parser (List.rev acc) (* remember, acc is reversed! *)
    | `Uchar uchar -> decode_all (uchar :: acc)
  in
  decode_all []


(* of_string, a public API that handle prefix_unicode_parser crashes,
   then we put the pile of digits into the container, then parse the extension
   raw string and pack it into a 16 character buffer. If the provided extension
   cannot fit to the 16 characters buffer, it will return an error.

   We disallow whitespaces other than " " because here we don't have any context
   of where these whitespaces exist and why do they spawn to existence, thus it is better
   for the caller of the function to figure out the semantics.
   
   Aka, no custom data forms would accept "23
   3452" (23\n3452) as a valid HS code.
*)

let of_string raw_s =
  let open Result.Syntax in
  
  (* First parse the prefix to a 6 digit prefix, then match the error *)
  match prefix_unicode_parser raw_s with
  | Invalid msg -> Error msg
  | ValidPrefix (prefix, raw_ext) ->
  
      (* Slice the prefix buckets, guaranteed to be exactly
         6 pure ASCII numeric chars by the scanner *)
      let c_raw = Bytes.sub_string prefix 0 2 in
      let h_raw = Bytes.sub_string prefix 2 2 in
      let s_raw = Bytes.sub_string prefix 4 2 in
      let* chapter    = Chapter.of_string c_raw in
      let* heading    = Heading.of_string h_raw in
      let* subheading = Subheading.of_string s_raw in

      (* validate and parse extension *)
      let* extension_opt = 
        match extension_unicode_validator raw_ext with
        | Invalid msg -> Error msg
        | ValidPrefix (_, _) -> 
            extension_unicode_parser raw_ext
      in
      let* extension = 
        match extension_opt with
        | None -> Ok None
        | Some e -> 
            let* valid_ext = Extension.of_string e in
            Ok (Some valid_ext)
      in

      Ok { chapter; heading; subheading; extension }

let of_string_exn s = match of_string s with Ok t -> t | Error msg -> failwith msg

let to_string { chapter; heading; subheading; extension } =
  let c = Chapter.to_int chapter in
  let h = Heading.to_int heading in
  let s = Subheading.to_int subheading in
  match extension with
  | None -> Printf.sprintf "%02d.%02d.%02d" c h s
  | Some e ->
      let e_str = Extension.to_string e in
      Printf.sprintf "%02d.%02d.%02d.%s" c h s e_str

let pp ppf t = 
  Format.pp_print_string ppf (to_string t)


(* getters *)
let chapter t = Chapter.to_int t.chapter
let heading t = Heading.to_int t.heading
let subheading t = Subheading.to_int t.subheading
let extension t = 
  match t.extension with
  | None -> None
  | Some e -> Some (Extension.to_string e)


(* comparison *)
type match_level =
  | Identical
  | Chapter_mismatch
  | Heading_mismatch
  | Subheading_mismatch
  | Extension_mismatch

let match_level a b =
  let c = Chapter.to_int a.chapter = Chapter.to_int b.chapter in
  let h = Heading.to_int a.heading = Heading.to_int b.heading in
  let s = Subheading.to_int a.subheading = Subheading.to_int b.subheading in
  let e = Option.equal String.equal 
            (Option.map Extension.to_string a.extension) 
            (Option.map Extension.to_string b.extension) 
  in
  
  match (c, h, s, e) with
  | (true,  true,  true,  true)  -> Identical
  | (true,  true,  true,  false) -> Extension_mismatch
  | (true,  true,  false, _)     -> Subheading_mismatch
  | (true,  false, _,     _)     -> Heading_mismatch
  | (false, _,     _,     _)     -> Chapter_mismatch


let compare a b =
  match match_level a b with
  | Identical -> 0
  | Chapter_mismatch -> 
      Int.compare (Chapter.to_int a.chapter) (Chapter.to_int b.chapter)
  | Heading_mismatch -> 
      Int.compare (Heading.to_int a.heading) (Heading.to_int b.heading)
  | Subheading_mismatch -> 
      Int.compare (Subheading.to_int a.subheading) (Subheading.to_int b.subheading)
  | Extension_mismatch ->
      Option.compare String.compare 
        (Option.map Extension.to_string a.extension) 
        (Option.map Extension.to_string b.extension)

let equal a b =
  match match_level a b with
  | Identical -> true
  | _ -> false
