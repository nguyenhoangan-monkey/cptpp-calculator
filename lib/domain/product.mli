(* See README for instructions and type definitions *)

type material_metrics = {
  hs_code : Hs_code.t;
  origin  : string; (** ISO 3166-1 alpha-2 country code of origin *)
  cost    : float;  (** Unit cost, USD, non-negative *)
}

type material = {
  id            : string;
  name          : string;
  trade_metrics : material_metrics;
}

type product_metrics = {
  hs_code             : Hs_code.t;
  export_value        : float;  (** free-on-board value, USD, non-negative *)
  origin_country      : string; (** ISO 3166-1 alpha-2 country code *)
  destination_country : string; (** ISO 3166-1 alpha-2 country code *)
  bill_of_materials   : material list;
}

type product = {
  id            : string;
  name          : string;
  trade_metrics : product_metrics;
}