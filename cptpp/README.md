<!--
 SPDX-License-Identifier: GPL-3.0-only
 Copyright (C) 2026 Nguyễn Hoàng An
-->

`cptpp` is a Rust/Ocaml program that takes tariff schedules, country profiles and HS code matrices, as .csv, .json, .xml, .xlsx and .pdf (structured, predefined in code). This is a classic *extract, transform, load pipeline*, with a serialization step to a binary blob .miku.

Similar to a classic extract, transform, load pipeline used by SAP GTS or Thompson Reuters ONESOURCE, it is expected that the user map the data column to the predefined name fields. For some specific file types such as New Zealand's CPTPP tariff schedules for countries, the program would detect it automatically and no additional user input is needed.

The .miku is used the `/calc` OCaml trade engine to perform CPTPP certificate of origin and compliance calculations, allow the entirety of the tariff schedules of all countries in CPTPP across many years to be loaded in RAM.


## How to run

Run `make setup` to create the OCaml switches and Rust dependencies. If you want to use `cptpp` as a global command for developer work instead of `./cptpp`, run `make install`.

* To get the marshaled version (`.miku`) for `/calc`, run:
```bash
cptpp one.csv two.json three.xlsx <more files...> -o output-file.miku
```

If you want to get the different transformation checkpoints:

To get the tabular .csv for one of the files, run:
```bash
cptpp --emit-csv file-name -o output-file.csv
```

In technical terms, this is the Rust IR represented as arrays. The raw frontend form can be collected by running `cptpp --emit-rs file-name -o output-file.rs` which is then transformed into .csv.

To get the structured data console output .txt for one of the files, run:
```bash
cptpp --emit-txt file-name -o output-file.txt
```

In technical terms, this is the OCaml IR being rendered to plain text. The raw backend form can be collected by running `cptpp --emit-ml file-name -o output-file.ml` which is transformed to a console output via `[@@deriving show]`.


## Technical documentation
Typical data pipelines built in languages like Python or SQL are fragile. Because they handle data flexibly at runtime, a single unexpected format change from a trade partner—like a missing column or a typo in a tariff rate—can cause the entire system to crash silently or corrupt downstream reports.

Instead, by representing the data holistically as structured objects, we create a secure, centralized buffer zone. This approach completely eliminates the need to write separate, fragile cleanup scripts for every new country or file format. If a trade partner changes their spreadsheet layout, the fix is made instantly in one central location. Precompiling the data to .miku confers many benefits, such as allowing complex trade modeling in the trade engine, preventing silent data corruption, simplifying developer work, no database query latency (because there is no database), and no internet access needed.

The *extract, transform, load pipeline* is strictly sequential and divided into two core phases: a Rust-based extraction frontend and an OCaml-based validation and serialization backend.

Here, we have two intermediate representations (IR): one as a Rust array (--emit-rs) and another as a compressed structure of arrays in OCaml (--emit-ml). The Rust IR can theoretically be converted back to a .csv then being imported back if we write the harness for it, while the OCaml IR can only be read by `calc` library because it is a well-defined language defined in `calc`. The pipeline is heavily inspired by the multi-level intermediate representation work by LLVM complier to make sure the data ingestion is expressive while keeping the developer burden low.

*For the technically minded, think of the M * N problem! M is all the different file format and nature of the data, and N is all of the expected efficient data structure to represent it in binary. By having IRs, we reduce this problem to M + N problem via modularity.*


### lib/driver
The driver is the CLI entry point. The driver parses command-line arguments, manage Rust/OCaml build environment, and coordinate script execution. It also handle path and environment variables to allow calling "cptpp".

### lib/rust-frontend
`rust-frontend` acts as the data extraction, normalization, and ingestion layer. .csv, .json, .xml, .xlsx and .pdf are parsed here because the Rust libraries are much more expressive and stable compare to OCaml's libraries.

1. `extractor`: Preprocessing. Ingests raw data (.xlsx, .json, .csv, .xml) using external libraries, strips whitespace, sanitizes empty cells, and maps raw text into Rust's string/number primitives.
2. `datatype`: Domain modeling. Maps the sanitized data into different models corresponding to data types (e.g., tariff schedules, country profiles, HS code matrices). `--emit-rs` export the Rust array at the end of this step.
3. `interface`: Standardization. Standardizes shared metadata fields (e.g., "name") and enforces constraints on memory layout before serialization.
4. `writer`: FFI writer. Maps Rust's primitives directly to OCaml-compatible structs with `ocaml-interop`, then passes the Rust array across the FFI bridge to OCaml runtime.

