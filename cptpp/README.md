<!--
 SPDX-License-Identifier: GPL-3.0-only
 Copyright (C) 2026 Nguyễn Hoàng An
-->

`cptpp` is a data integration gateway that takes tariff schedules, country profiles and HS code matrices, as .csv, .json, .xml, .xlsx and .pdf (structured, predefined in code). This is a classic *extract, transform, load pipeline*, with a serialization step to a binary blob .miku.

Similar to a classic extract, transform, load pipeline used by SAP GTS or Thompson Reuters ONESOURCE, it is expected that the user map the data column to the predefined name fields. For some specific file types such as New Zealand's CPTPP tariff schedules for countries, the program would do automated layout detection and no additional user input is needed.

The .miku is used by the `/calc` OCaml trade engine to perform CPTPP certificate of origin and compliance calculations, allow the entirety of the tariff schedules of all countries in CPTPP across many years to be loaded in RAM.

[modes are orthogonal to types and share the same standards? interesting.](https://www.youtube.com/watch?v=g3qd4zpm1LA)


## How to install

(add instruction on installing oxcaml, also caution that this uses 5.2.0+ox switch while calc MUST use the latest 5.4.1 OCaml switch)

Run `make setup` to create the OCaml switches and Rust dependencies. If you want to use `cptpp` as a global command for developer work instead of `./cptpp`, run `make install`.

* To get the marshaled version (`.miku`) for `/calc`, run:
```bash
cptpp one.csv two.json three.xlsx <more files...> -o output-file.miku
```

To get the tabular .csv for one of the files, run:
```bash
cptpp --emit-csv file-name -o output-file.csv
```

In technical terms, this is the intermediate representation (IR) of the program represented as arrays before being passed to the protocol buffer. This is a simple array, which is transformed into .csv.


## Technical documentation
**The rest of this README is about the internal working of `cptpp`.**

The *extract, transform, load pipeline* is strictly sequential and heavily used the experimental [OxCaml compiler](https://oxcaml.org/documentation/) by Jane Street to make use of the bit-packing . The result is the final, highly compressed "structure of arrays" generated at the end of the OCaml backend **without using OxCaml** since the features to read the data structures are upmerged to OCaml 5.4.

Typical data pipelines built in languages like Python or SQL are fragile. Because they handle data flexibly at runtime, a single unexpected format change from a trade partner—like a missing column or a typo in a tariff rate—can cause the entire system to crash silently or corrupt downstream reports.

Instead, by representing the data holistically as structured objects, we create a secure, centralized buffer zone. This approach completely eliminates the need to write separate, fragile cleanup scripts for every new country or file format (since we just need to add new variants or make a new Python script). If a trade partner changes their spreadsheet layout, the fix is made instantly in one central location. Precompiling the data to .miku confers many benefits, such as allowing complex trade modeling in the trade engine, preventing silent data corruption, simplifying developer work, no database query latency (because there is no database), and no internet access needed.

*For the technically minded, think of the M * N problem! M is all the different file format and nature of the data, and N is all of the expected efficient data structure to represent it in binary. By having one direct pipeline, we reduce this problem to M + N problem via modularity.*

Before the data is serialized to .miku, the data is an OCaml object. For the developer, if you want get the structured optimized representation of the data for individual testing, run:
```bash
cptpp --emit-ml file-name -o output-file.ml
```

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


## Acknowledgments & Third-Party Code

This folder contains code adapted from or based on [Min-Caml](https://github.com/esumii/min-caml), which is used under the terms of the BSD 3-Clause License. See the license below.

```
Copyright (c) 2005- Eijiro Sumii, Moe Masuko, and Kenichi Asai
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are
met:

 - Redistributions of source code must retain the above copyright
   notice, this list of conditions and the following disclaimer.

 - Redistributions in binary form must reproduce the above copyright
   notice, this list of conditions and the following disclaimer in the
   documentation and/or other materials provided with the
   distribution.

 - Neither the name of Information-Technology Promotion Agency, the
   name of University of Pennsylvania, the name of University of
   Tokyo, the name of Tohoku University, the name of Ochanomizu
   University, the name of Eijiro Sumii, the name of Moe Masuko, nor
   the name of Kenichi Asai may be used to endorse or promote products
   derived from this software without specific prior written
   permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
"AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
```
