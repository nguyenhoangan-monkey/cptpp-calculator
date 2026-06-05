open Bin_prot.Std

(* To optimize memory, strings are interned into integers via vocab_compiler.ml *)
type string_ref = int [@@deriving bin_io, show]

(* A bitmask representing validity states, years, or country flags *)
type bit_mask = int64 [@@deriving bin_io, show]

(* The optimized, flattened layout for an HS Code Matrix entry *)
type hs_code_entry = {
  hs_code     : string_ref;   (* Index into the global vocabulary string pool *)
  parent_code : string_ref;   (* For hierarchy resolution *)
  hier_level  : int;          (* Chapter, Heading, Subheading depth *)
  flags       : bit_mask;     (* Fast bitmask checks for validation rules *)
} [@@deriving bin_io, show]

(* Flat parallel array architecture for Tariffs to optimize CPU cache locality *)
type tariff_matrix = {
  source_countries : int array;      (* Interned country IDs *)
  target_countries : int array;      (* Interned country IDs *)
  hs_code_indices  : string_ref array;
  rates            : float array;     (* 0.0 for "Free" *)
  valid_from_years : int array;
  valid_to_years   : int array;
  rule_masks       : bit_mask array; (* Bitwise rules for certificates of origin *)
} [@@deriving bin_io, show]

(* The master database payload type — this is the in-memory representation *)
type miku_payload = {
  vocab_pool : string array;         (* Central integer-mapped string pool *)
  hs_matrix  : hs_code_entry array;  (* Flattened structure of HS rules *)
  tariffs    : tariff_matrix;        (* Flattened structure of array matrices *)
  bucket_map : int array;            (* 256 bucket layout for token dispatch *)
} [@@deriving bin_io, show]