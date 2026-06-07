open Bin_prot.Std
open Base

module Raw = struct
  type 'a t = {
    row : int;
    col : int;
    payload : 'a;
  } [@@deriving bin_io, sexp]
end

module Validated = struct
  type hs_code = { code : string; desc : string } [@@deriving bin_io]
  type tariff  = { id : int; rate : float }       [@@deriving bin_io]
  
  type t = 
    | Hs_code of hs_code
    | Tariff of tariff
  [@@deriving bin_io]
end

module Optimized = struct
  type t = Validated.t [@@deriving bin_io]
end

module Compressed = struct
  type t = {
    keys : string array;
    values : int array;
  } [@@deriving bin_io]
end