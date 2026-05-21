(* lib/domain/country.ml *)

type t = Vietnam | Mexico | China | Japan

(* convert string to type *)
let of_string = function
  | "VNM" | "Vietnam" -> Some Vietnam
  | "MEX" | "Mexico" -> Some Mexico
  | "CHN" | "China" -> Some China
  | "JPN" | "Japan" -> Some Japan
  | _ -> None

(* convert type to ISO 3-letter string *)
let to_iso_string = function
  | Vietnam -> "VNM"
  | Mexico -> "MEX"
  | China -> "CHN"
  | Japan -> "JPN"