### lib/ocaml-backend
`ocaml-backend` focuses on semantics validation and matching to the expected types by /calc trade engine.

1. `reader`: FFI reader. Capture the Rust array with `external`, deserialize it, then being transformed to a stream for `validator` to ingest.
2. `validator`: Data validation. Ingests the stream to verify structural integrity and domain logic. Executes business logic validation, such as cross-referencing HS codes against tariff matrices, and flags data corruption or semantic contradictions.
3. `optimizer`: Remove useless data. Data that is not used by the desired datatype and historical tariff lines that are unreachable are deleted entirely.
4. `compressor`: Data packing. Transform the data into cache-friendly, compact memory layouts. There are many optimization techniques. `--emit-ml` export the OCaml object at the end of this step.
    * Interns Unicode text descriptions into a central integer-mapped string pool
    * Groups items into 256 buckets by using the first byte of the token list
    * Flattens data fields into a group of arrays
5. `serializer`: Serialization. The raw array representation is packed with `bin_prot` to one clean `.miku`. The intended usage is shipping this binary blob to /calc/lib/data for the trade engine.


## Data sources
IMPORTANT: This section shows what kind of license is used. It has legal value and thus require due diligence.

### `raw_data/harmonized_system`

| Path | Description | Source | License / Terms of Use |
| --- | --- | --- | --- |
| `hs_world_2022` | Global HS Codes (2022) | [datasets/harmonized-system](https://github.com/datasets/harmonized-system) | [ODC Public Domain Dedication and Licence (PDDL)](http://opendatacommons.org/licenses/pddl/1-0/) |
| `hs_vnm_2022` | Vietnam HS Subcodes (2022) | Vietnam National Trade Repository [(official)](https://vntr.moit.gov.vn/nomenclature) [(unofficial 5 April 2026)](https://docs.google.com/spreadsheets/d/1Tv3kzX5M-HOA0GoFjaGydTrHWD8piDh5/edit?pli=1&gid=1821549925#gid=1821549925) | Public domain under Vietnamese laws (note 1)  |
| `hs_mex_2022` | Mexico HS Subcodes (2022) | Government of Mexico (SIVIEX / SE) | Open Government Data (Verify local terms) |

Notes:
1. The 8-digit Vietnamese HS codes, descriptions, and tax rates enacted via Decree No. 26/2023/ND-CP qualify as official administrative documents under Article 15 (Clause 2) of the IP Law and Decree No. 17/2023/ND-CP. Consequently, the decree's text, tables, and appendices are not subject to copyright protection.

### `raw_data/tariffs`

| Path | Country | Source | License / Terms of Use |
| --- | --- | --- | --- |
| `/cptpp/mex/` | Mexico | Mexican Ministry of Economy | Official Public Schedule |
| `/cptpp/vnm/` | Vietnam | Decree 115/2022/NĐ-CP, effective 30 December 2022 [(official)](https://vntr.moit.gov.vn/download/1634893857_Tariff%20Schedules%20(CPTPP).zip) [(unofficial)](https://docs.google.com/spreadsheets/d/1Tv3kzX5M-HOA0GoFjaGydTrHWD8piDh5/edit?pli=1&gid=1821549925#gid=1821549925) | Public domain under Vietnamese laws (note 1) |

Notes:
1. The 8-digit Vietnamese HS codes, descriptions, and tax rates enacted via Decree No. 26/2023/ND-CP qualify as official administrative documents under Article 15 (Clause 2) of the IP Law and Decree No. 17/2023/ND-CP. Consequently, the decree's text, tables, and appendices are not subject to copyright protection.

## Format notes

* For the harmonized system, files use the following format: hs_XXX_YYYY.csv. XXX is 3-letter country codes, YYYY is year of publishing. CSV is convenient and easy to use for OCaml.
* For tariffs, files use the following format: effective_YYYYMMDD.json. YYYYMMDD is the enforcement date. For each change in the tariffs, there is a complete matrix.
* metadata.json is used to add display name (VNM -> "Vietnam") and link files in a systematic way (in metadata.json, "effective_20250103.json" has attribute "date": "2025-01-03")


## notes
https://aosabook.org/en/v1/llvm.html

do String Interning