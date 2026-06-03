<!--
 SPDX-License-Identifier: GPL-3.0-only
 Copyright (C) 2026 Nguyễn Hoàng An
-->

<h1 align="center">
<img src="https://raw.githubusercontent.com/nguyenhoangan-monkey/cptpp-project/main/banner.jpg" width="750">
</h1>

Photo by [Carl Campbell](https://www.flickr.com/photos/carlbcampbell/40771198003/) (CC BY). Hatsune Miku © Crypton Future Media, Inc. 2007 (CC BY-NC)

----

**This calculator is for intuition/informational/education purposes, not for actual legal work. Please read the GPL-3.0 license before usage because it contains important legal information.**

The calculator uses the [official CPTPP text](https://www.mfat.govt.nz/en/trade/free-trade-agreements/free-trade-agreements-in-force/cptpp/comprehensive-and-progressive-agreement-for-trans-pacific-partnership-text-and-resources).

I am making an open-source software suite to help small businesses getting used to Comprehensive and Progressive Agreement for Trans-Pacific Partnership (CPTPP) procedures. 

I added extensive imagery of Hatsune Miku since adding cartoon characters to ease understanding of complex business procedures is a norm in Asian countries. These imageries are allowed for use, since Hatsune Miku is licensed under CC BY-NC license and this software is strictly used for non-commercial purposes.

If I have to say, the closest thing to this is the specialized CPTPP of these softwares:
- [Thompson Reuters ONESOURCE Free Trade Agreement Management](https://tax.thomsonreuters.com/en/onesource/global-trade-management/free-trade-agreement)
- [SAP Global Trade Services, Preference Management](https://www.sap.com/products/financial-management/global-trade-management.html)

## Data flowchart
```mermaid
%%{init: {
  'theme': 'base', 
  'themeVariables': {
    'background': '#CBFDFD',
    'primaryColor': '#CBFDFD',
    'primaryTextColor': '#111111',
    'lineColor': '#61D1DC',
    'edgeLabelBackground': '#ffffff',
    'subgraphBackground': '#CBFDFD',
    'subgraphBorderColor': '#61D1DC',
    'clusterBkg': '#CBFDFD',
    'clusterBorder': '#61D1DC',
    'nodeBorder': '#61D1DC'
  } 
}}%%
graph TD
    XLSX_Ingress ~~~ CSV_Ingress ~~~ JSON_Ingress
    XLSX_Ingress[.xlsx]
    CSV_Ingress[.csv]
    JSON_Ingress[.json]

    XLSX_Ingress --> Step_1([./cptpp -E py_script input -o output.csv])
    CSV_Ingress  --> Step_1
    JSON_Ingress --> Step_1
    
    Step_1 -->|cleaned .csv files| Step_2([./cptpp -emit-ml py_script input.csv -o output.ml])
    Step_2 -->|ocaml .ml IR| Step_3([./cptpp -c ocaml_exe input.ml -o output.bin])
    Step_3 -->|serialized ocaml objects .bin| Step_4([/calc/lib/data/])

    User ~~~ Payload ~~~ Override
    User[Bill of material from user] -->|parse .xlsx, .csv, .json| Processing([/calc/lib/parser/])
    Processing -->|Raw| Inter_Step1([.of_string in /calc/lib/domain/])
    Forminput[Form input] -->|Raw| Inter_Step1
    Payload[API, microservices] -->|Maybe| Inter_Step1
    Override[Saved session data,<br>unsafe override] -->|Ready| Inter_Step1

    Inter_Step1 -->|ocaml primitives| Inter_Step2([Tech_tree.make, Good.make, etc. in /calc/lib/domain/])
    Inter_Step2 -->|relational, trade primitives| Domain([eager evaluation of fetched types])

    Step_4 -->|copy tariffs, HS codes, etc. to /calc| Step_5[/calc/lib/engine/]
    Domain -->|explicit data relation| Step_5
    
    Step_5 --> Step_6A([further calculations])
    Step_6A --> Step_5
    Step_6A -->|stream output to developer| CLI_Product(((CLI output)))

    Step_5 --> Step_6B([/generator/pdf/])
    Step_6B -->|typst compile| PDF_Product(((PDF certificate<br>of origin)))

    Step_5 --> Step_6C([/generator/website])
    Step_6C -->|API response to user| Web_Product(((Interactive<br>website)))

    Step_5 --> Step_6D(microservice hooks)
    style Step_6D stroke-dasharray: 5 5
    Step_6D -->|marshal to XML| Pipeline((Feed back to<br>SAP, ONESOURCE))
    style Pipeline stroke-dasharray: 5 5

```
