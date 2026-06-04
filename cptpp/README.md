<!--
 SPDX-License-Identifier: GPL-3.0-only
 Copyright (C) 2026 Nguyễn Hoàng An
-->

cptpp is a data baker that takes tariff schedules, country profiles, HS code matrices, and serializes it into an marshaled OCaml binary blob .miku. The .miku is used the `/calc` OCaml trade engine to perform CPTPP certificate of origin and compliance calculations, allow the entireity of the tariff schedules of all countries in CPTPP across many years to be loaded in RAM. Compare to loading the csv directly in the trade engine, this confers many benefit for the user, such as allowing complex trade modeling in the trade engine, prevent silent data corruption, no database query latency (because there is no database), no internet access needed, and simplify developer work.

The accepted filetypes for ingestion is .csv, .json, .xml, .xlsx and .pdf (structured, predefined in code). Other than some predefined file structures (such as New Zealand's CPTPP tariff schedules for countries), it is expected that the files map its column to the predefined name fields. See here for more information.

## How to run
Run `make setup` to create the OCaml switches and Rust dependencies. If you want to use cptpp as a command for for developer work instead of ./cptpp, run `make install`.

- To get the marshalized version `.miku` for `/calc`, run: `cptpp one.csv two.json three.xlsx <more files...> -o output-file.miku`.
- To get the Ocaml IR (.ml) for one of the files, run `cptpp --emit-ml file-name -o output-file.ml`
- To get the Rust IR (.rs) for one of the files, run `cptpp --emit-rs file-name -o output-file.rs`


## Logic
The reason why SQL is not used is because SQL are not type safe nor have inherient structure. A relational database is very hard to visualize the constraint and is often prone to silent data corruption, as well as suffering from runtime bloat. Representing the data as structured objects help reduce developer tax and allow for efficient representation in memory and lookup in Ocaml.

The pipeline is strictly sequential and divided into two core phases: a Rust-based extraction frontend and an OCaml-based validation and serialization backend.

### lib/driver
The driver is the CLI entry point. The driver parses command-line arguments, manage Rust/OCaml build environment, and coordinate script execution. It also handle path and environment variables to allow calling "cptpp". It also manage the protocol buffer.

### lib/rust-ir
rust-ir acts as the data extraction, normalization, and ingestion layer. .csv, .json, .xml, .xlsx and .pdf are parsed here because the Rust libraries are much more expressive and stable compare to OCaml's libraries.

1. `extractor`: Preprocessing. Ingests raw data (.xlsx, .json, .csv, .xml) using external libraries, strips whitespace, sanitizes empty cells, and maps raw text into Rust's string/number primitives.
2. `dialect`: Domain modeling. Maps the sanitized data into different models corresponding to data types (e.g., tariff schedules, country profiles, HS code matrices). `--emit-rs` export the Rust array at the end of this step.
3. `interface`: Standardization. Standardizes shared metadata fields (e.g., "name") and enforces constraints on memory layout before serialization.
4. `writer`: FFI writer. Maps Rust's primitives directly to OCaml-compatible structs with `ocaml-interop`, then passes the Rust array across the FFI bridge to OCaml runtime.

### lib/ocaml-ir
ocaml-ir focuses on semantics validation and matching to the expected types by /calc trade engine, without needing to worry about

1. `reader`: FFI reader. Capture the Rust array with `external`, deserialize it, then being transformed to a stream for `validator` to ingest.
2. `validator`: Data validation. Ingests the stream to verify structural integrity and domain logic. Executes business logic validation, such as cross-referencing HS codes against tariff matrices, and flags data corruption or semantic contradictions. `--emit-ml` export the OCaml object at the end of this step.
3. `serializer`: Serialization. The raw array representation is packed with `bin_prot` to one clean `.miku`. The intended usage is shipping this binary blob to /calc/lib/data for the trade engine.


## Data sources
**IMPORTANT: This section shows what kind of license is used. It has legal value and thus require due diligence.**

### `raw_data/harmonized_system`

| Path | Description | Source | License / Terms of Use |
| --- | --- | --- | --- |
| `hs_world_2022` | Global HS Codes (2022) | [datasets/harmonized-system](https://github.com/datasets/harmonized-system) | [ODC Public Domain Dedication and Licence (PDDL)](http://opendatacommons.org/licenses/pddl/1-0/) |
| `hs_vnm_2022` | Vietnam HS Subcodes (2022) | Vietnam National Trade Repository [(official)](https://vntr.moit.gov.vn/nomenclature) [(unofficial 5 April 2026)](https://docs.google.com/spreadsheets/d/1Tv3kzX5M-HOA0GoFjaGydTrHWD8piDh5/edit?pli=1&gid=1821549925#gid=1821549925) | Public domain under Vietnamese laws (note 1)  |
| `hs_mex_2022` | Mexico HS Subcodes (2022) | Government of Mexico (SIVIEX / SE) | Open Government Data (Verify local terms) |

Notes:
1. The 8-digit Vietnamese HS codes, descriptions, and tax rates enacted via Decree No. 26/2023/ND-CP qualify as official administrative documents under Article 15 (Clause 2) of the IP Law and Decree No. 17/2023/ND-CP. Consequently, the decree's text, tables, and appendices **are not subject to copyright protection**.

### `raw_data/tariffs`

| Path | Country | Source | License / Terms of Use |
| --- | --- | --- | --- |
| `/cptpp/mex/` | Mexico | Mexican Ministry of Economy | Official Public Schedule |
| `/cptpp/vnm/` | Vietnam | Decree 115/2022/NĐ-CP, effective 30 December 2022 [(official)](https://vntr.moit.gov.vn/download/1634893857_Tariff%20Schedules%20(CPTPP).zip) [(unofficial)](https://docs.google.com/spreadsheets/d/1Tv3kzX5M-HOA0GoFjaGydTrHWD8piDh5/edit?pli=1&gid=1821549925#gid=1821549925) | Public domain under Vietnamese laws (note 1) |

Notes:
1. The 8-digit Vietnamese HS codes, descriptions, and tax rates enacted via Decree No. 26/2023/ND-CP qualify as official administrative documents under Article 15 (Clause 2) of the IP Law and Decree No. 17/2023/ND-CP. Consequently, the decree's text, tables, and appendices **are not subject to copyright protection**.

## Format notes

* For the harmonized system, files use the following format: hs_XXX_YYYY.csv. XXX is 3-letter country codes, YYYY is year of publishing. CSV is convenient and easy to use for OCaml.
* For tariffs, files use the following format: effective_YYYYMMDD.json. YYYYMMDD is the enforcement date. For each change in the tariffs, there is a complete matrix.
* metadata.json is used to add display name (VNM -> "Vietnam") and link files in a systematic way (in metadata.json, "effective_20250103.json" has attribute "date": "2025-01-03")