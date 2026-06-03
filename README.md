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
        Data_Ingress[Government Data Release] -->|Initial Source Files| Step_1
        Step_1[./cptpp -E csv_cleaner.py] -->|hs.csv| Step_2[./cptpp -emit-ml list_parser.py]
        Step_2 -->|hs.ml| Step_3[./cptpp -c csv_serializer.ml]
        Step_3 -->|hs_world_2022.bin| Step_4[Copy / Move Data]

        Step_4 -->|calc/lib/data/| Step_5[Runtime Engine Ingestion]
        Domain[Domain Rules Definition] -->|calc/lib/domain/| Step_5
        Payload[User Input Ingestion] -->|User Payload| Step_5
        
        Step_5 -->|Control Flow Tree| Step_6[Tree Routing & Compliance Evaluation]
        Step_6 -->|Constraints Matrix| Step_7[Linear Boundary Knapsack Optimization]
        Step_7 -->|Raw Layout Data| Step_8[generator/pdf/Makefile]
        Fonts[Font Storage] -->|Static Link Assets| Step_8
        Template[Template Design] -->|Layout Architecture| Step_8
        
        Step_8 -->|typst compile| End_Product(((template.pdf)))
```
