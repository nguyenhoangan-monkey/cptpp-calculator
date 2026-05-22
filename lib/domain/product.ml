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

let make_material hs_code origin cost = { hs_code; origin; cost = Bignum.of_string cost }

let make_product hs_code export_value origin_country destination_country bill_of_materials
    =
  {
    hs_code;
    export_value = Bignum.of_string export_value;
    origin_country;
    destination_country;
    bill_of_materials;
  }
