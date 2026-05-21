(* clone of product.mli for now *)

type material = {
  hs_code : Hs_code.t;
  origin : Country.t;
  cost : Bignum.t;  (** Unit cost, USD, non-negative *)
}

type product = {
  hs_code : Hs_code.t;
  export_value : Bignum.t;  (** free-on-board value, USD, non-negative *)
  origin_country : Country.t;
  destination_country : Country.t;
  bill_of_materials : material list;
}
