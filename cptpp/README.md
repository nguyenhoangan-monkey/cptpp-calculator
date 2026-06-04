<!--
 SPDX-License-Identifier: GPL-3.0-only
 Copyright (C) 2026 Nguyễn Hoàng An
-->

`cptpp` is a data compiler of `.xlsx`, `.csv`, `.json` and `.xml` formats to an optimised Ocaml binary blob `.miku` used for `/calc`.

## How to run
Run `make setup` followed by `make install` to configure the environments and install the global `cptpp` command.

- To get the marshalized version `.miku` for `/calc`, run: `cptpp one.csv two.json three.xlsx <more files...> -o output-file.miku`.
- To get the Ocaml IR (.ml) for one of the files, run `cptpp --emit-ml file-name -o output-file.ml`
- To get the Rust IR (.rs) for one of the files, run `cptpp --emit-rs file-name -o output-file.rs`


## Logic
The pipeline is strictly sequential and divided into two core phases: a Rust-based extraction frontend and an OCaml-based validation and serialization backend. The two environments communicate via a Foreign Function Interface bridge.

### driver
The driver is the CLI entry point. It parses command-line arguments, maps out the execution pipeline, and manages the multi-language build environment including the underlying Makefile.

### rust-ir
The Rust frontend acts as the data extraction, normalization, and ingestion layer. Because Rust excels at high-performance I/O and low-level data manipulation, it is responsible for handling raw spreadsheet ingestion before passing typed representations to the backend.

1. `extractor`: Preprocessing. Ingests raw data (.xlsx, .json, .csv, .xml) using external libraries, strips whitespace, sanitizes empty cells, and maps raw text into generic internal string/number primitives.
2. `dialect`: Domain modeling. Defines the strict structural variants for specific trade data models, such as tariff schedules, country profiles, HS code matrices, etc.
3. `interface`: Standardization. Enforces strict memory and structural constraints on the domain models, also allow some of the common fields such as "name" to be shared.
4. `lowering`: Lowering to Ocaml. Packs the structured Rust arrays into a binary payload and passes them across the FFI bridge to the OCaml runtime, mapping Rust's primitives directly to OCaml-compatible structs.

### ocaml-ir
Unlike rust-ir, ocaml-ir focuses on semantics validation and matching to the expected types by /calc trade engine.

1. `deserializer`: Reading from FFI. Basically it reads the rust array binary to ocaml data types by linking with `external`. To prevent memory exhaustion, the data is converted to a lazy.t stream for `parser` to ingest.
2. `validator`: Syntactic analysis. Here we check for corruption in the data stream. It verifies data integrity, cross-references HS codes against tariff tables, and flags any structural corruption or logical contradictions.
3. `codegen`: Lowering to OCaml IR. This is where we write the raw array representation to the native Ocaml datatypes that store the array of data in an efficient manner.


### serializer
The serializer ocaml objects with `bin_prot` to pack hundreds of different Ocaml objects to one clean `.miku`. It is then shipped to /calc/lib/data for the trade engine.


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