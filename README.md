# cptpp-calculator
CPTPP rules of origin and tariffs calculator.

**This calculator is for intuition/informational/education purposes, not for actual legal work. Please read the BSD 3-Clause License before usage because it contains important legal information.**

## Installation
Download the zip, cd to the folder then:

```bash
dune build
opam install . --deps-only --with-test
dune build
```

## How the calculator works
### Step 1: create the product
#### How-to
You need to define the product as an OCaml record variable with type `product`:
1. The bill of materials are defined with required attributes for CPTPP (type `material`).
2. This is added to the bill of materials of `hatsune_miku` (type `product`)

In this example below, I defined a (hypothetical) Hatsune Miku figurine that is officially licensed and has a very high profit margin, and then record it as a `hatsune_miku` variable. For simplicity, foreign currencies are not added for now as we default to USD for all countries, nor is the accumulation rule.

```ocaml
(* HS code 3904.10: "Poly(vinyl chloride), not mixed with any other substances" *)
let pvc_pellet : material =
  {
    hs_code = Hs_code.of_string "3904.10";
    origin = Country.China;
    cost = Bignum.of_string "5.00";
  }

(* HS code 3208.20: "Based on acrylic or vinyl polymers" *)
let paint : material =
  {
    hs_code = Hs_code.of_string "3208.20";
    origin = Country.Japan;
    cost = Bignum.of_string "2.50";
  }

(* HS code 4819.10: "Cartons, boxes and cases, of corrugated paper or paperboard" *)
let cardboard_box : material =
  {
    hs_code = Hs_code.of_string "4819.10";
    origin = Country.Vietnam;
    cost = Bignum.of_string "1.50";
  }

let hatsune_miku : product =
  {
    hs_code = Hs_code.of_string "9503.00.00";
    export_value = Bignum.of_string "50.00";
    origin_country = Country.Vietnam;
    destination_country = Country.Mexico;
    bill_of_materials = [ pvc_pellet; paint; cardboard_box ];
  }
```

You can also explicitly write the bill of material and structs directly:
```ocaml
let hatsune_miku : product =
  {
    hs_code = Hs_code.of_string "9503.00.00";
    export_value = Bignum.of_string "50.00";
    origin_country = Country.Vietnam;
    destination_country = Country.Mexico;
    bill_of_materials =
      [
        {
          hs_code = Hs_code.of_string "3904.10";
          origin = Country.China;
          cost = Bignum.of_string "5.00";
        };
        {
          hs_code = Hs_code.of_string "3208.20";
          origin = Country.Japan;
          cost = Bignum.of_string "2.50";
        };
        {
          hs_code = Hs_code.of_string "4819.10";
          origin = Country.Vietnam;
          cost = Bignum.of_string "1.50";
        };
      ];
  }
```


#### Technical specifications
Hatsune Miku figurine of type `product`:
* `hs_code`: `Hs_code.of_string`, then the actual HS code `"9503.00.00" (Plastic toy/figurine)`. The program would parse the code to an internal OCaml datatype.
* `export_value`: MSRP price to the destination country in USD, with floating points
* `origin_country`: Country data type
* `destination_country`: Country data type
* `bill_of_materials`: a list of materials, see below

The bill of materials of type `material`:
* `hs_code`: `Hs_code.of_string`, then the actual HS code. The program would parse the code to an internal OCaml datatype.
* `cost`: this is the original value of the materials in USD, with floating points.
* `origin`: Country data type




## Notes
this is for trees: `tree -I "_build|_opam|*.install|dune.lock"`

first I need to convert json of tariffs.

before commit:
`dune build @all @fmt --auto-promote`
`opam install . --deps-only --with-test`