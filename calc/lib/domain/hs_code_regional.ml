(**
 * SPDX-License-Identifier: GPL-3.0-only
 * Copyright (C) 2026 Nguyễn Hoàng An
 *)

type wco_version = WCO2017 | WCO2022 | WCO2028
type trade_direction = Import | Export

type region =
  | World
  | Australia
  | Brunei
  | Canada
  | Chile
  | Japan
  | Malaysia
  | Mexico
  | New_Zealand
  | Peru
  | Singapore
  | United_Kingdom
  | Vietnam

type hs_system = region * wco_version * trade_direction
type t = { system : hs_system; base_hs : Hs_code.t }

let resolve_data_source config codes_array =
  match config with
  | World, WCO2022, (Import | Export) -> Some codes_array
  | _, WCO2022, (Import | Export) -> None
  | _ -> None

let is_valid code codes_array =
  let c = Hs_code.chapter code in
  let h = Hs_code.heading code in
  let s = Hs_code.subheading code in
  let target = (c * 10000) + (h * 100) + s in

  let rec binary_search low high =
    if low > high then false
    else
      let mid = low + ((high - low) / 2) in
      let value = Array.unsafe_get codes_array mid in
      if value = target then true
      else if value > target then binary_search low (mid - 1)
      else binary_search (mid + 1) high
  in
  binary_search 0 (Array.length codes_array - 1)
