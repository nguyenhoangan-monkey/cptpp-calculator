type wco_version = WCO2017 | WCO2022 | WCO2028
type trade_direction = Import | Export
type t

val make : wco_version -> Data.Country.t -> trade_direction -> Hs_code.t -> t option
