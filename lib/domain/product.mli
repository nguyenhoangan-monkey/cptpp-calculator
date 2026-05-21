(* See README for instructions and type definitions *)

(** Shared metadata record for optional identification *)
type metadata = {
  id   : string;
  name : string;
}

type material_metrics = {
  hs_code : Hs_code.t;
  origin  : string; (** ISO 3166-1 alpha-3 country code of origin *)
  cost    : float;  (** Unit cost, USD, non-negative *)
}

type material = {
  metadata      : metadata option;
  trade_metrics : material_metrics;
}

type product_metrics = {
  hs_code             : Hs_code.t;
  export_value        : float;  (** free-on-board value, USD, non-negative *)
  origin_country      : string; (** ISO 3166-1 alpha-3 country code (e.g., "VNM") *)
  destination_country : string; (** ISO 3166-1 alpha-3 country code (e.g., "MEX") *)
  bill_of_materials   : material list;
}

type product = {
  metadata      : metadata option;
  trade_metrics : product_metrics;
}