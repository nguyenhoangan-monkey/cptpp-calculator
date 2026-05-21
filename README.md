# cptpp-calculator
CPTPP rules of origin and tariffs calculator.

**This calculator is for intuition/informational/education purposes, not for actual legal work. Please read the BSD 3-Clause License before usage because it contains important legal information.**

## Installation

```bash
opam install yojson ppx_deriving_yojson alcotest qcheck
dune build
```

## How the calculator works
### Step 1: create the product
#### How-to
You need to define the product as an OCaml record variable with type `product`:
1. The bill of materials are defined with required attributes for CPTPP (type `material_metrics`).
2. They are then wrapped under variables `pvc_pellet`, `paint` and `box` (type `material`).
3. This is added to the bill of materials of `hatsune_miku_metrics`, then additional CPTPP product data is added (type `product_metrics`)
4. `hatsune_miku` is a wrapper that provide an id and name to the product (type `product`)

Type `material` and `product` are purely for metadata and is transparent in the CPTPP calculator. Only the fields in `material_metrics` and `product_metrics`are used by the CPTPP calculator are used functionally.

In this example below, I defined a (hypothetical) Hatsune Miku figurine that is officially licensed and has a very high profit margin, and then record it as a `hatsune_miku` variable. For simplicity, foreign currencies are not added for now as we default to USD for all countries, nor is the accumulation rule.

```ocaml
(* 1. define "material_metrics" *)
(* HS code 3904.10: "Poly(vinyl chloride), not mixed with any other substances" *)
let pvc_pellet_metrics : material_metrics = 
  { hs_code = Hs_code.of_string "3904.10"; origin = "CHN"; cost = 5.00 }

(* HS code 3208.20: "Based on acrylic or vinyl polymers" *)
let paint_metrics : material_metrics = 
  { hs_code = Hs_code.of_string "3208.20"; origin = "JPN"; cost = 2.50 }

(* HS code 4819.10: "Cartons, boxes and cases, of corrugated paper or paperboard" *)
let box_metrics : material_metrics = 
  { hs_code = Hs_code.of_string "4819.10"; origin = "VNM"; cost = 1.50 }


(* 2. wrap under "material", add description *)
let pvc_pellet : material =
  { metadata = Some {id = "mat-pvc-001"; name = "PVC pellets"}; trade_metrics = pvc_pellet_metrics }

let paint      : material =
  { metadata = Some {id = "mat-paint-001"; name = "Acrylic paint"}; trade_metrics = paint_metrics }

let box        : material =
  { metadata = Some {id = "mat-box-001"; name = "Cardboard box"}; trade_metrics = box_metrics }


(* 3. define "product_metrics", add "material" objects *)
let hatsune_miku_metrics : product_metrics = {
  hs_code = Hs_code.of_string "9503.00.00";
  export_value = 50.00;
  origin_country = "VNM";
  destination_country = "MEX";
  bill_of_materials = [ pvc_pellet; paint; box ] 
}


(* 4. wrap under "product", add description *)
let hatsune_miku : product =
  { metadata = Some {id = "miku-v4x-001"; name = "Hatsune Miku figurine"}; trade_metrics = hatsune_miku_metrics }
```

You can also explicitly write the bill of material and structs directly:
```ocaml
let hatsune_miku : product = {
  metadata = Some {
    id = "miku-v4x-001"; 
    name = "Hatsune Miku figurine";
  };
  trade_metrics = {
    hs_code = Hs_code.of_string "9503.00.00";
    export_value = 50.00;
    origin_country = "VNM";
    destination_country = "MEX";
    bill_of_materials = [
      {
        metadata = Some { id = "mat-pvc-001"; name = "PVC pellets" };
        trade_metrics = { hs_code = Hs_code.of_string "3904.10"; origin = "CHN"; cost = 5.00 };
      };
      {
        metadata = Some { id = "mat-paint-001"; name = "Acrylic paint" };
        trade_metrics = { hs_code = Hs_code.of_string "3208.20"; origin = "JPN"; cost = 2.50 };
      };
      {
        metadata = Some { id = "mat-box-001"; name = "Cardboard box" };
        trade_metrics = { hs_code = Hs_code.of_string "4819.10"; origin = "VNM"; cost = 1.50 };
      };
    ];
  };
}
```

But, these descriptions and names doesn't matter in actual calculation. In the eyes of the CPTPP calculator, it is similar to this, and will only concern itself with these data:
```ocaml
let hatsune_miku : product = {
  metadata = None;
  trade_metrics = {
    hs_code = Hs_code.of_string "9503.00.00";
    export_value = 50.00;
    origin_country = "VNM";
    destination_country = "MEX";
    bill_of_materials = [
      { metadata = None; trade_metrics = { hs_code = Hs_code.of_string "3904.10"; origin = "CHN"; cost = 5.00 }};
      { metadata = None; trade_metrics = { hs_code = Hs_code.of_string "3208.20"; origin = "JPN"; cost = 2.50 }};
      { metadata = None; trade_metrics = { hs_code = Hs_code.of_string "4819.10"; origin = "VNM"; cost = 1.50 }};
    ];
  };
}
```


#### Technical specifications
Hatsune Miku figurine of type `product`:
* `hs_code`: `Hs_code.of_string`, then the actual HS code `"9503.00.00" (Plastic toy/figurine)`. The program would parse the code to an internal OCaml datatype.
* `export_value`: MSRP price to the destination country in USD, with floating points
* `origin_country`: raw string of 3 letter code of the origin country (`"VNM"` is Vietnam)
* `destination_country`: raw string of 3 letter code of the destination country (`"MEX"` is Mexico)
* `bill_of_materials`: a list of materials

The bill of materials of type `material`:
* `materials`: a list of more `Product.t` objects, in this case, they are the manufacturing materials for the product.
* `cost`: this is the original value of the materials in USD, with floating points.




## Notes
this is for trees: `tree -I "_build|_opam|*.install|dune.lock"`

first I need to convert json
