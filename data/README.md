# cptpp-calculator/data
This directory holds the JSON data files for the CPTPP calculator.

## Data sources
* harmonized_system
** hs_world_2022.json: global Harmonized System framework published in 2022. Sourced from [github.com/datasets/harmonized-system](https://github.com/datasets)
** hs_vnm_2022.json: HS subcodes for Vietnam in 2022
** hs_mex_2022.json: HS subcodes for Mexico in 2022
* tariffs/cptpp
** mex: list of tariffs from Mexico
** vnm: list of tariffs from Vietnam

## Format notes

* For the harmonized system, files use the following format: hs_XXX_YYYY.json. XXX is 3-letter country codes, YYYY is year of publishing. 
* For tariffs, files use the following format: effective_YYYYMMDD.json. YYYYMMDD is the enforcement date. For each change in the tariffs, there is a complete matrix.
* metadata.json is used to add display name (VNM -> "Vietnam") and link files in a systematic way (in metadata.json, "effective_20250103.json" has attribute "date": "2025-01-03")