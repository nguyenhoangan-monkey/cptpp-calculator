let escape_rex = Re.compile (Re.str "\"\"")

let unescape_quotes s =
  Re.replace_string escape_rex ~by:"\"" s

let token buf =
  match%sedlex buf with
  | ',' -> 
      Parser.COMMA
      
  | "\r\n" | '\n' | '\r' -> 
      Sedlexing.new_line buf;
      Parser.NEWLINE
      
  | '"', Star (Compl '"' | "\"\""), '"' ->
      let lexeme = Sedlexing.Utf8.lexeme buf in
      let inner_raw = String.sub lexeme 1 (String.length lexeme - 2) in
      let clean_string = unescape_quotes inner_raw in
      Parser.FIELD clean_string
      
  | Plus (Compl (Chars ",\r\n\"")) ->
      let lexeme = Sedlexing.Utf8.lexeme buf in
      Parser.FIELD lexeme
      
  | eof -> 
      Parser.EOF
      
  | _ -> 
      let pos = Sedlexing.lexeme_start buf in
      failwith (Printf.sprintf "Lexical error at position %d" pos)
    
let f l () =
  let tok = token l in
  let start_pos, end_pos = Sedlexing.lexing_positions l in
  (tok, start_pos, end_pos)
