# cptpp-parser
This directory holds the scripts used to clean data and JSON data files for the [cptpp-calculator](https://github.com/nguyenhoangan-monkey/cptpp-calculator). The /data folder is copied to the cptpp-calculator when doing recursive checkout or when the software is released.

## Parsing logic
progress

## Data sources
**IMPORTANT: This section shows what kind of license is used. It has legal value.**

### Harmonized system

| Data File / Path | Description | Source | License / Terms of Use | Commercial Use? |
| --- | --- | --- | --- | --- |
| `harmonized_system/hs_world_2022.json` | Global HS Codes (2022) | [datasets/harmonized-system](https://github.com/datasets/harmonized-system) | [ODC Public Domain Dedication and Licence (PDDL)](http://opendatacommons.org/licenses/pddl/1-0/) | Yes |
| `harmonized_system/hs_vnm_2022.json` | Vietnam HS Subcodes (2022) | Vietnam Customs / Government Portal | Open Government Data (Verify local terms) | Yes |
| `harmonized_system/hs_mex_2022.json` | Mexico HS Subcodes (2022) | Government of Mexico (SIVIEX / SE) | Open Government Data (Verify local terms) | Yes |


### CPTPP Tariff Schedules

| Data File / Path | Country Schedule | Source | License / Terms of Use | Commercial Use? |
| --- | --- | --- | --- | --- |
| `tariffs/cptpp/mex/` | Mexico | Mexican Ministry of Economy | Official Public Schedule | Yes |
| `tariffs/cptpp/vnm/` | Vietnam | Vietnam Ministry of Industry & Trade | Official Public Schedule | Yes |

---

## Format notes

* For the harmonized system, files use the following format: hs_XXX_YYYY.json. XXX is 3-letter country codes, YYYY is year of publishing. 
* For tariffs, files use the following format: effective_YYYYMMDD.json. YYYYMMDD is the enforcement date. For each change in the tariffs, there is a complete matrix.
* metadata.json is used to add display name (VNM -> "Vietnam") and link files in a systematic way (in metadata.json, "effective_20250103.json" has attribute "date": "2025-01-03")