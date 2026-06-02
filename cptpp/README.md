This directory holds the scripts used to clean data and JSON data files for the calculator. The /data folder is copied to the cptpp-calc when doing recursive checkout or when the software is released.

## How to run
Run the Makefile by `make`. DO NOT ATTEMPT TO RUN `scripts/parse.py`, IT WON'T WORK due to missing permissions.

## Parsing logic
* `./cptpp -E csv_cleaner.py harmonized-system.csv -o hs.csv`
* `./cptpp -emit-ml list_parser.py hs.csv -o hs.ml`
* `./cptpp -c csv_serializer.ml hs.ml -o hs_world_2022.bin`



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