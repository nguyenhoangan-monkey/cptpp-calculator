(* dune exec ./knapsack.exe *)
let groups = [ 1; 2; 4; 6 ]

(* Helper function to print a list of integers *)
let print_combination list =
  print_string "[";
  print_string (String.concat "; " (List.map string_of_int list));
  print_endline "]"

(* Core recursive function to find arrangements *)
let rec find_arrangements target current_path =
  if target = 0 then
    (* Base case: We hit exactly 6, print the current arrangement *)
    print_combination (List.rev current_path)
  else if target > 0 then
    (* Try adding each group size to our current path *)
    List.iter (fun item -> find_arrangements (target - item) (item :: current_path)) groups

(* Run the function with a target of 6 and an empty starting path *)
let () = find_arrangements 6 []
