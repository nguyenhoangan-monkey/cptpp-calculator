(**
 * SPDX-License-Identifier: GPL-3.0-only
 * Copyright (C) 2026 Nguyễn Hoàng An
 *)

(*
  THIS IS AUTO GENERATED FROM CPTPP
  data source: https://raw.githubusercontent.com/mledoze/countries/master/countries.json
*)

type t =
  | Afghanistan
  | Aland_Islands
  | Albania
  | Algeria
  | American_Samoa
  | Andorra
  | Angola
  | Anguilla
  | Antarctica
  | Antigua_And_Barbuda
  | Argentina
  | Armenia
  | Aruba
  | Australia
  | Austria
  | Azerbaijan
  | Bahamas
  | Bahrain
  | Bangladesh
  | Barbados
  | Belarus
  | Belgium
  | Belize
  | Benin
  | Bermuda
  | Bhutan
  | Bolivia
  | Bosnia_And_Herzegovina
  | Botswana
  | Bouvet_Island
  | Brazil
  | British_Indian_Ocean_Territory
  | British_Virgin_Islands
  | Brunei
  | Bulgaria
  | Burkina_Faso
  | Burundi
  | Cambodia
  | Cameroon
  | Canada
  | Cape_Verde
  | Caribbean_Netherlands
  | Cayman_Islands
  | Central_African_Republic
  | Chad
  | Chile
  | China
  | Christmas_Island
  | Cocos_Keeling_Islands
  | Colombia
  | Comoros
  | Congo
  | Cook_Islands
  | Costa_Rica
  | Croatia
  | Cuba
  | Curacao
  | Cyprus
  | Czechia
  | Democratic_Republic_Of_Congo
  | Denmark
  | Djibouti
  | Dominica
  | Dominican_Republic
  | Ecuador
  | Egypt
  | El_Salvador
  | Equatorial_Guinea
  | Eritrea
  | Estonia
  | Eswatini
  | Ethiopia
  | Falkland_Islands
  | Faroe_Islands
  | Fiji
  | Finland
  | France
  | French_Guiana
  | French_Polynesia
  | French_Southern_And_Antarctic_Lands
  | Gabon
  | Gambia
  | Georgia
  | Germany
  | Ghana
  | Gibraltar
  | Greece
  | Greenland
  | Grenada
  | Guadeloupe
  | Guam
  | Guatemala
  | Guernsey
  | Guinea
  | Guinea_Bissau
  | Guyana
  | Haiti
  | Heard_Island_And_Mcdonald_Islands
  | Honduras
  | Hong_Kong
  | Hungary
  | Iceland
  | India
  | Indonesia
  | Iran
  | Iraq
  | Ireland
  | Isle_Of_Man
  | Israel
  | Italy
  | Ivory_Coast
  | Jamaica
  | Japan
  | Jersey
  | Jordan
  | Kazakhstan
  | Kenya
  | Kiribati
  | Kosovo
  | Kuwait
  | Kyrgyzstan
  | Laos
  | Latvia
  | Lebanon
  | Lesotho
  | Liberia
  | Libya
  | Liechtenstein
  | Lithuania
  | Luxembourg
  | Macau
  | Madagascar
  | Malawi
  | Malaysia
  | Maldives
  | Mali
  | Malta
  | Marshall_Islands
  | Martinique
  | Mauritania
  | Mauritius
  | Mayotte
  | Mexico
  | Micronesia
  | Moldova
  | Monaco
  | Mongolia
  | Montenegro
  | Montserrat
  | Morocco
  | Mozambique
  | Myanmar
  | Namibia
  | Nauru
  | Nepal
  | Netherlands
  | New_Caledonia
  | New_Zealand
  | Nicaragua
  | Niger
  | Nigeria
  | Niue
  | Norfolk_Island
  | North_Korea
  | North_Macedonia
  | Northern_Mariana_Islands
  | Norway
  | Oman
  | Pakistan
  | Palau
  | Palestine
  | Panama
  | Papua_New_Guinea
  | Paraguay
  | Peru
  | Philippines
  | Pitcairn_Islands
  | Poland
  | Portugal
  | Puerto_Rico
  | Qatar
  | Reunion
  | Romania
  | Russia
  | Rwanda
  | Saint_Barthelemy
  | Saint_Helena_Ascension_And_Tristan_Da_Cunha
  | Saint_Kitts_And_Nevis
  | Saint_Lucia
  | Saint_Martin
  | Saint_Pierre_And_Miquelon
  | Saint_Vincent_And_The_Grenadines
  | Samoa
  | San_Marino
  | Sao_Tome_And_Principe
  | Saudi_Arabia
  | Senegal
  | Serbia
  | Seychelles
  | Sierra_Leone
  | Singapore
  | Sint_Maarten
  | Slovakia
  | Slovenia
  | Solomon_Islands
  | Somalia
  | South_Africa
  | South_Georgia
  | South_Korea
  | South_Sudan
  | Spain
  | Sri_Lanka
  | Sudan
  | Suriname
  | Svalbard_And_Jan_Mayen
  | Sweden
  | Switzerland
  | Syria
  | Taiwan
  | Tajikistan
  | Tanzania
  | Thailand
  | Timor_Leste
  | Togo
  | Tokelau
  | Tonga
  | Trinidad_And_Tobago
  | Tunisia
  | Turkiye
  | Turkmenistan
  | Turks_And_Caicos_Islands
  | Tuvalu
  | Uganda
  | Ukraine
  | United_Arab_Emirates
  | United_Kingdom
  | United_States
  | United_States_Minor_Outlying_Islands
  | United_States_Virgin_Islands
  | Uruguay
  | Uzbekistan
  | Vanuatu
  | Vatican_City
  | Venezuela
  | Vietnam
  | Wallis_And_Futuna
  | Western_Sahara
  | Yemen
  | Zambia
  | Zimbabwe


let to_iso_string = function
  | Afghanistan -> "AFG"
  | Aland_Islands -> "ALA"
  | Albania -> "ALB"
  | Algeria -> "DZA"
  | American_Samoa -> "ASM"
  | Andorra -> "AND"
  | Angola -> "AGO"
  | Anguilla -> "AIA"
  | Antarctica -> "ATA"
  | Antigua_And_Barbuda -> "ATG"
  | Argentina -> "ARG"
  | Armenia -> "ARM"
  | Aruba -> "ABW"
  | Australia -> "AUS"
  | Austria -> "AUT"
  | Azerbaijan -> "AZE"
  | Bahamas -> "BHS"
  | Bahrain -> "BHR"
  | Bangladesh -> "BGD"
  | Barbados -> "BRB"
  | Belarus -> "BLR"
  | Belgium -> "BEL"
  | Belize -> "BLZ"
  | Benin -> "BEN"
  | Bermuda -> "BMU"
  | Bhutan -> "BTN"
  | Bolivia -> "BOL"
  | Bosnia_And_Herzegovina -> "BIH"
  | Botswana -> "BWA"
  | Bouvet_Island -> "BVT"
  | Brazil -> "BRA"
  | British_Indian_Ocean_Territory -> "IOT"
  | British_Virgin_Islands -> "VGB"
  | Brunei -> "BRN"
  | Bulgaria -> "BGR"
  | Burkina_Faso -> "BFA"
  | Burundi -> "BDI"
  | Cambodia -> "KHM"
  | Cameroon -> "CMR"
  | Canada -> "CAN"
  | Cape_Verde -> "CPV"
  | Caribbean_Netherlands -> "BES"
  | Cayman_Islands -> "CYM"
  | Central_African_Republic -> "CAF"
  | Chad -> "TCD"
  | Chile -> "CHL"
  | China -> "CHN"
  | Christmas_Island -> "CXR"
  | Cocos_Keeling_Islands -> "CCK"
  | Colombia -> "COL"
  | Comoros -> "COM"
  | Congo -> "COG"
  | Cook_Islands -> "COK"
  | Costa_Rica -> "CRI"
  | Croatia -> "HRV"
  | Cuba -> "CUB"
  | Curacao -> "CUW"
  | Cyprus -> "CYP"
  | Czechia -> "CZE"
  | Democratic_Republic_Of_Congo -> "COD"
  | Denmark -> "DNK"
  | Djibouti -> "DJI"
  | Dominica -> "DMA"
  | Dominican_Republic -> "DOM"
  | Ecuador -> "ECU"
  | Egypt -> "EGY"
  | El_Salvador -> "SLV"
  | Equatorial_Guinea -> "GNQ"
  | Eritrea -> "ERI"
  | Estonia -> "EST"
  | Eswatini -> "SWZ"
  | Ethiopia -> "ETH"
  | Falkland_Islands -> "FLK"
  | Faroe_Islands -> "FRO"
  | Fiji -> "FJI"
  | Finland -> "FIN"
  | France -> "FRA"
  | French_Guiana -> "GUF"
  | French_Polynesia -> "PYF"
  | French_Southern_And_Antarctic_Lands -> "ATF"
  | Gabon -> "GAB"
  | Gambia -> "GMB"
  | Georgia -> "GEO"
  | Germany -> "DEU"
  | Ghana -> "GHA"
  | Gibraltar -> "GIB"
  | Greece -> "GRC"
  | Greenland -> "GRL"
  | Grenada -> "GRD"
  | Guadeloupe -> "GLP"
  | Guam -> "GUM"
  | Guatemala -> "GTM"
  | Guernsey -> "GGY"
  | Guinea -> "GIN"
  | Guinea_Bissau -> "GNB"
  | Guyana -> "GUY"
  | Haiti -> "HTI"
  | Heard_Island_And_Mcdonald_Islands -> "HMD"
  | Honduras -> "HND"
  | Hong_Kong -> "HKG"
  | Hungary -> "HUN"
  | Iceland -> "ISL"
  | India -> "IND"
  | Indonesia -> "IDN"
  | Iran -> "IRN"
  | Iraq -> "IRQ"
  | Ireland -> "IRL"
  | Isle_Of_Man -> "IMN"
  | Israel -> "ISR"
  | Italy -> "ITA"
  | Ivory_Coast -> "CIV"
  | Jamaica -> "JAM"
  | Japan -> "JPN"
  | Jersey -> "JEY"
  | Jordan -> "JOR"
  | Kazakhstan -> "KAZ"
  | Kenya -> "KEN"
  | Kiribati -> "KIR"
  | Kosovo -> "UNK"
  | Kuwait -> "KWT"
  | Kyrgyzstan -> "KGZ"
  | Laos -> "LAO"
  | Latvia -> "LVA"
  | Lebanon -> "LBN"
  | Lesotho -> "LSO"
  | Liberia -> "LBR"
  | Libya -> "LBY"
  | Liechtenstein -> "LIE"
  | Lithuania -> "LTU"
  | Luxembourg -> "LUX"
  | Macau -> "MAC"
  | Madagascar -> "MDG"
  | Malawi -> "MWI"
  | Malaysia -> "MYS"
  | Maldives -> "MDV"
  | Mali -> "MLI"
  | Malta -> "MLT"
  | Marshall_Islands -> "MHL"
  | Martinique -> "MTQ"
  | Mauritania -> "MRT"
  | Mauritius -> "MUS"
  | Mayotte -> "MYT"
  | Mexico -> "MEX"
  | Micronesia -> "FSM"
  | Moldova -> "MDA"
  | Monaco -> "MCO"
  | Mongolia -> "MNG"
  | Montenegro -> "MNE"
  | Montserrat -> "MSR"
  | Morocco -> "MAR"
  | Mozambique -> "MOZ"
  | Myanmar -> "MMR"
  | Namibia -> "NAM"
  | Nauru -> "NRU"
  | Nepal -> "NPL"
  | Netherlands -> "NLD"
  | New_Caledonia -> "NCL"
  | New_Zealand -> "NZL"
  | Nicaragua -> "NIC"
  | Niger -> "NER"
  | Nigeria -> "NGA"
  | Niue -> "NIU"
  | Norfolk_Island -> "NFK"
  | North_Korea -> "PRK"
  | North_Macedonia -> "MKD"
  | Northern_Mariana_Islands -> "MNP"
  | Norway -> "NOR"
  | Oman -> "OMN"
  | Pakistan -> "PAK"
  | Palau -> "PLW"
  | Palestine -> "PSE"
  | Panama -> "PAN"
  | Papua_New_Guinea -> "PNG"
  | Paraguay -> "PRY"
  | Peru -> "PER"
  | Philippines -> "PHL"
  | Pitcairn_Islands -> "PCN"
  | Poland -> "POL"
  | Portugal -> "PRT"
  | Puerto_Rico -> "PRI"
  | Qatar -> "QAT"
  | Reunion -> "REU"
  | Romania -> "ROU"
  | Russia -> "RUS"
  | Rwanda -> "RWA"
  | Saint_Barthelemy -> "BLM"
  | Saint_Helena_Ascension_And_Tristan_Da_Cunha -> "SHN"
  | Saint_Kitts_And_Nevis -> "KNA"
  | Saint_Lucia -> "LCA"
  | Saint_Martin -> "MAF"
  | Saint_Pierre_And_Miquelon -> "SPM"
  | Saint_Vincent_And_The_Grenadines -> "VCT"
  | Samoa -> "WSM"
  | San_Marino -> "SMR"
  | Sao_Tome_And_Principe -> "STP"
  | Saudi_Arabia -> "SAU"
  | Senegal -> "SEN"
  | Serbia -> "SRB"
  | Seychelles -> "SYC"
  | Sierra_Leone -> "SLE"
  | Singapore -> "SGP"
  | Sint_Maarten -> "SXM"
  | Slovakia -> "SVK"
  | Slovenia -> "SVN"
  | Solomon_Islands -> "SLB"
  | Somalia -> "SOM"
  | South_Africa -> "ZAF"
  | South_Georgia -> "SGS"
  | South_Korea -> "KOR"
  | South_Sudan -> "SSD"
  | Spain -> "ESP"
  | Sri_Lanka -> "LKA"
  | Sudan -> "SDN"
  | Suriname -> "SUR"
  | Svalbard_And_Jan_Mayen -> "SJM"
  | Sweden -> "SWE"
  | Switzerland -> "CHE"
  | Syria -> "SYR"
  | Taiwan -> "TWN"
  | Tajikistan -> "TJK"
  | Tanzania -> "TZA"
  | Thailand -> "THA"
  | Timor_Leste -> "TLS"
  | Togo -> "TGO"
  | Tokelau -> "TKL"
  | Tonga -> "TON"
  | Trinidad_And_Tobago -> "TTO"
  | Tunisia -> "TUN"
  | Turkiye -> "TUR"
  | Turkmenistan -> "TKM"
  | Turks_And_Caicos_Islands -> "TCA"
  | Tuvalu -> "TUV"
  | Uganda -> "UGA"
  | Ukraine -> "UKR"
  | United_Arab_Emirates -> "ARE"
  | United_Kingdom -> "GBR"
  | United_States -> "USA"
  | United_States_Minor_Outlying_Islands -> "UMI"
  | United_States_Virgin_Islands -> "VIR"
  | Uruguay -> "URY"
  | Uzbekistan -> "UZB"
  | Vanuatu -> "VUT"
  | Vatican_City -> "VAT"
  | Venezuela -> "VEN"
  | Vietnam -> "VNM"
  | Wallis_And_Futuna -> "WLF"
  | Western_Sahara -> "ESH"
  | Yemen -> "YEM"
  | Zambia -> "ZMB"
  | Zimbabwe -> "ZWE"


let to_string = function
  | Afghanistan -> "Afghanistan"
  | Aland_Islands -> "Åland Islands"
  | Albania -> "Albania"
  | Algeria -> "Algeria"
  | American_Samoa -> "American Samoa"
  | Andorra -> "Andorra"
  | Angola -> "Angola"
  | Anguilla -> "Anguilla"
  | Antarctica -> "Antarctica"
  | Antigua_And_Barbuda -> "Antigua and Barbuda"
  | Argentina -> "Argentina"
  | Armenia -> "Armenia"
  | Aruba -> "Aruba"
  | Australia -> "Australia"
  | Austria -> "Austria"
  | Azerbaijan -> "Azerbaijan"
  | Bahamas -> "Bahamas"
  | Bahrain -> "Bahrain"
  | Bangladesh -> "Bangladesh"
  | Barbados -> "Barbados"
  | Belarus -> "Belarus"
  | Belgium -> "Belgium"
  | Belize -> "Belize"
  | Benin -> "Benin"
  | Bermuda -> "Bermuda"
  | Bhutan -> "Bhutan"
  | Bolivia -> "Bolivia"
  | Bosnia_And_Herzegovina -> "Bosnia and Herzegovina"
  | Botswana -> "Botswana"
  | Bouvet_Island -> "Bouvet Island"
  | Brazil -> "Brazil"
  | British_Indian_Ocean_Territory -> "British Indian Ocean Territory"
  | British_Virgin_Islands -> "British Virgin Islands"
  | Brunei -> "Brunei"
  | Bulgaria -> "Bulgaria"
  | Burkina_Faso -> "Burkina Faso"
  | Burundi -> "Burundi"
  | Cambodia -> "Cambodia"
  | Cameroon -> "Cameroon"
  | Canada -> "Canada"
  | Cape_Verde -> "Cape Verde"
  | Caribbean_Netherlands -> "Caribbean Netherlands"
  | Cayman_Islands -> "Cayman Islands"
  | Central_African_Republic -> "Central African Republic"
  | Chad -> "Chad"
  | Chile -> "Chile"
  | China -> "China"
  | Christmas_Island -> "Christmas Island"
  | Cocos_Keeling_Islands -> "Cocos (Keeling) Islands"
  | Colombia -> "Colombia"
  | Comoros -> "Comoros"
  | Congo -> "Congo"
  | Cook_Islands -> "Cook Islands"
  | Costa_Rica -> "Costa Rica"
  | Croatia -> "Croatia"
  | Cuba -> "Cuba"
  | Curacao -> "Curaçao"
  | Cyprus -> "Cyprus"
  | Czechia -> "Czechia"
  | Democratic_Republic_Of_Congo -> "DR Congo"
  | Denmark -> "Denmark"
  | Djibouti -> "Djibouti"
  | Dominica -> "Dominica"
  | Dominican_Republic -> "Dominican Republic"
  | Ecuador -> "Ecuador"
  | Egypt -> "Egypt"
  | El_Salvador -> "El Salvador"
  | Equatorial_Guinea -> "Equatorial Guinea"
  | Eritrea -> "Eritrea"
  | Estonia -> "Estonia"
  | Eswatini -> "Eswatini"
  | Ethiopia -> "Ethiopia"
  | Falkland_Islands -> "Falkland Islands"
  | Faroe_Islands -> "Faroe Islands"
  | Fiji -> "Fiji"
  | Finland -> "Finland"
  | France -> "France"
  | French_Guiana -> "French Guiana"
  | French_Polynesia -> "French Polynesia"
  | French_Southern_And_Antarctic_Lands -> "French Southern and Antarctic Lands"
  | Gabon -> "Gabon"
  | Gambia -> "Gambia"
  | Georgia -> "Georgia"
  | Germany -> "Germany"
  | Ghana -> "Ghana"
  | Gibraltar -> "Gibraltar"
  | Greece -> "Greece"
  | Greenland -> "Greenland"
  | Grenada -> "Grenada"
  | Guadeloupe -> "Guadeloupe"
  | Guam -> "Guam"
  | Guatemala -> "Guatemala"
  | Guernsey -> "Guernsey"
  | Guinea -> "Guinea"
  | Guinea_Bissau -> "Guinea-Bissau"
  | Guyana -> "Guyana"
  | Haiti -> "Haiti"
  | Heard_Island_And_Mcdonald_Islands -> "Heard Island and McDonald Islands"
  | Honduras -> "Honduras"
  | Hong_Kong -> "Hong Kong"
  | Hungary -> "Hungary"
  | Iceland -> "Iceland"
  | India -> "India"
  | Indonesia -> "Indonesia"
  | Iran -> "Iran"
  | Iraq -> "Iraq"
  | Ireland -> "Ireland"
  | Isle_Of_Man -> "Isle of Man"
  | Israel -> "Israel"
  | Italy -> "Italy"
  | Ivory_Coast -> "Ivory Coast"
  | Jamaica -> "Jamaica"
  | Japan -> "Japan"
  | Jersey -> "Jersey"
  | Jordan -> "Jordan"
  | Kazakhstan -> "Kazakhstan"
  | Kenya -> "Kenya"
  | Kiribati -> "Kiribati"
  | Kosovo -> "Kosovo"
  | Kuwait -> "Kuwait"
  | Kyrgyzstan -> "Kyrgyzstan"
  | Laos -> "Laos"
  | Latvia -> "Latvia"
  | Lebanon -> "Lebanon"
  | Lesotho -> "Lesotho"
  | Liberia -> "Liberia"
  | Libya -> "Libya"
  | Liechtenstein -> "Liechtenstein"
  | Lithuania -> "Lithuania"
  | Luxembourg -> "Luxembourg"
  | Macau -> "Macau"
  | Madagascar -> "Madagascar"
  | Malawi -> "Malawi"
  | Malaysia -> "Malaysia"
  | Maldives -> "Maldives"
  | Mali -> "Mali"
  | Malta -> "Malta"
  | Marshall_Islands -> "Marshall Islands"
  | Martinique -> "Martinique"
  | Mauritania -> "Mauritania"
  | Mauritius -> "Mauritius"
  | Mayotte -> "Mayotte"
  | Mexico -> "Mexico"
  | Micronesia -> "Micronesia"
  | Moldova -> "Moldova"
  | Monaco -> "Monaco"
  | Mongolia -> "Mongolia"
  | Montenegro -> "Montenegro"
  | Montserrat -> "Montserrat"
  | Morocco -> "Morocco"
  | Mozambique -> "Mozambique"
  | Myanmar -> "Myanmar"
  | Namibia -> "Namibia"
  | Nauru -> "Nauru"
  | Nepal -> "Nepal"
  | Netherlands -> "Netherlands"
  | New_Caledonia -> "New Caledonia"
  | New_Zealand -> "New Zealand"
  | Nicaragua -> "Nicaragua"
  | Niger -> "Niger"
  | Nigeria -> "Nigeria"
  | Niue -> "Niue"
  | Norfolk_Island -> "Norfolk Island"
  | North_Korea -> "North Korea"
  | North_Macedonia -> "North Macedonia"
  | Northern_Mariana_Islands -> "Northern Mariana Islands"
  | Norway -> "Norway"
  | Oman -> "Oman"
  | Pakistan -> "Pakistan"
  | Palau -> "Palau"
  | Palestine -> "Palestine"
  | Panama -> "Panama"
  | Papua_New_Guinea -> "Papua New Guinea"
  | Paraguay -> "Paraguay"
  | Peru -> "Peru"
  | Philippines -> "Philippines"
  | Pitcairn_Islands -> "Pitcairn Islands"
  | Poland -> "Poland"
  | Portugal -> "Portugal"
  | Puerto_Rico -> "Puerto Rico"
  | Qatar -> "Qatar"
  | Reunion -> "Réunion"
  | Romania -> "Romania"
  | Russia -> "Russia"
  | Rwanda -> "Rwanda"
  | Saint_Barthelemy -> "Saint Barthélemy"
  | Saint_Helena_Ascension_And_Tristan_Da_Cunha -> "Saint Helena, Ascension and Tristan da Cunha"
  | Saint_Kitts_And_Nevis -> "Saint Kitts and Nevis"
  | Saint_Lucia -> "Saint Lucia"
  | Saint_Martin -> "Saint Martin"
  | Saint_Pierre_And_Miquelon -> "Saint Pierre and Miquelon"
  | Saint_Vincent_And_The_Grenadines -> "Saint Vincent and the Grenadines"
  | Samoa -> "Samoa"
  | San_Marino -> "San Marino"
  | Sao_Tome_And_Principe -> "São Tomé and Príncipe"
  | Saudi_Arabia -> "Saudi Arabia"
  | Senegal -> "Senegal"
  | Serbia -> "Serbia"
  | Seychelles -> "Seychelles"
  | Sierra_Leone -> "Sierra Leone"
  | Singapore -> "Singapore"
  | Sint_Maarten -> "Sint Maarten"
  | Slovakia -> "Slovakia"
  | Slovenia -> "Slovenia"
  | Solomon_Islands -> "Solomon Islands"
  | Somalia -> "Somalia"
  | South_Africa -> "South Africa"
  | South_Georgia -> "South Georgia"
  | South_Korea -> "South Korea"
  | South_Sudan -> "South Sudan"
  | Spain -> "Spain"
  | Sri_Lanka -> "Sri Lanka"
  | Sudan -> "Sudan"
  | Suriname -> "Suriname"
  | Svalbard_And_Jan_Mayen -> "Svalbard and Jan Mayen"
  | Sweden -> "Sweden"
  | Switzerland -> "Switzerland"
  | Syria -> "Syria"
  | Taiwan -> "Taiwan"
  | Tajikistan -> "Tajikistan"
  | Tanzania -> "Tanzania"
  | Thailand -> "Thailand"
  | Timor_Leste -> "Timor-Leste"
  | Togo -> "Togo"
  | Tokelau -> "Tokelau"
  | Tonga -> "Tonga"
  | Trinidad_And_Tobago -> "Trinidad and Tobago"
  | Tunisia -> "Tunisia"
  | Turkiye -> "Türkiye"
  | Turkmenistan -> "Turkmenistan"
  | Turks_And_Caicos_Islands -> "Turks and Caicos Islands"
  | Tuvalu -> "Tuvalu"
  | Uganda -> "Uganda"
  | Ukraine -> "Ukraine"
  | United_Arab_Emirates -> "United Arab Emirates"
  | United_Kingdom -> "United Kingdom"
  | United_States -> "United States"
  | United_States_Minor_Outlying_Islands -> "United States Minor Outlying Islands"
  | United_States_Virgin_Islands -> "United States Virgin Islands"
  | Uruguay -> "Uruguay"
  | Uzbekistan -> "Uzbekistan"
  | Vanuatu -> "Vanuatu"
  | Vatican_City -> "Vatican City"
  | Venezuela -> "Venezuela"
  | Vietnam -> "Vietnam"
  | Wallis_And_Futuna -> "Wallis and Futuna"
  | Western_Sahara -> "Western Sahara"
  | Yemen -> "Yemen"
  | Zambia -> "Zambia"
  | Zimbabwe -> "Zimbabwe"


let of_string_base = function
  | "Afeganistão" | "Afganistan İslam Cumhuriyeti" | "Afganistan" | "Afganistani Islamivabariik" | "Afganistanin islamilainen tasavalta" | "Afganistán" | "Afganisztán" | "Afganisztáni Iszlám Köztársaság" | "Afghanistan" | "Afghánistán" | "Afghánská islámská republika" | "Afgánsky islamský štát" | "Afġānistān" | "Avganistan" | "Islamische Republik Afghanistan" | "Islamiska republiken Afghanistan" | "Islamitische Republiek Afghanistan" | "Islamska Republika Afganistan" | "Islamska Republika Afganistanu" | "Islamska Republika Avganistan" | "Owganystan Yslam Respublikasy" | "Owganystan" | "Repubblica islamica dell'Afghanistan" | "Republik Islamek Afghanistan" | "República Islámica de Afganistán" | "República Islâmica do Afeganistão" | "République islamique d'Afghanistan" | "Афганистан" | "Исламская Республика Афганистан" | "أفغانستان" | "اسلامی جمہوریہ افغانستان" | "افغانستان" | "جمهورية أففانستان الإسلامية" | "جمهوری اسلامی افغانستان" | "د افغانستان اسلامي جمهوریت" | "アフガニスタン" | "アフガニスタン・イスラム共和国" | "阿富汗" | "阿富汗伊斯兰共和国" | "아프가니스탄 이슬람 공화국" | "아프가니스탄" -> Some Afghanistan
  | "Aaland" | "Ahvenamaa maakond" | "Ahvenamaa" | "Ahvenanmaa" | "Ahvenanmaan maakunta" | "Aland Islands" | "Aland" | "Alandia" | "Alandské ostrovy" | "Alandy" | "Alândia" | "Ilhas Åland" | "Inizi Åland" | "Islas Åland" | "Isole Aland" | "Isole Åland" | "Landskapet Åland" | "Olandska Ostrva" | "Wyspy Alandzkie" | "Åland Adaları" | "Åland Islands" | "Åland eilanden" | "Åland" | "Åland-Inseln" | "Åland-szigetek" | "Ålandeilanden" | "Ålandski otoci" | "Ålandské ostrovy" | "Ålandy" | "Аландские острова" | "جزائر اولند" | "جزایر الند" | "جزر أولاند" | "オーランド" | "オーランド諸島" | "奥兰群岛" | "올란드 제도" -> Some Aland_Islands
  | "Albaania Vabariik" | "Albaania" | "Albania" | "Albanian tasavalta" | "Albanie" | "Albanien" | "Albanija" | "Albanië" | "Albán Köztársaság" | "Albánia" | "Albánie" | "Albánska republika" | "Albánsko" | "Albánská republika" | "Albânia" | "Arnavutluk Cumhuriyeti" | "Arnavutluk" | "Repubblica d'Albania" | "Republiek Albanië" | "Republik Albania" | "Republik Albanien" | "Republika Albanii" | "Republika Albanija" | "Republika e Shqipërisë" | "Republiken Albanien" | "República da Albânia" | "República de Albania" | "République d'Albanie" | "Shqipnia" | "Shqipëri" | "Shqipëria" | "Албания" | "Республика Албания" | "آلبانی" | "ألبانيا" | "البانیا" | "جمهورية ألبانيا" | "جمهوری آلبانی" | "جمہوریہ البانیا" | "アルバニア" | "アルバニア共和国" | "阿尔巴尼亚" | "阿尔巴尼亚共和国" | "알바니아 공화국" | "알바니아" -> Some Albania
  | "Algeria" | "Algerian demokraattinen kansantasavalta" | "Algerien" | "Algeriet" | "Algerije" | "Algieria" | "Algierska Republika Ludowo-Demokratyczna" | "Algéria" | "Algériai Népi Demokratikus Köztársaság" | "Algérie" | "Aljeria" | "Alžeeria Demokraatlik Rahvavabariik" | "Alžeeria" | "Alžir" | "Alžírska demokratická ľudová republika" | "Alžírsko" | "Alžírská demokratická a lidová republika" | "Argelia" | "Argélia" | "Cezayir Demokratik Halk Cumhuriyeti" | "Cezayir" | "Democratische Volksrepubliek Algerije" | "Demokratische Volksrepublik Algerien" | "Demokratiska folkrepubliken Algeriet" | "Dzayer" | "Narodna Demokratska Republika Alžir" | "Repubblica popolare democratica di Algeria" | "Republik Aljerian Demokratel ha Poblel" | "República Argelina Democrática e Popular" | "República Argelina Democrática y Popular" | "République démocratique et populaire d'Algérie" | "Алжир" | "Народно-Демократическая Республика Алжир" | "الجزائر" | "الجزایر" | "الجمهورية الديمقراطية الشعبية الجزائرية" | "جمهوری دموکراتیک خلق الجزایر" | "عوامی جمہوری جمہوریہ الجزائر" | "アルジェリア" | "アルジェリア人民民主共和国" | "阿尔及利亚" | "阿尔及利亚人民民主共和国" | "알제리 인민 민주 공화국" | "알제리" -> Some Algeria
  | "Ameerika Samoa" | "Amelika Sāmoa" | "American Samoa" | "Americká Samoa" | "Amerika Sāmoa" | "Amerikaans Samoa" | "Amerikan Samoa" | "Amerikan Samoası" | "Amerikanisch-Samoa" | "Amerikanska Samoa" | "Američka Samoa" | "Samoa Americana" | "Samoa Americane" | "Samoa Amerikan" | "Samoa Amerykańskie" | "Samoa americana" | "Samoa americane" | "Samoa américaines" | "Sāmoa Amelika" | "američka Samoa" | "Американское Самоа" | "американское Самоа" | "امریکی سمووا" | "ساموآی آمریکا" | "ساموا الأمريكية" | "アメリカ領サモア" | "米領サモア" | "美属萨摩亚" | "아메리칸사모아" -> Some American_Samoa
  | "Andora" | "Andorra Prensliği" | "Andorra Vürstiriik" | "Andorra" | "Andorran ruhtinaskunta" | "Andorre" | "Andorrské kniežatstvo" | "Andorrské knížectví" | "Furstendömet Andorra" | "Fürstentum Andorra" | "Kneževina Andora" | "Księstwo Andory" | "Principado de Andorra" | "Principality of Andorra" | "Principat d'Andorra" | "Principato di Andorra" | "Principauté d'Andorre" | "Prinsdom Andorra" | "Priñselezh Andorra" | "Андорра" | "Княжество Андорра" | "آندورا" | "أندورا" | "إمارة أندورا" | "اماراتِ انڈورا" | "انڈورا" | "شاهزاده‌نشین آندورا" | "アンドラ" | "アンドラ公国" | "安道尔" | "安道尔公国" | "안도라 공국" | "안도라" -> Some Andorra
  | "Angola Cumhuriyeti" | "Angola Vabariik" | "Angola" | "Angolan tasavalta" | "Angolská republika" | "Repubblica dell'Angola" | "Republiek Angola" | "Republik Angola" | "Republika Angola" | "Republika Angoli" | "Republiken Angola" | "República de Angola" | "République d'Angola" | "ʁɛpublika de an'ɡɔla" | "Ангола" | "Республика Ангола" | "آنگولا" | "أنغولا" | "انگولہ" | "جمهورية أنغولا" | "جمهوری آنگولا" | "جمہوریہ انگولہ" | "アンゴラ" | "アンゴラ共和国" | "安哥拉" | "安哥拉共和国" | "앙골라 공화국" | "앙골라" -> Some Angola
  | "Anguila" | "Anguilla" | "Angvila" | "Ангилья" | "آنگویلا" | "أنغويلا" | "اینگویلا" | "アンギラ" | "安圭拉" | "앵귈라" -> Some Anguilla
  | "Antarctica" | "Antarctique" | "Antarktida" | "Antarktik" | "Antarktika" | "Antarktis" | "Antarktisz" | "Antarktyka" | "Antarktída" | "Antartide" | "Antártica" | "Antártida" | "Etelämanner" | "Антарктида" | "أنتارتيكا" | "انٹارکٹکا" | "جنوبگان" | "南极洲" | "南極" | "南極大陸" | "남극" -> Some Antarctica
  | "Antigua -et-Barbuda" | "Antigua a Barbuda" | "Antigua and Barbuda" | "Antigua e Barbuda" | "Antigua en Barbuda" | "Antigua ha Barbuda" | "Antigua i Barbuda" | "Antigua ja Barbuda" | "Antigua och Barbuda" | "Antigua und Barbuda" | "Antigua ve Barbuda" | "Antigua y Barbuda" | "Antigua és Barbuda" | "Antigua-et-Barbuda" | "Antigva i Barbuda" | "Antígua e Barbuda" | "Антигуа и Барбуда" | "آنتیگوا و باربودا" | "أنتيغوا وباربودا" | "اینٹیگوا و باربوڈا" | "アンティグア・バーブーダ" | "安提瓜和巴布达" | "앤티가 바부다" -> Some Antigua_And_Barbuda
  | "Arc'hantina" | "Argentiina" | "Argentiinan tasavalta" | "Argentijnse Republiek" | "Argentin Köztársaság" | "Argentina Vabariik" | "Argentina" | "Argentine Republic" | "Argentine" | "Argentinien" | "Argentinische Republik" | "Argentinië" | "Argentinski Republika" | "Argentinská republika" | "Argentyna" | "Argentína" | "Argentínska republika" | "Arjantin Cumhuriyeti" | "Arjantin" | "Repubblica Argentina" | "Republik Arc'hantina" | "Republika Argentina" | "Republika Argentyńska" | "Republiken Argentina" | "República Argentina" | "République argentine" | "Аргентина" | "Аргентинская Республика" | "آرژانتین" | "ارجنٹائن" | "الأرجنتين" | "جمهورية الأرجنتين" | "جمهوری آرژانتین" | "جمہوریہ ارجنٹائن" | "アルゼンチン" | "アルゼンチン共和国" | "阿根廷" | "阿根廷共和国" | "아르헨티나 공화국" | "아르헨티나" -> Some Argentina
  | "Armeenia Vabariik" | "Armeenia" | "Armenia" | "Armenian tasavalta" | "Armenien" | "Armenija" | "Armenië" | "Arménia" | "Arménie" | "Arménska republika" | "Arménsko" | "Arménská republika" | "Ermenistan Cumhuriyeti" | "Ermenistan" | "Hayastan" | "Jermenija" | "Repubblica di Armenia" | "Republic of Armenia" | "Republiek Armenië" | "Republik Armenia" | "Republik Armenien" | "Republika Armenii" | "Republika Armenija" | "Republika Jermenija" | "Republiken Armenien" | "República da Arménia" | "República de Armenia" | "République d'Arménie" | "Örményország" | "Армения" | "Республика Армения" | "Հայաստան" | "Հայաստանի Հանրապետություն" | "آرمینیا" | "أرمينيا" | "ارمنستان" | "جمهورية أرمينيا" | "جمهوری ارمنستان" | "جمہوریہ آرمینیا" | "アルメニア" | "アルメニア共和国" | "亚美尼亚" | "亚美尼亚共和国" | "아르메니아 공화국" | "아르메니아" -> Some Armenia
  | "Aruba" | "Аруба" | "آروبا" | "أروبا" | "اروبا" | "アルバ" | "阿鲁巴" | "아루바" -> Some Aruba
  | "Aostralia" | "Austraalia Ühendus" | "Austraalia" | "Australia" | "Australian liittovaltio" | "Australie" | "Australien" | "Australija" | "Australiska statsförbundet" | "Australië" | "Australské společenství" | "Austrália" | "Austrálie" | "Austrálsky zväz" | "Ausztrál Államszövetség" | "Ausztrália" | "Avustralya Federal Devleti" | "Avustralya" | "Commonwealth Australien" | "Commonwealth dell'Australia" | "Commonwealth of Australia" | "Comunidade da Austrália" | "Gemenebest van Australië" | "Kenglad Aostralia" | "Komonvelt Australija" | "Mancomunidad de Australia" | "Związek Australijski" | "Австралия" | "Содружество Австралии" | "آسٹریلیا" | "أستراليا" | "استرالیا" | "دولتِ مشترکہ آسٹریلیا" | "قلمرو همسود استرالیا" | "كومونولث أستراليا" | "オーストラリア" | "オーストラリア連邦" | "澳大利亚" | "澳大利亚联邦" | "오스트레일리아 연방" | "호주" -> Some Australia
  | "Aostria" | "Austria Vabariik" | "Austria" | "Austrija" | "Ausztria" | "Autriche" | "Avusturya Cumhuriyeti" | "Avusturya" | "Itävallan tasavalta" | "Itävalta" | "Oesterreich" | "Oostenrijk" | "Osterreich" | "Rakousko" | "Rakouská republika" | "Rakúska republika" | "Rakúsko" | "Repubblica d'Austria" | "Republiek Oostenrijk" | "Republik Aostria" | "Republik Österreich" | "Republika Austrii" | "Republika Austrija" | "Republiken Österrike" | "República da Áustria" | "República de Austria" | "République d'Autriche" | "Áustria" | "Österreich" | "Österrike" | "Австрийская Республика" | "Австрия" | "آسٹریا" | "اتریش" | "النمسا" | "جمهورية النمسا" | "جمهوری اتریش" | "جمہوریہ آسٹریا" | "オーストリア" | "オーストリア共和国" | "奥地利" | "奥地利共和国" | "오스트리아 공화국" | "오스트리아" -> Some Austria
  | "Aserbaidschan" | "Aserbaidžaan" | "Aserbaidžaani Vabariik" | "Azerbaidjan" | "Azerbaidzan" | "Azerbaidzanin tasavalta" | "Azerbaijan" | "Azerbaiyán" | "Azerbajdzjan" | "Azerbajdzsán" | "Azerbajdžan" | "Azerbajǆanská republika" | "AzerbajǇan" | "Azerbaycan Cumhuriyeti" | "Azerbaycan" | "Azerbaïdjan" | "Azerbeidzjan" | "Azerbeijão" | "Azerbejdżan" | "Azerbejdžan" | "Azərbaycan Respublikası" | "Azərbaycan" | "Repubblica dell'Azerbaigian" | "Republic of Azerbaijan" | "Republiek Azerbeidzjan" | "Republik Aserbaidschan" | "Republik Azerbaidjan" | "Republika Azerbajdžan" | "Republika Azerbejdżanu" | "Republika Azerbejdžan" | "Republiken Azerbajdzjan" | "República de Azerbaiyán" | "República do Azerbaijão" | "République d'Azerbaïdjan" | "Ázerbájdžán" | "Ázerbájdžánská republika" | "Азербайджан" | "Азербайджанская Республика" | "آذربائیجان" | "أذربيجان" | "جمهورية أذربيجان" | "جمهوری آذربایجان" | "جمہوریہ آذربائیجان" | "アゼルバイジャン" | "アゼルバイジャン共和国" | "阿塞拜疆" | "阿塞拜疆共和国" | "아제르바이잔 공화국" | "아제르바이잔" -> Some Azerbaijan
  | "Bahama Milletler Topluluğu" | "Bahama Ühendus" | "Bahama" | "Bahama-szigetek" | "Bahamai Közösség" | "Bahamalar" | "Bahaman liittovaltio" | "Bahamas" | "Bahamasaaret" | "Bahama’s" | "Bahami" | "Bahamské společenství" | "Bahamské spoločenstvo" | "Bahamy" | "Commonwealth de las Bahamas" | "Commonwealth delle Bahamas" | "Commonwealth der Bahamas" | "Commonwealth des Bahamas" | "Commonwealth of the Bahamas" | "Comunidade das Bahamas" | "Gemenebest van de Bahama's" | "Kenglad ar Bahamas" | "Komonvelt Bahama" | "Samväldet Bahamas" | "Zajednica Bahama" | "Багамские Острова" | "Содружество Багамских Островов" | "البهاما" | "باهاما" | "بہاماس" | "دولتِ مشترکہ بہاماس" | "قلمرو همسود باهاما" | "كومنولث جزر البهاما" | "バハマ" | "バハマ国" | "巴哈马" | "巴哈马联邦" | "바하마 연방" | "바하마" -> Some Bahamas
  | "Bahrain" | "Bahrainin kuningaskunta" | "Bahrajn" | "Bahrajnské kráľovstvo" | "Bahrein" | "Bahreini Királyság" | "Bahreini Kuningriik" | "Bahreyn Krallığı" | "Bahreyn" | "Bahreïn" | "Kingdom of Bahrain" | "Koninkrijk Bahrein" | "Konungariket Bahrain" | "Kraljevina Bahrein" | "Království Bahrajn" | "Królestwo Bahrajnu" | "Königreich Bahrain" | "Mamlakat al-Baḥrayn" | "Regno del Bahrain" | "Reino de Bahrein" | "Reino do Bahrein" | "Rouantelezh Bahrein" | "Royaume de Bahreïn" | "Бахрейн" | "Королевство Бахрейн" | "البحرين" | "بحرین" | "مملكة البحرين" | "مملکتِ بحرین" | "پادشاهی بحرین" | "バーレーン" | "バーレーン王国" | "巴林" | "巴林王国" | "바레인 왕국" | "바레인" -> Some Bahrain
  | "Banglades" | "Bangladesch" | "Bangladesh" | "Bangladeshi Rahvavabariik" | "Bangladeshin kansantasavalta" | "Bangladesz" | "Bangladeş Halk Cumhuriyeti" | "Bangladeş" | "Bangladeš" | "Bangladéš" | "Bangladéšska ľudová republika" | "Bangladéšská lidová republika" | "Folkrepubliken Bangladesh" | "Gônôprôjatôntri Bangladesh" | "La République populaire du Bangladesh" | "Ludowa Republika Bangladeszu" | "Narodna Republika Bangladeš" | "People's Republic of Bangladesh" | "Repubblica popolare del Bangladesh" | "Republik pobl Bangladesh" | "República Popular de Bangladesh" | "República Popular do Bangladesh" | "Volksrepubliek Bangladesh" | "Volksrepublik Bangladesch" | "Бангладеш" | "Народная Республика Бангладеш" | "بنغلاديش" | "بنگلادش" | "بنگلہ دیش" | "جمهورية بنغلاديش الشعبية" | "جمهوری خلق بنگلادش" | "عوامی جمہوریہ بنگلہ دیش" | "বাংলাদেশ গণপ্রজাতন্ত্রী" | "বাংলাদেশ" | "バングラデシュ" | "バングラデシュ人民共和国" | "孟加拉人民共和国" | "孟加拉国" | "방글라데시 인민 공화국" | "방글라데시" -> Some Bangladesh
  | "Barbade" | "Barbados" | "Барбадос" | "باربادوس" | "بارباڈوس" | "バルバドス" | "巴巴多斯" | "바베이도스" -> Some Barbados
  | "Belarus Cumhuriyeti" | "Belarus" | "Belorusija" | "Białoruś" | "Bielaruś" | "Bielorrusia" | "Bielorusko" | "Bieloruská republika" | "Bielorussia" | "Bielorússia" | "Biélorussie" | "Bjelorusija" | "Bělorusko" | "Běloruská republika" | "Fehérorosz Köztársaság" | "Fehéroroszország" | "Repubblica di Belarus" | "Republic of Belarus" | "Republiek Belarus" | "Republik Belarus" | "Republika Belorusija" | "Republika Białorusi" | "Republika Bjelorusija" | "Republiken Vitryssland" | "República da Bielorrússia" | "República de Belarús" | "République de Biélorussie" | "Valgevene Vabariik" | "Valgevene" | "Valko-Venäjä" | "Valko-Venäjän tasavalta" | "Wit-Rusland" | "Белару́сь" | "Беларусь" | "Белоруссия" | "Республика Беларусь" | "Республика Белоруссия" | "Рэспубліка Беларусь" | "بلاروس" | "بيلاروسيا" | "بیلاروس" | "جمهورية بيلاروسيا" | "جمهوری بلاروس" | "جمہوریہ بیلاروس" | "ベラルーシ" | "ベラルーシ共和国" | "白俄罗斯" | "白俄罗斯共和国" | "벨라루스 공화국" | "벨라루스" -> Some Belarus
  | "Belga Királyság" | "Belgia Kuningriik" | "Belgia" | "Belgian kuningaskunta" | "Belgicko" | "Belgické království" | "Belgické kráľovstvo" | "Belgie" | "Belgien" | "Belgija" | "Belgio" | "Belgique" | "Belgium" | "België" | "Belçika Krallığı" | "Belçika" | "Bélgica" | "Kingdom of Belgium" | "Koninkrijk België" | "Konungariket Belgien" | "Kraljevina Belgija" | "Królestwo Belgii" | "Königreich Belgien" | "Regno del Belgio" | "Reino da Bélgica" | "Reino de Bélgica" | "Rouantelezh Belgia" | "Royaume de Belgique" | "Бельгия" | "Королевство Бельгия" | "بلجئیم" | "بلجيكا" | "بلژیک" | "مملكة بلجيكا" | "مملکتِ بلجئیم" | "پادشاهی بلژیک" | "ベルギー" | "ベルギー王国" | "比利时" | "比利时王国" | "벨기에 왕국" | "벨기에" -> Some Belgium
  | "Belice" | "Belize" | "Белиз" | "بليز" | "بلیز" | "بیلیز" | "ベリーズ" | "伯利兹" | "벨리즈" -> Some Belize
  | "Benin Cumhuriyeti" | "Benin" | "Benini Köztársaság" | "Benini Vabariik" | "Beninin tasavalta" | "Beninská republika" | "Benín" | "Bénin" | "Repubblica del Benin" | "Republic of Benin" | "Republiek Benin" | "Republik Benin" | "Republika Benin" | "Republiken Benin" | "República de Benin" | "República do Benin" | "République du Bénin" | "Бенин" | "Республика Бенин" | "بنين" | "بنین" | "بینن" | "جمهورية بنين" | "جمهوری بنین" | "جمہوریہ بینن" | "ベナン" | "ベナン共和国" | "贝宁" | "贝宁共和国" | "베냉 공화국" | "베냉" -> Some Benin
  | "Bermuda" | "Bermudas" | "Bermudes" | "Bermudi" | "Bermudské ostrovy" | "Bermudy" | "Somers Isles" | "The Bermudas" | "The Islands of Bermuda" | "Бермудские Острова" | "Бермудские острова" | "برمودا" | "جزایر برمودا" | "バミューダ" | "バミューダ諸島" | "百慕大" | "버뮤다" -> Some Bermuda
  | "Bhoutan" | "Bhutan" | "Bhutani Kuningriik" | "Bhutanin kuningaskunta" | "Bhután" | "Bhutáni Királyság" | "Bhutánske krâľovstvo" | "Bhútán" | "Bhútánské království" | "Butan Krallığı" | "Butan" | "Bután" | "Butão" | "Kingdom of Bhutan" | "Koninkrijk Bhutan" | "Konungariket Bhutan" | "Kraljevina Butan" | "Königreich Bhutan" | "Regno del Bhutan" | "Reino de Bután" | "Reino do Butão" | "Rouantelezh Bhoutan" | "Royaume du Bhoutan" | "Бутан" | "Королевство Бутан" | "بوتان" | "بھوٹان" | "سلطنت بھوٹان" | "مملكة بوتان" | "پادشاهی بوتان" | "འབྲུག་ཡུལ་" | "འབྲུག་རྒྱལ་ཁབ་" | "ブータン" | "ブータン王国" | "不丹" | "不丹王国" | "부탄 왕국" | "부탄" -> Some Bhutan
  | "Boliivia Paljurahvuseline Riik" | "Boliivia" | "Bolivia" | "Bolivia, Plurinational State of" | "Bolivian monikansainen valtio" | "Bolivie" | "Bolivien" | "Bolivija" | "Bolivya çokuluslu Devleti" | "Bolivya" | "Boliwia" | "Bolívia" | "Bolíviai Többnemzetiségű Állam" | "Bolívie" | "Bolívijská republika" | "Buliwya Mamallaqta" | "Buliwya" | "Estado Plurinacional da Bolívia" | "Estado Plurinacional de Bolivia" | "Mnohonárodnostní stát Bolívie" | "Mångnationella staten Bolivia" | "Plurinational State of Bolivia" | "Plurinationale Staat van Bolivia" | "Plurinationaler Staat Bolivien" | "Stad Liesvroadel Bolivia" | "Stato Plurinazionale della Bolivia" | "Tetã Volívia" | "Višenacionalna Država Bolivija" | "Volívia" | "Wielonarodowe Państwo Boliwia" | "Wuliwya Suyu" | "Wuliwya" | "État plurinational de Bolivie" | "Боливия" | "Многонациональное Государство Боливия" | "بوليفيا" | "بولیوی" | "بولیویا" | "جمهوری بولیوی" | "جمہوریہ بولیویا" | "دولة بوليفيا المتعددة القوميات" | "ボリビア" | "ボリビア多民族国" | "多民族玻利维亚国" | "玻利维亚" | "볼리비아 다민족국" | "볼리비아" -> Some Bolivia
  | "Bosna a Hercegovina" | "Bosna i Hercegovina" | "Bosna ve Hersek" | "Bosna-Hersek" | "Bosnia and Herzegovina" | "Bosnia ed Erzegovina" | "Bosnia ja Hertsegoviina" | "Bosnia ja Hertsegovina" | "Bosnia y Herzegovina" | "Bosnia-Erzegovina" | "Bosnia-Herzegovina" | "Bosnia-ha-Herzegovina" | "Bosnie-Herzégovine" | "Bosnie-et-Herzégovine" | "Bosnien och Hercegovina" | "Bosnien und Herzegowina" | "Bosnië en Herzegovina" | "Bosnië-Herzegovina" | "Bosznia-Hercegovina" | "Bośnia i Hercegowina" | "Bósnia e Herzegovina" | "Republika Bosny a Hercegoviny" | "Боснa и Херцеговина" | "Босна и Херцеговина" | "Босния и Герцеговина" | "البوسنة والهرسك" | "بوسنی و هرزگوین" | "بوسنیا و ہرزیگووینا" | "ボスニア・ヘルツェゴビナ" | "波斯尼亚和黑塞哥维那" | "보스니아 헤르체고비나" -> Some Bosnia_And_Herzegovina
  | "Bocvana" | "Botsvana Cumhuriyeti" | "Botsvana" | "Botswana Vabariik" | "Botswana" | "Botswanai Köztársaság" | "Botswanan tasavalta" | "Botswanská republika" | "Lefatshe la Botswana" | "Repubblica del Botswana" | "Republic of Botswana" | "Republiek Botswana" | "Republik Botsuana" | "Republik Botswana" | "Republika Bocvana" | "Republika Botswany" | "Republiken Botswana" | "República de Botswana" | "República do Botswana" | "République du Botswana" | "Ботсвана" | "Республика Ботсвана" | "بوتسوانا" | "بوٹسوانا" | "جمهورية بوتسوانا" | "جمهوری بوتسوانا" | "جمہوریہ بوٹسوانا" | "ボツワナ" | "ボツワナ共和国" | "博茨瓦纳" | "博茨瓦纳共和国" | "보츠와나 공화국" | "보츠와나" -> Some Botswana
  | "Bouvet Adası" | "Bouvet Island" | "Bouvet'nsaari" | "Bouvet-sziget" | "Bouvet-øya" | "Bouveteiland" | "Bouvetinsel" | "Bouvetov ostrov" | "Bouvetön" | "Bouvetøya" | "Bouvetův ostrov" | "Bouvet’ saar" | "Buve" | "Enez Bouvet" | "Ilha Bouvet" | "Isla Bouvet" | "Isola Bouvet" | "Ostrvo Buve" | "Otok Bouvet" | "Wyspa Bouveta" | "Île Bouvet" | "Остров Буве" | "جزر بوفيه" | "جزیرهٔ بووه" | "جزیرہ بووہ" | "ブーベ島" | "布维岛" | "부베 섬" -> Some Bouvet_Island
  | "Brasiilia Liitvabariik" | "Brasiilia" | "Brasil" | "Brasile" | "Brasilia" | "Brasilian liittotasavalta" | "Brasilien" | "Brazil Szövetségi Köztársaság" | "Brazil" | "Brazilië" | "Brazilská federativní republika" | "Brazylia" | "Brazília" | "Brazílie" | "Brazílska federatívna republika" | "Brezilya Federal Cumhuriyeti" | "Brezilya" | "Brésil" | "Federacyjna Republika Brazylii" | "Federale Republiek Brazilië" | "Federative Republic of Brazil" | "Federativna Republika Brazil" | "Föderative Republik Brasilien" | "Förbundsrepubliken Brasilien" | "Repubblica federativa del Brasile" | "Republik Kevreel Brazil" | "República Federativa del Brasil" | "República Federativa do Brasil" | "République fédérative du Brésil" | "Savezne Republike Brazil" | "Бразилия" | "Федеративная Республика Бразилия" | "البرازيل" | "برازیل" | "برزیل" | "جمهورية البرازيل الاتحادية" | "جمهوری فدراتیو برزیل" | "وفاقی جمہوریہ برازیل" | "ブラジル" | "ブラジル連邦共和国" | "巴西" | "巴西联邦共和国" | "브라질 연방 공화국" | "브라질" -> Some Brazil
  | "Brit Indiai-óceáni Terület" | "Britanska Teritorija Indijskog Okeana" | "Britanski Indijskooceanski teritorij" | "Britanya Hint Okyanusu Toprakları" | "Briti India ookeani ala" | "Britisches Territorium im Indischen Ozean" | "British Indian Ocean Territory" | "Brits Indische Oceaan Territorium" | "Britse Gebieden in de Indische Oceaan" | "Britské indickooceánske územie" | "Britské indickooceánské území" | "Brittiläinen Intian valtameren alue" | "Brittiska territoriet i Indiska Oceanen" | "Brytyjskie Terytorium Oceanu Indyjskiego" | "Territoire britannique de l' océan Indien" | "Territoire britannique de l'océan Indien" | "Territorio Británico del Océano Índico" | "Territorio britannico dell'Oceano Indiano" | "Territorio britannico dell'oceano indiano" | "Território Britânico do Oceano Índico" | "Tiriad breizhveurat Meurvor Indez" | "Британская территория Индийского океана" | "Британская территория в Индийском океане" | "إقليم المحيط الهندي البريطاني" | "برطانوی بحرہند خطہ" | "قلمرو بریتانیا در اقیانوس هند" | "イギリス領インド洋地域" | "英属印度洋领地" | "英領インド洋地域" -> Some British_Indian_Ocean_Territory
  | "Brit Virgin-szigetek" | "Britanska Devičanska Ostrva" | "Britanski Djevičanski Otoci" | "Briti Neitsisaared" | "Britische Jungferninseln" | "British Virgin Islands" | "Britse Maagdeneilanden" | "Britské Panenské ostrovy" | "Brittiläiset Neitsytsaaret" | "Brittiska Jungfruöarna" | "Brytyjskie Wyspy Dziewicze" | "Devičanska Ostrva" | "Djevičanski Otoci" | "Ilhas Virgens" | "Inizi Gwerc'h Breizhveurat" | "Islas Vírgenes del Reino Unido" | "Islas Vírgenes" | "Isole Vergini Britanniche" | "Isole Vergini" | "Jungferninseln" | "Maagdeneilanden" | "Neitsisaared" | "Panenské ostrovy" | "Virgin Islands" | "Virgin Islands, British" | "Virjin Adaları" | "Îles Vierges britanniques" | "îles Vierges" | "Британские Виргинские острова" | "Виргинские острова" | "برطانوی جزائر ورجن" | "جزایر ویرجین بریتانیا" | "جزر العذراء البريطانية" | "جزر العذراء" | "イギリス領ヴァージン諸島" | "英属维尔京群岛" | "英領ヴァージン諸島" | "영국령 버진아일랜드" -> Some British_Virgin_Islands
  | "Brunei Barış ülkesi Devleti (Darü's-Selam)" | "Brunei Darussalam" | "Brunei Darussalami Riik" | "Brunei Darussalamin valtio" | "Brunei Szultanátus" | "Brunei" | "Brunej Darusalam" | "Brunej" | "Brunejský sultanât" | "Nacija od Bruneja, Kuću Mira" | "Nación de Brunei, Morada de la Paz" | "Natie van Brunei, de verblijfplaats van de Vrede" | "Nation of Brunei" | "Nation of Brunei, Abode Damai" | "Nazione di Brunei, Dimora della Pace" | "Nação do Brunei, Morada da Paz" | "Negara Brunei Darussalam" | "Państwo Brunei Darussalam" | "Stad Brunei Darussalam" | "Sultanat Brunei Darussalam" | "Sultanát Brunej" | "the Abode of Peace" | "État de Brunei Darussalam" | "Бруней" | "Нация Бруней, обитель мира" | "برونئی سرای صلح" | "برونئی" | "برونائی" | "بروناي دار السلام" | "بروناي" | "ریاستِ برونائی دارالسلام" | "ブルネイ" | "ブルネイ・ダルサラーム国" | "文莱" | "文莱和平之国" | "브루나이 다루살람국" | "브루나이" -> Some Brunei
  | "Bolgár Köztársaság" | "Bugarska" | "Bulgaaria Vabariik" | "Bulgaaria" | "Bulgaria" | "Bulgarian tasavalta" | "Bulgarie" | "Bulgarien" | "Bulgarije" | "Bulgaristan Cumhuriyeti" | "Bulgaristan" | "Bulgária" | "Bulharsko" | "Bulharská republika" | "Bułgaria" | "Repubblica di Bulgaria" | "Republic of Bulgaria" | "Republiek Bulgarije" | "Republik Bulgaria" | "Republik Bulgarien" | "Republika Bugarska" | "Republika Bułgarii" | "Republiken Bulgarien" | "República da Bulgária" | "República de Bulgaria" | "République de Bulgarie" | "Болгария" | "България" | "Република България" | "Республика Болгария" | "بلغارستان" | "بلغاريا" | "بلغاریہ" | "جمهورية بلغاريا" | "جمهوری بلغارستان" | "جمہوریہ بلغاریہ" | "ブルガリア" | "ブルガリア共和国" | "保加利亚" | "保加利亚共和国" | "불가리아 공화국" | "불가리아" -> Some Bulgaria
  | "Burkina Faso" | "Burkina" | "République du Burkina" | "Буркина -Фасо" | "Буркина-Фасо" | "برکینا فاسو" | "بوركينا فاسو" | "بورکینافاسو" | "ブルキナファソ" | "布基纳法索" | "부르키나파소" -> Some Burkina_Faso
  | "Burundi Cumhuriyeti" | "Burundi Vabariik" | "Burundi" | "Burundin tasavalta" | "Burundská republika" | "Repubblica del Burundi" | "Republic of Burundi" | "Republiek Burundi" | "Republik Burundi" | "Republika Burundi" | "Republika y'Uburundi" | "Republiken Burundi" | "República de Burundi" | "República do Burundi" | "République du Burundi" | "Uburundi" | "Бурунди" | "Республика Бурунди" | "برونڈی" | "بوروندي" | "بوروندی" | "جمهورية بوروندي" | "جمهوری بوروندی" | "جمہوریہ برونڈی" | "ブルンジ" | "ブルンジ共和国" | "布隆迪" | "布隆迪共和国" | "부룬디" -> Some Burundi
  | "Cambodge" | "Cambodia" | "Cambodja" | "Cambogia" | "Camboja" | "Camboya" | "Kambodja" | "Kambodscha" | "Kambodzsa" | "Kambodzsai Királyság" | "Kambodża" | "Kambodža Kuningriik" | "Kambodža" | "Kambodžan kuningaskunta" | "Kambodžské království" | "Kamboçya Krallığı" | "Kamboçya" | "Kamboǆa" | "Kamboǆské kráľovstvo" | "Kingdom of Cambodia" | "Koninkrijk Cambodja" | "Konungariket Kambodja" | "Kraljevina Kambodža" | "Królestwo Kambodży" | "Kâmpŭchéa" | "Königreich Kambodscha" | "Regno di Cambogia" | "Reino de Camboya" | "Reino do Camboja" | "Rouantelezh Kambodja" | "Royaume du Cambodge" | "Камбоджа" | "Королевство Камбоджа" | "كمبوديا" | "مملكة كمبوديا" | "مملکتِ کمبوڈیا" | "پادشاهی کامبوج" | "کامبوج" | "کمبوڈیا" | "ព្រះរាជាណាចក្រកម្ពុជា" | "カンボジア" | "カンボジア王国" | "柬埔寨" | "柬埔寨王国" | "캄보디아 왕국" | "캄보디아" -> Some Cambodia
  | "Camarões" | "Cameroon" | "Cameroun" | "Camerun" | "Camerún" | "Kameroen" | "Kameroun" | "Kamerun Cumhuriyeti" | "Kamerun" | "Kameruni Köztársaság" | "Kameruni Vabariik" | "Kamerunin tasavalta" | "Kamerunská republika" | "Repubblica del Camerun" | "Republic of Cameroon" | "Republiek Kameroen" | "Republik Kameroun" | "Republik Kamerun" | "Republika Kamerun" | "Republiken Kamerun" | "República de Camerún" | "República dos Camarões" | "République du Cameroun" | "Камерун" | "Республика Камерун" | "الكاميرون" | "جمهورية الكاميرون" | "جمهوری کامِرون" | "جمہوریہ کیمرون" | "کامِرون" | "کیمرون" | "カメルーン" | "カメルーン共和国" | "喀麦隆" | "喀麦隆共和国" | "카메룬 공화국" | "카메룬" -> Some Cameroon
  | "Canada" | "Canadá" | "Kanada" | "Канада" | "كندا" | "کانادا" | "کینیڈا" | "カナダ" | "加拿大" | "캐나다" -> Some Canada
  | "Cabo Verde Vabariik" | "Cabo Verde" | "Cape Verde" | "Capo Verde" | "Kaapverdië" | "Kab Glas" | "Kap Verde" | "Kap Verden tasavalta" | "Kapverdská republika" | "Kapverdy" | "Repubblica di Capo Verde" | "Republic of Cabo Verde" | "Republiek van Cabo Verde" | "Republik Cabo Verde" | "Republik Kab Glas" | "Republika Cabo Verde" | "Republika Zelenortska Ostrva" | "Republika Zielonego Przylądka" | "Republiken Kap Verde" | "República de Cabo Verde" | "Roheneemesaared" | "République du Cap-Vert" | "Yeşil Burun Cumhuriyeti" | "Yeşil Burun" | "Zelenortska Ostrva" | "Zelenortska Republika" | "Zöld-foki Köztársaság" | "Îles du Cap-Vert" | "Кабо-Верде" | "Республика Кабо -Верде" | "جمهورية كابو فيردي" | "جمهوری کبو ورد" | "جمہوریہ کیپ ورڈی" | "دماغهٔ سبز" | "كابو فيردي" | "کیپ ورڈی" | "カーボベルデ" | "カーボベルデ共和国" | "佛得角" | "佛得角共和国" | "카보베르데 공화국" | "카보베르데" -> Some Cape_Verde
  | "Antyle Holenderskie" | "BES諸島" | "Bonaire Sint Eustatius and Saba" | "Bonaire" | "Bonaire, Saba e Santo Eustáquio" | "Bonaire, Saint-Eustache et Saba" | "Bonaire, San Eustaquio y Saba" | "Bonaire, Sint Eustatius a Saba" | "Bonaire, Sint Eustatius and Saba" | "Bonaire, Sint Eustatius e Saba" | "Bonaire, Sint Eustatius en Saba" | "Bonaire, Sint Eustatius ha Saba" | "Bonaire, Sint Eustatius i Saba" | "Bonaire, Sint Eustatius ja Saba" | "Bonaire, Sint Eustatius und Saba" | "Boneiru, Sint Eustatius y Saba" | "Caribbean Netherlands" | "Caribe Neerlandés" | "Caribisch Nederland" | "Karayip Hollandası" | "Karibische Niederlande" | "Karibiska Nederländerna" | "Karibské Nizozemsko" | "Karipska Holandija" | "Paesi Bassi caraibici" | "Pays-Bas caribéens" | "Países Baixos Caribenhos" | "Бонэйр, Синт-Эстатиус и Саба" | "Карибские Нидерланды" | "الجزر الكاريبية الهولندية" | "بونایر، سینٹ ایوسٹائیس اور سابا" | "بونير وسينت أوستاتيوس وسابا" | "جزایر کارائیب هلند" | "کیریبین نیدرلینڈز" | "オランダカリブ領域" | "荷蘭加勒比區" | "보네르, 신트외스타티위스, 사바" | "카리브 네덜란드" -> Some Caribbean_Netherlands
  | "Cayman Adaları" | "Cayman Islands" | "Cayman-Inseln" | "Caymaneilanden" | "Caymansaaret" | "Caymanöarna" | "Ilhas Caimão" | "Ilhas Cayman" | "Inizi Cayman" | "Islas Caimán" | "Isole Cayman" | "Kaimaninseln" | "Kaimanisaared" | "Kajmanie ostrovy" | "Kajmanska Ostrva" | "Kajmanski otoci" | "Kajmanské ostrovy" | "Kajmany" | "Kajmán-szigetek" | "Îles Caïmans" | "Каймановы острова" | "جزائر کیمین" | "جزایر کیمن" | "جزر كايمان" | "ケイマン諸島" | "开曼群岛" | "케이맨 제도" -> Some Cayman_Islands
  | "Bêafrîka" | "Centraal-Afrikaanse Republiek" | "Central African Republic" | "Centralafrikanska republiken" | "Centralna Afrička Republika" | "Centralnoafrička Republika" | "Kesk-Aafrika Vabariik" | "Keski-Afrikan tasavalta" | "Ködörösêse tî Bêafrîka" | "Közép-afrikai Köztársaság" | "Orta Afrika Cumhuriyeti" | "Repubblica Centrafricana" | "Republik Kreizafrikan" | "Republika Środkowoafrykańska" | "República Centro-Africana" | "República Centro-Africano" | "República Centroafricana" | "République centrafricaine" | "Srednjoafrička Republika" | "Stredoafrická republika" | "Středoafrická republika" | "Zentralafrikanische Republik" | "Центрально-Африканская Республика" | "Центральноафриканская Республика" | "جمهورية أفريقيا الوسطى" | "جمهوری آفریقای مرکزی" | "وسطی افریقی جمہوریہ" | "中央アフリカ" | "中央アフリカ共和国" | "中非共和国" | "중앙아프리카 공화국" -> Some Central_African_Republic
  | "Chad" | "Chade" | "Ciad" | "Csád Köztársaság" | "Csád" | "Czad" | "Repubblica del Ciad" | "Republic of Chad" | "Republiek Tsjaad" | "Republik Tchad" | "Republik Tschad" | "Republika Czadu" | "Republika Čad" | "Republiken Tchad" | "República de Chad" | "República do Chade" | "République du Tchad" | "Tchad" | "Tschad" | "Tsjaad" | "Tšaad" | "Tšaadi Vabariik" | "Tšad" | "Tšadin tasavalta" | "çad Cumhuriyeti" | "çad" | "Čad" | "Čadská republika" | "Čadu" | "Республика Чад" | "Чад" | "تشاد" | "جمهورية تشاد" | "جمهوری چاد" | "جمہوریہ چاڈ" | "چاد" | "چاڈ" | "チャド" | "チャド共和国" | "乍得" | "乍得共和国" | "차드 공화국" | "차드" -> Some Chad
  | "Chile" | "Chilei Köztársaság" | "Chilen tasavalta" | "Chili" | "Chilská republika" | "Cile" | "Repubblica del Cile" | "Republic of Chile" | "Republiek Chili" | "Republik Chile" | "Republika Chile" | "Republika Čile" | "Republiken Chile" | "República de Chile" | "República do Chile" | "République du Chili" | "Tšiili Vabariik" | "Tšiili" | "Čile" | "Čílska republika" | "şili Cumhuriyeti" | "şili" | "Республика Чили" | "Чили" | "تشيلي" | "جمهورية تشيلي" | "جمهوری شیلی" | "جمہوریہ چلی" | "شیلی" | "چلی" | "チリ" | "チリ共和国" | "智利" | "智利共和国" | "칠레 공화국" | "칠레" -> Some Chile
  | "China" | "Chine" | "Chiny" | "Chińska Republika Ludowa" | "Cina" | "Folkrepubliken Kina" | "Hiina Rahvavabariik" | "Hiina" | "Kiina" | "Kiinan kansantasavalta" | "Kina" | "Kína" | "Kínai Népköztársaság" | "Narodna Republika Kina" | "People's Republic of China" | "Repubblica popolare cinese" | "Republik Pobl Sina" | "República Popular da China" | "República Popular de China" | "République populaire de Chine" | "Sina" | "Volksrepubliek China" | "Volksrepublik China" | "Zhongguo" | "Zhonghua" | "Zhōngguó" | "Zhōnghuá Rénmín Gònghéguó" | "çin Halk Cumhuriyeti" | "çin" | "Čína" | "Čínska ľudová republika" | "Čínská lidová republika" | "Китай" | "Народная Республика Китай" | "الصين" | "جمهورية الصين الشعبية" | "جمهوری خلق چین" | "عوامی جمہوریہ چین" | "چین" | "中华人民共和国" | "中国" | "中華人民共和国" | "중국" | "중화인민공화국" -> Some China
  | "Božićni otok" | "Božićno Ostrvo" | "Christmas Adası" | "Christmas Island" | "Christmaseiland" | "Enez Christmas" | "Gebiet der Weihnachtsinsel" | "Grondgebied van Christmas Island" | "Ilha do Natal" | "Isla de Navidad" | "Isola di Natale" | "Joulusaaren alue" | "Joulusaari" | "Julön" | "Jõulusaar" | "Jõulusaare ala" | "Karácsony-sziget" | "Teritorij Božićni otok" | "Teritorija Božićno ostrvo" | "Teritorium Vánočního ostrova" | "Teritórium Vianočného ostrova" | "Territoire de l'île Christmas" | "Territorio de la Isla de Navidad" | "Territorio di Christmas Island" | "Territory of Christmas Island" | "Território da Ilha Christmas" | "Tiriad Enez Christmas" | "Vianočnú ostrov" | "Vánoční ostrov" | "Weihnachtsinsel" | "Wyspa Bożego Narodzenia" | "Île Christmas" | "Остров Рождества" | "Территория острова Рождества" | "جزيرة كريسماس" | "جزیرهٔ کریسمس" | "جزیرہ کرسمس" | "ریاستِ جزیرہ کرسمس" | "クリスマス島" | "圣诞岛" | "크리스마스 섬" -> Some Christmas_Island
  | "Cocos (Keeling) Adaları" | "Cocos (Keeling) Islands" | "Cocos Islands" | "Cocoseilanden" | "Gebiet der Kokos- (Keeling-) Inseln" | "Grondgebied van de Eilanden Cocos (Keeling )" | "Ilhas Cocos (Keeling)" | "Inizi Cocos (Keeling)" | "Islas Cocos o Islas Keeling" | "Isole Cocos e Keeling" | "Keeling Islands" | "Kokosinseln" | "Kokosova Ostrva" | "Kokosovi Otoci" | "Kokosové ostrovy" | "Kokosöarna" | "Kookossaared" | "Kookossaaret" | "Kookossaarte ala" | "Kókusz-szigetek" | "Teritorija Kokosovih (Kiling) Ostrva" | "Teritoriju Kokosovi (Keeling) Islands" | "Territoire des îles Cocos (Keeling)" | "Territorio de los (Keeling) Islas Cocos" | "Territorio della (Keeling) Isole Cocos" | "Territory of the Cocos (Keeling) Islands" | "Território dos Cocos (Keeling)" | "Tiriad Inizi Cocos (Keeling)" | "Wyspy Kokosowe" | "Îles Cocos" | "Кокосовые острова" | "Территория Кокосовые (Килинг) острова" | "إقليم جزر كوكوس" | "جزائر (کیلنگ) کوکوس" | "جزائر کوکوس" | "جزایر کوکوس" | "جزر كوكوس" | "ココス諸島" | "科科斯" | "코코스 제도" -> Some Cocos_Keeling_Islands
  | "Colombia Vabariik" | "Colombia" | "Colombie" | "Colômbia" | "Kolombia" | "Kolombiya Cumhuriyeti" | "Kolombiya" | "Kolumbia" | "Kolumbiai Köztársaság" | "Kolumbian tasavalta" | "Kolumbie" | "Kolumbien" | "Kolumbija" | "Kolumbijská republika" | "Repubblica di Colombia" | "Republic of Colombia" | "Republiek Colombia" | "Republik Kolombia" | "Republik Kolumbien" | "Republika Kolumbii" | "Republika Kolumbija" | "Republiken Colombia" | "República da Colômbia" | "República de Colombia" | "République de Colombie" | "Колумбия" | "Республика Колумбия" | "جمهورية كولومبيا" | "جمهوری کلمبیا" | "جمہوریہ کولمبیا" | "كولومبيا" | "کلمبیا" | "کولمبیا" | "コロンビア" | "コロンビア共和国" | "哥伦比亚" | "哥伦比亚共和国" | "콜롬비아 공화국" | "콜롬비아" -> Some Colombia
  | "Comoras" | "Comore" | "Comore-szigetek" | "Comore-szigeteki Unió" | "Comoren" | "Comores" | "Comoros" | "Komoori Liit" | "Komoorid" | "Komoren" | "Komorerna" | "Komorez" | "Komori" | "Komorien liitto" | "Komorit" | "Komorlar Birliği" | "Komorlar" | "Komorská únia" | "Komorský svaz" | "Komory" | "Savez Komori" | "Udzima wa Komori" | "Unaniezh Komorez" | "Unie van de Comoren" | "Unija Komora" | "Union der Komoren" | "Union des Comores" | "Union of the Comoros" | "Unione delle Comore" | "Unionen Komorerna" | "União das Comores" | "Unión de las Comoras" | "Związek Komorów" | "al-Ittiḥād al-Qumurī" | "Коморы" | "Союз Коморских Островов" | "اتحاد القمری" | "اتحاد قُمُر" | "الإتحاد القمري" | "الاتحاد القمري" | "القمری" | "جزر القمر" | "مجمع‌الجزایر قمر" | "コモロ" | "コモロ連合" | "科摩罗" | "科摩罗联盟" | "코모로 연방" | "코모로" -> Some Comoros
  | "Congo" | "Congo-Brazzaville" | "Kongo Cumhuriyeti" | "Kongo Vabariik" | "Kongo, Republika" | "Kongo-Brazzaville" | "Kongon tasavalta" | "Kongói Köztársaság" | "Konžská republika" | "Repubblica del Congo" | "Repubilika ya Kongo" | "Republiek Congo" | "Republik Kongo" | "Republika Konga" | "Republika Kongo" | "Republiken Kongo" | "Republíki ya Kongó" | "República del Congo" | "República do Congo" | "République du Congo" | "Республика Конго" | "جمهورية الكونغو" | "جمهوری برازاویل کُنگو" | "جمهوری کُنگو" | "جمہوریہ کانگو" | "コンゴ共和国" | "刚果" | "刚果共和国" | "콩고" -> Some Congo
  | "Cook Adaları" | "Cook Islands" | "Cook eilanden" | "Cook-szigetek" | "Cookeilanden" | "Cooki saared" | "Cookinsaaret" | "Cookinseln" | "Cookove ostrovy" | "Cookovo Otočje" | "Cookovy ostrovy" | "Cooköarna" | "Ilhas Cook" | "Inizi Cook" | "Islas Cook" | "Isole Cook" | "Kukova Ostrva" | "Kūki 'Āirani" | "Wyspy Cooka" | "Îles Cook" | "Острова Кука" | "острова Кука" | "جزائر کک" | "جزایر کوک" | "جزر كوك" | "クック諸島" | "库克群岛" | "쿡 제도" -> Some Cook_Islands
  | "Costa Rica Vabariik" | "Costa Rica" | "Costa Rica-i Köztársaság" | "Costa Rican tasavalta" | "Kosta Rika Cumhuriyeti" | "Kosta Rika" | "Kostarická republika" | "Kostarika" | "Kostaryka" | "Repubblica di Costa Rica" | "Republic of Costa Rica" | "Republiek Costa Rica" | "Republik Costa Rica" | "Republika Kostarika" | "Republika Kostaryki" | "Republiken Costa Rica" | "República da Costa Rica" | "República de Costa Rica" | "République du Costa Rica" | "Коста-Рика" | "Республика Коста-Рика" | "جمهورية كوستاريكا" | "جمهوری کاستاریکا" | "جمہوریہ کوسٹاریکا" | "كوستاريكا" | "کاستاریکا" | "کوسٹاریکا" | "コスタリカ" | "コスタリカ共和国" | "哥斯达黎加" | "哥斯达黎加共和国" | "코스타리카 공화국" | "코스타리카" -> Some Costa_Rica
  | "Chorvatsko" | "Chorvatská republika" | "Chorvátska republika" | "Chorvátsko" | "Chorwacja" | "Croacia" | "Croatia" | "Croatie" | "Croazia" | "Croácia" | "Horvaatia Vabariik" | "Horvaatia" | "Horvát Köztársaság" | "Horvátország" | "Hrvatska" | "Hırvatistan Cumhuriyeti" | "Hırvatistan" | "Kroatia" | "Kroatian tasavalta" | "Kroatien" | "Kroatië" | "Repubblica di Croazia" | "Republic of Croatia" | "Republiek Kroatië" | "Republik Kroatia" | "Republik Kroatien" | "Republika Chorwacji" | "Republika Hrvatska" | "Republiken Kroatien" | "República da Croácia" | "República de Croacia" | "République de Croatie" | "Республика Хорватия" | "Хорватия" | "جمهورية كرواتيا" | "جمهوری کرواسی" | "جمہوریہ کرویئشا" | "كرواتيا" | "کرویئشا" | "کرُواسی" | "クロアチア" | "クロアチア共和国" | "克罗地亚" | "克罗地亚共和国" | "크로아티아 공화국" | "크로아티아" -> Some Croatia
  | "Cuba" | "Kuba" | "Kubai Köztársaság" | "Kubánska republika" | "Kubánská republika" | "Kuuba Vabariik" | "Kuuba" | "Kuuban tasavalta" | "Küba Cumhuriyeti" | "Küba" | "Repubblica di Cuba" | "Republic of Cuba" | "Republiek Cuba" | "Republik Kuba" | "Republika Kuba" | "Republika Kuby" | "Republiken Kuba" | "República de Cuba" | "République de Cuba" | "Куба" | "Республика Куба" | "جمهورية كوبا" | "جمهوری کوبا" | "جمہوریہ کیوبا" | "كوبا" | "کوبا" | "کیوبا" | "キューバ" | "キューバ共和国" | "古巴" | "古巴共和国" | "쿠바 공화국" | "쿠바" -> Some Cuba
  | "Autonomní země Curaçao" | "Bro Curaçao" | "Country of Curaçao" | "Curacao" | "Curazao" | "Curaçao" | "Država Kurasao" | "Kurasao" | "Kòrsou" | "Land Curaçao" | "Paese di Curaçao" | "Pais Kòrsou" | "Pays de Curaçao" | "País de Curazao" | "País de Curaçao" | "ilha da Curação" | "Кюрасао" | "Страна Кюрасао" | "دولة كوراساو" | "كوراساو" | "مملکتِ کیوراساؤ" | "کوراسائو" | "کیوراساؤ" | "キュラソー" | "库拉索" | "퀴라소" -> Some Curacao
  | "Chipre" | "Chypre" | "Cipar" | "Cipro" | "Ciprus" | "Ciprusi Köztársaság" | "Cypern" | "Cyperská republika" | "Cypr" | "Cyprus" | "Kipar" | "Kiprenez" | "Kyperská republika" | "Kypr" | "Kyproksen tasavalta" | "Kypros" | "Küpros" | "Küprose Vabariik" | "Kýpros" | "Kıbrıs Cumhuriyeti" | "Kıbrıs" | "Repubblica di Cipro" | "Republic of Cyprus" | "Republiek Cyprus" | "Republik Kiprenez" | "Republik Zypern" | "Republika Cipar" | "Republika Cypryjska" | "Republika Kipar" | "Republiken Cypern" | "República de Chipre" | "République de Chypre" | "Zypern" | "Δημοκρατία της Κύπρος" | "Κυπριακή Δημοκρατία" | "Κύπρος" | "Кипр" | "Республика Кипр" | "جمهورية قبرص" | "جمهوری قبرس" | "جمہوریہ قبرص" | "قبرص" | "قِبرِس" | "キプロス" | "キプロス共和国" | "塞浦路斯" | "塞浦路斯共和国" | "키프로스 공화국" | "키프로스" -> Some Cyprus
  | "Cechia" | "Chequia" | "Chéquia" | "Cseh Köztársaság" | "Csehország" | "Czechia" | "Czechy" | "Repubblica Ceca" | "Republik Tchek" | "Republika Czeska" | "Republiken Tjeckien" | "República Checa" | "République tchèque" | "Tchekia" | "Tchéquie" | "Tjeckien" | "Tschechien" | "Tschechische Republik" | "Tsjechische Republiek" | "Tsjechië" | "Tšehhi Vabariik" | "Tšehhi" | "Tšekin tasavalta" | "Tšekki" | "çek Cumhuriyeti" | "çekya" | "Česko" | "Česká republika" | "Češka Republika" | "Češka" | "Чехия" | "Чешская Республика" | "التشيك" | "جمهورية التشيك" | "جمهوری چک" | "چيک جمہوريہ" | "چيک" | "チェコ" | "チェコ共和国" | "捷克" | "捷克共和国" | "체코" -> Some Czechia
  | "Congo (DRC)" | "Congo (Rep. Dem.)" | "Congo (Rép. dém.)" | "Congo, the Democratic Republic of the" | "Congo-Kinshasa" | "DR Congo" | "DR Kongo" | "DRC" | "Democratic Republic of Congo" | "Democratische Republiek Congo" | "Demokratická republika Kongo" | "Demokratische Republik Kongo" | "Demokratiska republiken Kongo" | "Demokratska Republika Kongo" | "Demokratyczna Republika Konga" | "Ditunga dia Kongu wa Mungalaata" | "Jamhuri ya Kidemokrasia ya Kongo" | "Kongo (Dem. Rep.)" | "Kongo DV" | "Kongo Demokraatlik Vabariik" | "Kongo Demokratik Cumhuriyeti" | "Kongo, Demokratska Republika" | "Kongo-Kinshasa" | "Kongon demokraattinen tasavalta" | "Kongói Demokratikus Köztársaság" | "Konžská demokratická republika" | "RD Congo" | "Repubblica Democratica del Congo" | "Repubilika ya Kongo Demokratiki" | "Republik Demokratel Kongo" | "Republiki ya Kongó Demokratiki" | "República Democrática del Congo" | "República Democrática do Congo" | "République démocratique du Congo" | "Демократическая Республика Конго" | "الكونغو" | "جمهورية الكونغو الديمقراطية" | "جمهوری دموکراتیک کنگو" | "جمہوری جمہوریہ کانگو" | "کانگو" | "کنگو دموکراتیک" | "コンゴ民主共和国" | "刚果民主共和国" | "民主刚果" | "콩고 민주 공화국" -> Some Democratic_Republic_Of_Congo
  | "Danemark" | "Dania" | "Danimarca" | "Danimarka Krallığı" | "Danimarka" | "Danmark" | "Danska" | "Denemarken" | "Denmark" | "Dinamarca" | "Dán Királyság" | "Dánia" | "Dánske kráľovstvo" | "Dánsko" | "Dánské království" | "Dänemark" | "Kingdom of Denmark" | "Kongeriget Danmark" | "Koninkrijk Denemarken" | "Konungariket Danmark" | "Kraljevina Danska" | "Królestwo Danii" | "Königreich Dänemark" | "Regno di Danimarca" | "Reino da Dinamarca" | "Reino de Dinamarca" | "Rouantelezh Danmark" | "Royaume du Danemark" | "Taani Kuningriik" | "Taani" | "Tanska" | "Tanskan kuningaskunta" | "Дания" | "Королевство Дания" | "الدنمارك" | "دانمارک" | "مملكة الدنمارك" | "مملکتِ ڈنمارک" | "پادشاهی دانمارک" | "ڈنمارک" | "デンマーク" | "デンマーク王国" | "丹麦" | "丹麦王国" | "덴마크 왕국" | "덴마크" -> Some Denmark
  | "Cibuti Cumhuriyeti" | "Cibuti" | "Dijibouti" | "Dijiboutin tasavalta" | "Djibouti Vabariik" | "Djibouti" | "Dschibuti" | "Dzsibuti Köztársaság" | "Dzsibuti" | "Dżibuti" | "Džibuti" | "Džibutsko" | "Džibutská republika" | "Gabuuti" | "Gabuutih Ummuuno" | "Gibuti" | "Jabuuti" | "Jamhuuriyadda Jabuuti" | "Repubblica di Gibuti" | "Republic of Djibouti" | "Republiek Djibouti" | "Republik Djibouti" | "Republik Dschibuti" | "Republika Dżibuti" | "Republika Džibuti" | "Republiken Djibouti" | "República de Djibouti" | "República do Djibouti" | "République de Djibouti" | "ǅibutsko" | "ǅibutská republika" | "Джибути" | "Республика Джибути" | "جبوتی" | "جمهورية جيبوتي" | "جمهوری جیبوتی" | "جمہوریہ جبوتی" | "جيبوتي" | "جیبوتی" | "ジブチ" | "ジブチ共和国" | "吉布提" | "吉布提共和国" | "지부티 공화국" | "지부티" -> Some Djibouti
  | "Commonwealth de la Dominique" | "Commonwealth di Dominica" | "Commonwealth of Dominica" | "Commonwealth von Dominica" | "Comunidade da Dominica" | "Dominica Ühendus" | "Dominica" | "Dominican liittovaltio" | "Dominické spoločenstvo" | "Dominika Topluluğu" | "Dominika" | "Dominikai Közösség" | "Dominikánské společenství" | "Dominique" | "Gemenebest Dominica" | "Kenglad Dominika" | "Komonvelt Dominika" | "Mancomunidad de Dominica" | "Samväldet Dominica" | "Wai‘tu kubuli" | "Wspólnota Dominiki" | "Zajednica Dominika" | "Доминика" | "Содружество Доминики" | "دولتِ مشترکہ ڈومینیکا" | "دومينيكا" | "دومینیکا" | "قلمرو همسود دومینیکا" | "كومونولث دومينيكا" | "ڈومینیکا" | "ドミニカ国" | "多米尼加" | "多米尼加共和国" -> Some Dominica
  | "Dominicaanse Republiek" | "Dominican Republic" | "Dominik Cumhuriyeti" | "Dominikaani Vabariik" | "Dominikaaninen tasavalta" | "Dominikai Köztársaság" | "Dominikana" | "Dominikanische Republik" | "Dominikanska Republika" | "Dominikanska republiken" | "Dominikánska republika" | "Dominikánská republika" | "Repubblica Dominicana" | "Republik Dominikan" | "Republika Dominikańska" | "República Dominicana" | "République Dominicaine" | "République dominicaine" | "Доминиканская Республика" | "جمهورية الدومينيكان" | "جمهوری دومینیکن" | "جمہوریہ ڈومینیکن" | "ڈومینیکن" | "ドミニカ共和国" | "多明尼加" | "多明尼加共和国" -> Some Dominican_Republic
  | "Ecuador" | "Ecuadori Köztársaság" | "Ecuadori Vabariik" | "Ecuadorin tasavalta" | "Ekvador Cumhuriyeti" | "Ekvador" | "Ekvádor" | "Ekvádorská republika" | "Ekwador" | "Equador" | "Repubblica dell'Ecuador" | "Republic of Ecuador" | "Republiek Ecuador" | "Republik Ecuador" | "Republika Ekvador" | "Republiken Ecuador" | "República del Ecuador" | "República do Equador" | "République de l'Équateur" | "Équateur" | "Республика Эквадор" | "Эквадор" | "الإكوادور" | "اکوادور" | "ایکواڈور" | "جمهورية الإكوادور" | "جمهوری اکوادور" | "جمہوریہ ایکوڈور" | "エクアドル" | "エクアドル共和国" | "厄瓜多尔" | "厄瓜多尔共和国" | "에콰도르 공화국" | "에콰도르" -> Some Ecuador
  | "Arab Republic of Egypt" | "Arabische Republiek Egypte" | "Arabische Republik Ägypten" | "Arabrepubliken Egypten" | "Arabska Republika Egiptu" | "Arapska Republika Egipat" | "Egipat" | "Egipt" | "Egipto" | "Egiptus" | "Egiptuse Araabia Vabariik" | "Egito" | "Egitto" | "Egyiptom" | "Egyiptomi Arab Köztársaság" | "Egypt" | "Egypte" | "Egypten" | "Egypti" | "Egyptin arabitasavalta" | "Egyptská arabská republika" | "Mısır Arap Cumhuriyeti" | "Mısır" | "Repubblica araba d'Egitto" | "Republik arab Egipt" | "República Árabe de Egipto" | "República Árabe do Egipto" | "République arabe d'Égypte" | "Ägypten" | "Égypte" | "Арабская Республика Египет" | "Египет" | "جمهورية مصر العربية" | "جمهوری عربی مصر" | "مصر" | "مصری عرب جمہوریہ" | "エジプト" | "エジプト・アラブ共和国" | "埃及" | "阿拉伯埃及共和国" | "이집트 아랍 공화국" | "이집트" -> Some Egypt
  | "El Salvador Cumhuriyeti" | "El Salvador" | "El Salvadori Vabariik" | "El Salvadorin tasavalta" | "Repubblica di El Salvador" | "Republic of El Salvador" | "Republiek El Salvador" | "Republik El Salvador" | "Republika El Salvador" | "Republika Salwadoru" | "Republiken El Salvador" | "República de El Salvador" | "République du Salvador" | "Salvador" | "Salvadori Köztársaság" | "Salvadorská republika" | "Salvádor" | "Salvádorská republika" | "Salwador" | "Республика Эль-Сальвадор" | "Сальвадор" | "السالوادور" | "السلفادور" | "ایل سیلواڈور" | "جمهورية السلفادور" | "جمهوری السالوادور" | "جمہوریہ ایل سیلواڈور" | "エルサルバドル" | "エルサルバドル共和国" | "萨尔瓦多" | "萨尔瓦多共和国" | "엘살바도르 공화국" | "엘살바도르" -> Some El_Salvador
  | "Egyenlítői-Guinea" | "Egyenlítői-Guinea-i Köztársaság" | "Ekvator Ginesi Cumhuriyeti" | "Ekvator Ginesi" | "Ekvatoriaal-Guinea Vabariik" | "Ekvatoriaal-Guinea" | "Ekvatorialguinea" | "Ekvatorijalna Gvineja" | "Equatoriaal-Guinea" | "Equatorial Guinea" | "Ginea ar C'heheder" | "Guinea Ecuatorial" | "Guinea Equatoriale" | "Guiné Equatorial" | "Guinée équatoriale" | "Gwinea Równikowa" | "Päiväntasaajan Guinea" | "Päiväntasaajan Guinean tasavalta" | "Repubblica della Guinea Equatoriale" | "Republic of Equatorial Guinea" | "Republiek Equatoriaal-Guinea" | "Republik Ginea ar C'heheder" | "Republik Äquatorialguinea" | "Republika Ekvatorijalna Gvineja" | "Republika Ekvatorska Gvineja" | "Republika Gwinei Równikowej" | "Republika Rovníková Guinea" | "Republika rovníkovej Guiney" | "Republiken Ekvatorialguinea" | "República da Guiné Equatorial" | "República de Guinea Ecuatorial" | "Rovníková Guinea" | "République de Guinée équatoriale" | "République de la Guinée Équatoriale" | "Äquatorialguinea" | "Республика Экваториальная Гвинея" | "Экваториальная Гвинея" | "استوائی گنی" | "جمهورية غينيا الاستوائية" | "جمهوری گینه استوایی" | "جمہوریہ استوائی گنی" | "غينيا الاستوائية" | "گینه استوایی" | "赤道ギニア" | "赤道ギニア共和国" | "赤道几内亚" | "赤道几内亚共和国" | "적도 기니 공화국" | "적도 기니" -> Some Equatorial_Guinea
  | "Dawlat Iritriyá" | "Država Eritreja" | "Država Eritreji" | "Eritre Devleti" | "Eritre" | "Eritrea Riik" | "Eritrea" | "Eritrean valtio" | "Eritreia" | "Eritreja" | "Eritrejský štát" | "Erytrea" | "Estado da Eritreia" | "Estado de Eritrea" | "Iritriyā" | "Państwo Erytrea" | "Staat Eritrea" | "Stad Eritrea" | "State of Eritrea" | "Staten Eritrea" | "Stato di Eritrea" | "Stát Eritrea" | "Érythrée" | "État d'Érythrée" | "ʾErtrā" | "Государство Эритрея" | "Эритрея" | "إريتريا" | "ارتریا" | "اریتره" | "جمهوری اریتره" | "دولة إريتريا" | "ریاستِ ارتریا" | "ሃገረ ኤርትራ" | "ኤርትራ" | "エリトリア" | "エリトリア国" | "厄立特里亚" | "에리트레아" | "에리트레아국" -> Some Eritrea
  | "Eesti Vabariik" | "Eesti" | "Estland" | "Estonia" | "Estonie" | "Estonija" | "Estonsko" | "Estonská republika" | "Estonya Cumhuriyeti" | "Estonya" | "Estónia" | "Estónska republika" | "Estónsko" | "Repubblica di Estonia" | "Republic of Estonia" | "Republiek Estland" | "Republik Estland" | "Republik Estonia" | "Republika Estonija" | "Republika Estońska" | "Republiken Estland" | "República da Estónia" | "República de Estonia" | "République d'Estonie" | "Viro" | "Viron tasavalta" | "Észt Köztársaság" | "Észtország" | "Эстония" | "Эстонская Республика" | "إستونيا" | "اسٹونیا" | "اِستونی" | "جمهورية إستونيا" | "جمهوری استونی" | "جمہوریہ اسٹونیا" | "エストニア" | "エストニア共和国" | "爱沙尼亚" | "爱沙尼亚共和国" | "에스토니아 공화국" | "에스토니아" -> Some Estonia
  | "ESwatini" | "Essuatíni" | "Esuatini" | "Esvatini Krallığı" | "Esvatini" | "Eswatini" | "Kingdom of Eswatini" | "Koninkrijk eSwatini" | "Konungariket Eswatini" | "Kraljevina Esvatini" | "Kraljevina eSwatini" | "Królestwo Suazi" | "Königreich Eswatini" | "Ngwane" | "Regno di eSwatini" | "Reino de eSwatini" | "Rouantelezh Eswatini" | "Royaume d’Eswatini" | "Svazijské království" | "Svazijské kráľovstvo" | "Swatini" | "Swaziland" | "Swazimaan kuningaskunta" | "Szváziföld" | "Szváziföldi Királyság" | "Umbuso weSwatini" | "eSwatini Kuningriik" | "eSwatini" | "weSwatini" | "Королевство Свазиленд" | "Свазиленд" | "إسواتيني" | "اسواتینی" | "سوازی لینڈ" | "مملكة إسواتيني" | "مملکتِ سوازی لینڈ" | "پادشاهی سوازیلند" | "エスワティニ" | "エスワティニ王国" | "斯威士兰" | "斯威士兰王国" | "에스와티니 왕국" | "에스와티니" -> Some Eswatini
  | "Demokratische Bundesrepublik Äthiopien" | "Demokratiska förbundsrepubliken Etiopien" | "Ethiopia" | "Ethiopië" | "Etioopia Demokraatlik Liitvabariik" | "Etioopia" | "Etiopia" | "Etiopian demokraattinen liittotasavalta" | "Etiopie" | "Etiopien" | "Etiopija" | "Etiopská federativní demokratická republika" | "Etiopía" | "Etiyopya Federal Demokratik Cumhuriyeti" | "Etiyopya" | "Etióp Szövetségi Demokratikus Köztársaság" | "Etiópia" | "Etiópska federatívna demokratická republika" | "Federal Democratic Republic of Ethiopia" | "Federale Democratische Republiek Ethiopië" | "Federalna Demokratyczna Republika Etiopii" | "Repubblica federale democratica di Etiopia" | "Republik Demokratel Kevredadel Etiopia" | "República Democrática Federal de Etiopía" | "República Federal Democrática da Etiópia" | "République fédérale démocratique d'Éthiopie" | "Savezna Demokratska Republika Etiopija" | "Äthiopien" | "Éthiopie" | "ʾĪtyōṗṗyā" | "Федеративная Демократическая Республика Эфиопия" | "Эфиопия" | "إثيوبيا" | "اِتیوپی" | "ایتھوپیا" | "جمهورية إثيوبيا الفدرالية الديموقراطية" | "جمهوری فدرال دموکراتیک اتیوپی" | "وفاقی جمہوری جمہوریہ ایتھوپیا" | "ኢትዮጵያ" | "የኢትዮጵያ ፌዴራላዊ ዲሞክራሲያዊ ሪፐብሊክ" | "エチオピア" | "エチオピア連邦民主共和国" | "埃塞俄比亚" | "埃塞俄比亚联邦民主共和国" | "에티오피아 연방 민주 공화국" | "에티오피아" -> Some Ethiopia
  | "Falkandinsaaret" | "Falkland (Malvina) Adaları" | "Falkland Islands (Malvinas)" | "Falkland Islands" | "Falkland eilanden" | "Falkland-szigetek" | "Falklandeilanden" | "Falklandi saared" | "Falklandinseln" | "Falklandski Otoci" | "Falklandski otoci" | "Falklandské ostrovy" | "Falklandsöarna" | "Falklandy" | "Folklandska ostrva" | "Ilhas Malvinas" | "Inizi Maloù" | "Islas Malvinas" | "Isole Falkland o Isole Malvine" | "Isole Falkland" | "islas Malvinas" | "Îles Malouines" | "Фолклендские острова" | "جزائر فاکلینڈ" | "جزایر فالکلند" | "جزر فوكلاند" | "フォークランド諸島" | "フォークランド（マルビナス）諸島" | "福克兰群岛" | "포클랜드 제도" -> Some Falkland_Islands
  | "Faeroe Islands" | "Faerské ostrovy" | "Faeröer" | "Faroe Adaları" | "Faroe Islands" | "Farska Ostrva" | "Farski Otoci" | "Feröer" | "Färsaaret" | "Färöarna" | "Färöer" | "Färöer-Inseln" | "Fääri saared" | "Færøerne" | "Føroyar" | "Ilhas Faroe" | "Ilhas Faroé" | "Inizi Faero" | "Islas Faroe" | "Islas Feroe" | "Isole Far Oer" | "Isole Faroe" | "Wyspy Owcze" | "Îles Féroé" | "Фарерские острова" | "جزائر فارو" | "جزایر فاروئه" | "جزر فارو" | "フェロー諸島" | "法罗群岛" | "페로 제도" -> Some Faroe_Islands
  | "Fidji" | "Fidschi" | "Fidzsi-szigetek" | "Fidzsi-szigeteki Köztársaság" | "Fidżi" | "Fidži Vabariik" | "Fidži" | "Fidžin tasavalta" | "Figi" | "Fiji Cumhuriyeti" | "Fiji" | "Fijī Gaṇarājya" | "Fiyi" | "Fiđi" | "Fiǆi" | "Fiǆijská republika" | "Matanitu Tugalala o Viti" | "Matanitu ko Viti" | "Repubblica di Figi" | "Republic of Fiji" | "Republiek Fiji" | "Republik Fidji" | "Republik Fidschi" | "Republika Fidżi" | "Republika Fidži" | "Republika Fidžijských ostrovů" | "Republiken Fiji" | "República de Fiji" | "République des Fidji" | "Viti" | "Республика Фиджи" | "Фиджи" | "جمهورية جزر فيجي" | "جمهوری جزایر فیجی" | "جمہوریہ فجی" | "فجی" | "فيجي" | "فیجی" | "फिजी" | "रिपब्लिक ऑफ फीजी" | "フィジー" | "フィジー諸島共和国" | "斐济" | "斐济共和国" | "피지 공화국" | "피지" -> Some Fiji
  | "Finland" | "Finlande" | "Finlandia" | "Finlandiya Cumhuriyeti" | "Finlandiya" | "Finlândia" | "Finn Köztársaság" | "Finnland" | "Finnország" | "Finska" | "Finsko" | "Finská republika" | "Fínska republika" | "Fínsko" | "Repubblica di Finlandia" | "Republic of Finland" | "Republiek Finland" | "Republik Finland" | "Republik Finnland" | "Republika Finlandii" | "Republika Finska" | "Republiken Finland" | "República da Finlândia" | "República de Finlandia" | "République de Finlande" | "Soome Vabariik" | "Soome" | "Suomen tasavalta" | "Suomi" | "Финляндия" | "Финляндская Республика" | "جمهورية فنلندا" | "جمهوری فنلاند" | "جمہوریہ فن لینڈ" | "فن لینڈ" | "فنلاند" | "فنلندا" | "フィンランド" | "フィンランド共和国" | "芬兰" | "芬兰共和国" | "핀란드 공화국" | "핀란드" -> Some Finland
  | "France" | "Francia Köztársaság" | "Francia" | "Franciaország" | "Francie" | "Francja" | "Francouzská republika" | "Francuska Republika" | "Francuska" | "Francúzska republika" | "Francúzsko" | "Frankreich" | "Frankrijk" | "Frankrike" | "Fransa Cumhuriyeti" | "Fransa" | "Franse Republiek" | "Französische Republik" | "França" | "Frañs" | "French Republic" | "Prantsuse Vabariik" | "Prantsusmaa" | "Ranska" | "Ranskan tasavalta" | "Repubblica francese" | "Republik Frañs" | "Republika Francuska" | "Republiken Frankrike" | "República Francesa" | "República francés" | "République française" | "Франция" | "Французская Республика" | "الجمهورية الفرنسية" | "جمهوری فرانسه" | "جمہوریہ فرانس" | "فرانس" | "فرانسه" | "فرنسا" | "フランス" | "フランス共和国" | "法兰西共和国" | "法国" | "프랑스 공화국" | "프랑스" -> Some France
  | "Francia Guyana" | "Francouzská Guyana" | "Francuska Gvajana" | "Francúzska Guyana" | "Frans-Guyana" | "Franska Guyana" | "Fransız Guyanası" | "Französisch-Guayana" | "French Guiana" | "Gijana" | "Guajaana departemang" | "Guayana Francesa" | "Guiana Francesa" | "Gujana Francuska" | "Guyana francese" | "Guyane française" | "Guyane" | "Gwiana C'hall" | "Prantsuse Guajaana" | "Ranskan Guayana" | "Гвиана" | "Французская Гвиана" | "غويانا الفرنسية" | "غويانا" | "فرانسیسی گیانا" | "گویان فرانسه" | "フランス領ギアナ" | "法属圭亚那" | "프랑스령 기아나" -> Some French_Guiana
  | "Francia Polinézia" | "Francouzská Polynésie" | "Francuska Polinezija" | "Francúzska Polynézia" | "Frans-Polynesië" | "Franska Polynesien" | "Fransız Polinezyası" | "Französisch-Polynesien" | "French Polynesia" | "Polinesia Francesa" | "Polinesia Francese" | "Polinesia francés" | "Polinezia C'hall" | "Polinezja Francuska" | "Polinésia Francesa" | "Polynésie française" | "Prantsuse Polüneesia" | "Pōrīnetia Farāni" | "Ranskan Polynesia" | "Французская Полинезия" | "بولينزيا الفرنسية" | "فرانسیسی پولینیشیا" | "پُلی‌نِزی فرانسه" | "フランス領ポリネシア" | "法属波利尼西亚" | "프랑스령 폴리네시아" -> Some French_Polynesia
  | "Douaroù Aostral hag Antarktikel Frañs" | "Francia déli és antarktiszi területek" | "Francouzská jižní a antarktická území" | "Francuske južne i antarktičke zemlje" | "Francuski južni i antarktički teritoriji" | "Francuskie Terytoria Południowe i Antarktyczne" | "Francúzske juŽné a antarktické územia" | "Francúzske južné a antarktické územia" | "Franse Gebieden in de zuidelijke Indische Oceaan" | "Franska syd- och Antarktisterritorierna" | "Franska södra territorierna" | "Fransız Güney ve Antarktika Toprakları" | "Französische Süd- und Antarktisgebiete" | "French Southern Territories" | "French Southern and Antarctic Lands" | "Gebiet der Französisch Süd- und Antarktisgebiete" | "Grondgebied van de Franse Zuidelijke en Antarctische gebieden" | "Prantsuse Lõunaalad" | "Ranskan eteläiset ja antarktiset alueet" | "Teritoriju Francuski južni i antarktički teritoriji" | "Teritorium Francouzská jižní a antarktická území" | "Terras Austrais e Antárticas Francesas" | "Terres australes et antarctiques françaises" | "Territoire des Terres australes et antarctiques françaises" | "Territori Francesi del Sud" | "Territorio del Francés Tierras australes y antárticas" | "Territorio della australi e antartiche francesi Terre" | "Território do Sul e Antártica Francesa" | "Tierras Australes y Antárticas Francesas" | "Tiriad Douaroù Aostral hag Antarktikel Frañs" | "Территория Французские Южные и Антарктические земли" | "Французские Южные и Антарктические территории" | "أراض فرنسية جنوبية وأنتارتيكية" | "سرزمین جنوبی فرانسیسیہ و انٹارکٹیکا" | "سرزمینِ جنوبی فرانسیسیہ و انٹارکٹیکہ" | "سرزمین‌های جنوبی و جنوبگانی فرانسه" | "مقاطعات وأقاليم ما وراء البحار الفرنسية" | "フランス領南方・南極地域" | "フランス領極南諸島" | "法国南部和南极土地" | "프랑스령 남부와 남극 지역" -> Some French_Southern_And_Antarctic_Lands
  | "Gabon Cumhuriyeti" | "Gabon Republika" | "Gabon" | "Gabonese Republic" | "Gaboni Köztársaság" | "Gaboni Vabariik" | "Gabonin tasavalta" | "Gabonska Republika" | "Gabonská republika" | "Gabun" | "Gabunische Republik" | "Gabão" | "Gabón" | "Repubblica gabonese" | "Republiek Gabon" | "Republik Gabonat" | "Republika Gabońska" | "Republiken Gabon" | "República de Gabón" | "República do Gabão" | "République Gabonaise" | "République gabonaise" | "Габон" | "Габона Республика" | "الغابون" | "جمهورية الغابون" | "جمهوری گابُن" | "جمہوریہ گیبون" | "گابن" | "گیبون" | "ガボン" | "ガボン共和国" | "加蓬" | "加蓬共和国" | "가봉 공화국" | "가봉" -> Some Gabon
  | "Gambia Vabariik" | "Gambia" | "Gambiai Köztársaság" | "Gambian tasavalta" | "Gambie" | "Gambija" | "Gambijská republika" | "Gambiya Cumhuriyeti" | "Gambiya" | "Gâmbia" | "Repubblica del Gambia" | "Republic of the Gambia" | "Republiek Gambia" | "Republik Gambia" | "Republik islamek ar Gambia" | "Republika Gambii" | "Republika Gambija" | "Republiken Gambia" | "República da Gâmbia" | "República de Gambia" | "République de Gambie" | "Гамбия" | "Республика Гамбия" | "جمهورية غامبيا" | "جمهوری گامبیا" | "جمہوریہ گیمبیا" | "غامبيا" | "گامبیا" | "گیمبیا" | "ガンビア" | "ガンビア共和国" | "冈比亚" | "冈比亚共和国" | "감비아 공화국" | "감비아" -> Some Gambia
  | "Georgia" | "Georgien" | "Georgië" | "Geórgia" | "Gruusia" | "Gruzie" | "Gruzija" | "Gruzja" | "Gruzínsko" | "Grúzia" | "Géorgie" | "Gürcistan" | "Jorjia" | "Republik Jorjia" | "République de Géorgie" | "Sakartvelo" | "Грузия" | "جارجیا" | "جورجيا" | "گرجستان" | "საქართველო" | "ジョージア" | "格鲁吉亚" -> Some Georgia
  | "Alamagn" | "Alemanha" | "Alemania" | "Allemagne" | "Almanya Federal Cumhuriyeti" | "Almanya" | "Bondsrepubliek Duitsland" | "Bundesrepublik Deutschland" | "Deutschland" | "Duitsland" | "Federal Republic of Germany" | "Förbundsrepubliken Tyskland" | "Germania" | "Germany" | "Nemačka" | "Nemecko" | "Nemecká spolková republika" | "Niemcy" | "Njemačka Federativna Republika" | "Njemačka" | "Német Szövetségi Köztársaság" | "Németország" | "Německo" | "Repubblica federale di Germania" | "Republik Kevreadel Alamagn" | "Republika Federalna Niemiec" | "República Federal da Alemanha" | "República Federal de Alemania" | "République fédérale d'Allemagne" | "Saksa" | "Saksamaa Liitvabariik" | "Saksamaa" | "Saksan liittotasavalta" | "Savezna Republika Nemačka" | "Spolková republika Německo" | "Tyskland" | "Германия" | "Федеративная Республика Германия" | "آلمان" | "ألمانيا" | "جرمنی" | "جمهورية ألمانيا الاتحادية" | "جمهوری فدرال آلمان" | "وفاقی جمہوریہ جرمنی" | "ドイツ" | "ドイツ連邦共和国" | "德国" | "德意志联邦共和国" | "독일 연방 공화국" | "독일" -> Some Germany
  | "Gana Cumhuriyeti" | "Gana" | "Ghana Vabariik" | "Ghana" | "Ghanan tasavalta" | "Ghanská republika" | "Ghána" | "Ghánai Köztársaság" | "Repubblica del Ghana" | "Republic of Ghana" | "Republiek Ghana" | "Republik Ghana" | "Republika Gana" | "Republika Ghany" | "Republiken Ghana" | "República de Ghana" | "República do Gana" | "République du Ghana" | "Гана" | "Республика Гана" | "جمهورية غانا" | "جمهوری غنا" | "جمہوریہ گھانا" | "غانا" | "غنا" | "گھانا" | "ガーナ" | "ガーナ共和国" | "加纳" | "加纳共和国" | "가나 공화국" | "가나" -> Some Ghana
  | "Cebelitarık" | "Gibilterra" | "Gibraltar" | "Gibraltár" | "Jibraltar" | "Гибралтар" | "جبل الطارق" | "جبل طارق" | "ジブラルタル" | "直布罗陀" | "지브롤터" -> Some Gibraltar
  | "Elláda" | "Grecia" | "Grecja" | "Greece" | "Grekland" | "Gres" | "Greécko" | "Griechenland" | "Griekenland" | "Grèce" | "Grécia" | "Grécka republika" | "Grčka" | "Görög Köztársaság" | "Görögország" | "Helen Cumhuriyeti" | "Helenska Republika" | "Helleenien tasavalta" | "Helleense Republiek" | "Hellenic Republic" | "Hellenische Republik" | "Kreeka Vabariik" | "Kreeka" | "Kreikka" | "Repubblica ellenica" | "Republik Hellenek" | "Republika Grecka" | "Republika Grčka" | "Republiken Grekland" | "República Helénica" | "République hellénique" | "Yunanistan" | "Řecko" | "Řecká republika" | "Ελλάδα" | "Ελληνική Δημοκρατία" | "Греция" | "Греческая Республика" | "الجمهورية الهيلينية" | "اليونان" | "جمهوری یونان" | "جمہوریہ ہیلینیہ" | "یونان" | "ギリシャ" | "ギリシャ共和国" | "希腊" | "希腊共和国" | "그리스 공화국" | "그리스" -> Some Greece
  | "Greenland" | "Grenland" | "Grenlandia" | "Greunland" | "Groenland" | "Groenlandia" | "Groenlândia" | "Gronelândia" | "Groönlanti" | "Grónsko" | "Grönland" | "Gröönimaa" | "Grønland" | "Kalaallit Nunaat" | "Гренландия" | "جرينلاند" | "گروئنلند" | "گرین لینڈ" | "گرینلند" | "グリーンランド" | "格陵兰" | "그린란드" -> Some Greenland
  | "Granada" | "Grenada" | "Grenade" | "Гренада" | "غرينادا" | "گرنادا" | "گریناڈا" | "グレナダ" | "格林纳达" | "그레나다" -> Some Grenada
  | "Guadalupe" | "Guadeloupa" | "Guadeloupe" | "Guadeloupen departmentti" | "Guadeloupe’i ja sõltkondade departemang" | "Gvadalupa" | "Gvadelup" | "Gwadeloup" | "Gwadelupa" | "Gwadloup" | "Гваделупа" | "غوادلوب" | "گوادلوپ" | "گواڈیلوپ" | "グアドループ" | "グアドループ島" | "瓜德罗普岛" | "과들루프" -> Some Guadeloupe
  | "Guam Toprağı" | "Guam" | "Guami ala" | "Guåhån" | "Gvam" | "Terytorium Guamu" | "Гуам" | "غوام" | "گوآم" | "گوام" | "グアム" | "关岛" | "괌" -> Some Guam
  | "Guatemala Cumhuriyeti" | "Guatemala Vabariik" | "Guatemala" | "Guatemalai Köztársaság" | "Guatemalan tasavalta" | "Guatemalská republika" | "Gvatemala" | "Gwatemala" | "Repubblica del Guatemala" | "Republiek Guatemala" | "Republik Guatemala" | "Republika Guatemala" | "Republika Gvatemala" | "Republika Gwatemali" | "Republiken Guatemala" | "República da Guatemala" | "República de Guatemala" | "République du Guatemala" | "Гватемала" | "Республика Гватемала" | "جمهورية غواتيمالا" | "جمهوری گواتِمالا" | "جمہوریہ گواتیمالا" | "غواتيمالا" | "گواتِمالا" | "گواتیمالا" | "グアテマラ" | "グアテマラ共和国" | "危地马拉" | "危地马拉共和国" | "과테말라 공화국" | "과테말라" -> Some Guatemala
  | "Bailiado de Guernsey" | "Bailiwick of Guernsey" | "Bailliage de Guernesey" | "Bailía de Guernsey" | "Baliato di Guernsey" | "Baliwat Guernsey" | "Baljuwschap Guernsey" | "Bejlivik Gernzi" | "Dgèrnésiais" | "Gernzi" | "Guernesey" | "Guernsey Muhafızlığı" | "Guernsey foogtkond" | "Guernsey" | "Gwernenez" | "Rychtářství Guernsey" | "Struka Guernsey" | "Vogtei Guernsey" | "Гернси" | "Коронное владение Гернси" | "غيرنزي" | "گرنزی رودبار" | "گرنزی" | "ガーンジー" | "ガーンジー島" | "根西岛" | "건지 섬" -> Some Guernsey
  | "Gine Cumhuriyeti" | "Gine" | "Ginea" | "Guinea Vabariik" | "Guinea" | "Guineai Köztársaság" | "Guinean tasavalta" | "Guinee" | "Guinejská republika" | "Guiné" | "Guinée" | "Gvineja" | "Gwinea" | "Repubblica di Guinea" | "Republic of Guinea" | "Republiek Guinee" | "Republik Ginea" | "Republik Guinea" | "Republika Gvineja" | "Republika Gwinei" | "Republiken Guinea" | "República da Guiné" | "República de Guinea" | "République de Guinée" | "Гвинея" | "Республика Гвинея" | "جمهورية غينيا" | "جمہوریہ گنی" | "غينيا" | "مملکت مستقل پاپوآ گینه نو" | "گنی" | "ギニア" | "ギニア共和国" | "几内亚" | "几内亚共和国" | "기니 공화국" | "기니" -> Some Guinea
  | "Bissau-Guinea" | "Bissau-Guineai Köztársaság" | "Gine-Bissau Cumhuriyeti" | "Gine-Bissau" | "Ginea-Bissau" | "Guinea-Bissau Vabariik" | "Guinea-Bissau" | "Guinea-Bissaun tasavalta" | "Guinea-Bisáu" | "Guinee-Bissau" | "Guinejsko-bissauská republika" | "Guiné-Bissau" | "Guinée-Bissau" | "Gvineja Bisao" | "Gvineja Bisau" | "Gwinea Bissau" | "Repubblica di Guinea-Bissau" | "Republic of Guinea-Bissau" | "Republiek Guinee-Bissau" | "Republik Ginea-Bissau" | "Republik Guinea-Bissau" | "Republika Guinea-Bissau" | "Republika Gvineja Bisao" | "Republika Gvineja Bisau" | "Republika Gwinei Bissau" | "Republiken Guinea-Bissau" | "República da Guiné-Bissau" | "República de Guinea-Bissau" | "République de Guinée-Bissau" | "Гвинея-Бисау" | "Республика Гвинея -Бисау" | "جمهورية غينيا بيساو" | "جمهوری گینه بیسائو" | "جمہوریہ گنی بساؤ" | "غينيا بيساو" | "گنی بساؤ" | "گینه بیسائو" | "ギニアビサウ" | "ギニアビサウ共和国" | "几内亚比绍" | "几内亚比绍共和国" | "기니비사우 공화국" | "기니비사우" -> Some Guinea_Bissau
  | "Co -operative Republic of Guyana" | "Co -operative República da Guiana" | "Co-operative Republic of Guyana" | "Coöperatieve Republiek Guyana" | "Guayanan osuustoiminnallinen tasavalta" | "Gujana" | "Guyana Kooperatif Cumhuriyeti" | "Guyana Vabariik" | "Guyanai Szövetkezeti Köztársaság" | "Guyanská kooperatívna republika" | "Kooperacyjna Republika Gujany" | "Kooperativa republiken Guyana" | "Kooperative Republik Guyana" | "Kooperativna Republika Gvajana" | "Kooperativní republika Guyana" | "Republik Kevelourel Gwiana" | "República Cooperativa de Guyana" | "République coopérative de Guyana" | "Zadruga Republika Gvajana" | "Гайана" | "Кооперативная Республика Гайана" | "تعاونی جمہوریہ گیانا" | "جمهورية غيانا التعاونية" | "جمهوری تعاونی گویان" | "غيانا" | "گویان" | "ガイアナ" | "ガイアナ共和国" | "圭亚那" | "圭亚那共和国" | "가이아나 협동 공화국" | "가이아나" -> Some Guyana
  | "Ayiti" | "Haiti Cumhuriyeti" | "Haiti Köztársaság" | "Haiti Vabariik" | "Haiti" | "Haitin tasavalta" | "Haitská republika" | "Haití" | "Haïti" | "Repiblik Ayiti" | "Repubblica di Haiti" | "Republic of Haiti" | "Republiek Haïti" | "Republik Haiti" | "Republika Haiti" | "Republiken Haiti" | "República de Haití" | "República do Haiti" | "République d'Haïti" | "Гаити" | "Республика Гаити" | "جمهورية هايتي" | "جمهوری هائیتی" | "جمہوریہ ہیٹی" | "هائیتی" | "هايتي" | "ہیٹی" | "ハイチ" | "ハイチ共和国" | "海地" | "海地共和国" | "아이티 공화국" | "아이티" -> Some Haiti
  | "Enez Heard hag Inizi McDonald" | "Heard Adası ve McDonald Adaları" | "Heard Island and McDonald Islands" | "Heard en McDonaldeilanden" | "Heard ja McDonald" | "Heard ja McDonaldinsaaret" | "Heard und McDonaldinseln" | "Heard und die McDonaldinseln" | "Heard- och McDonaldöarna" | "Heard-en McDonaldeilanden" | "Heard-sziget és McDonald-szigetek" | "Heardi ja McDonaldi saarte ala" | "Heardov ostrov" | "Heardův ostrov a McDonaldovy ostrovy" | "Herdovo ostrvo i Makdonaldova ostrva" | "Ilha Heard e Ilhas McDonald" | "Inizi Heard ha McDonald" | "Islas Heard y McDonald" | "Isole Heard e McDonald" | "Otok Heard i otočje McDonald" | "Teritórium Heardovho ostrova a Macdonaldových ostrovov" | "Terytorium Wysp Heard i McDonalda" | "Wyspy Heard i McDonalda" | "Îles Heard-et-MacDonald" | "Остров Херд и острова Макдональд" | "جزيرة هيرد وجزر ماكدونالد" | "جزیره هرد و جزایر مک‌دونالد" | "جزیرہ ہرڈ و جزائر مکڈونلڈ" | "ハード島とマクドナルド諸島" | "ハード島・マクドナルド諸島" | "赫德岛和麦当劳群岛" | "허드 맥도널드 제도" -> Some Heard_Island_And_Mcdonald_Islands
  | "Honduras Cumhuriyeti" | "Honduras" | "Hondurase Vabariik" | "Hondurasi Köztársaság" | "Hondurasin tasavalta" | "Honduraská republika" | "Repubblica di Honduras" | "Republic of Honduras" | "Republiek Honduras" | "Republik Honduras" | "Republika Honduras" | "Republika Hondurasu" | "Republiken Honduras" | "República de Honduras" | "République du Honduras" | "Гондурас" | "Республика Гондурас" | "جمهورية هندوراس" | "جمهوری هندوراس" | "جمہوریہ ہونڈوراس" | "هندوراس" | "هُندوراس" | "ہونڈوراس" | "ホンジュラス" | "ホンジュラス共和国" | "洪都拉斯" | "洪都拉斯共和国" | "온두라스 공화국" | "온두라스" -> Some Honduras
  | "Hong Kong Posebnog upravnog područjaNarodne Republike Kine" | "Hong Kong Regione amministrativa speciale della Repubblica Popolare Cinese" | "Hong Kong Região Administrativa Especial da República Popular da China" | "Hong Kong Región Administrativa Especial de la República Popular China" | "Hong Kong Special Administrative Region of the People's Republic of China" | "Hong Kong Speciale Administratieve Regio van de Volksrepubliek China" | "Hong Kong Специальный административный район Китайской Народной Республики Китая" | "Hong Kong" | "Hong Kongin erityishallintoalue" | "Hongkong specijalna administrativna oblast Narodne Republike Kine" | "Hongkong" | "Hongkongi erihalduspiirkond" | "Rannvro velestradurel arbennik Hong Kong eus Republik pobl Sina" | "Région administrative spéciale de Hong Kong de la République populaire de Chine" | "Sonderverwaltungszone Hongkong der Volksrepublik China" | "Specjalny Region Administracyjny Chińskiej Republiki Ludowej Hongkong" | "Zvláštní administrativní oblast Čínské lidové republiky Hongkong" | "çin Halk Cumhuriyeti Hong Kong özel İdari Bölgesi" | "Špeciálna administratívna oblasťČínskej ľudovej republiky Hongkong" | "Гонконг" | "منطقة هونغ كونغ الادارية التابعة لجمهورية الصين الشعبية" | "هونغ كونغ" | "هُنگ کُنگ" | "ہانگ کانگ عوامی جمہوریہ چین کا خصوصی انتظامی علاقہ" | "ہانگ کانگ" | "中华人民共和国香港特别行政区" | "香港" | "香港特別行政区" | "중화인민공화국 홍콩 특별행정구" | "홍콩" -> Some Hong_Kong
  | "Hongarije" | "Hongrie" | "Hungaria" | "Hungary" | "Hungria" | "Hungría" | "Macaristan" | "Madžarska" | "Magyarország" | "Maďarsko" | "Mađarska" | "Ungari" | "Ungarn" | "Ungern" | "Ungheria" | "Unkari" | "Węgry" | "Венгрия" | "الجمهورية المجرية" | "المجر" | "مجارستان" | "ハンガリー" | "匈牙利" | "헝가리" -> Some Hungary
  | "IJsland" | "Iceland" | "Island" | "Islanda" | "Islande" | "Islandi Vabariik" | "Islandia" | "Islandská republika" | "Islanti" | "Islândia" | "Izland" | "Lýðveldið Ísland" | "Republic of Iceland" | "Republika Island" | "Republika Islandii" | "République d'Islande" | "Ísland" | "İzlanda" | "Исландия" | "آئس لینڈ" | "آيسلندا" | "ایسلند" | "جمهوری ایسلند" | "アイスランド" | "冰岛" | "아이슬란드 공화국" | "아이슬란드" -> Some Iceland
  | "Bharat Ganrajya" | "Bhārat" | "Hindistan Cumhuriyeti" | "Hindistan" | "Inde" | "India Vabariik" | "India" | "Indiai Köztársaság" | "Indická republika" | "Indie" | "Indien" | "Indija" | "Intia" | "Intian tasavalta" | "Repubblica dell'India" | "Republic of India" | "Republiek India" | "Republik India" | "Republik Indien" | "Republika Indii" | "Republika Indija" | "Republiken Indien" | "República da Índia" | "República de la India" | "République de l'Inde" | "Índia" | "Индия" | "Республика Индия" | "الهند" | "بھارت" | "جمهورية الهند" | "جمهوری هندوستان" | "جمہوریہ بھارت" | "هند" | "भारत गणराज्य" | "भारत" | "இந்தியக் குடியரசு" | "இந்தியா" | "インド" | "印度" | "印度共和国" -> Some India
  | "Endonezya Cumhuriyeti" | "Endonezya" | "Indoneesia Vabariik" | "Indoneesia" | "Indonesia" | "Indonesian tasavalta" | "Indonesien" | "Indonesië" | "Indonezia" | "Indonezija" | "Indonezja" | "Indonésia" | "Indonésie" | "Indonéská republika" | "Indonéz Köztársaság" | "Indonézia" | "Indonézska republika" | "Repubblica di Indonesia" | "Republic of Indonesia" | "Republiek Indonesië" | "Republik Indonesia" | "Republik Indonesien" | "Republik Indonezia" | "Republika Indonezija" | "Republika Indonezji" | "Republiken Indonesien" | "República da Indonésia" | "República de Indonesia" | "République d'Indonésie" | "Индонезия" | "Республика Индонезия" | "إندونيسيا" | "اندونزی" | "انڈونیشیا" | "جمهورية إندونيسيا" | "جمهوری اندونزی" | "جمہوریہ انڈونیشیا" | "インドネシア" | "インドネシア共和国" | "印度尼西亚" | "印度尼西亚共和国" | "인도네시아 공화국" | "인도네시아" -> Some Indonesia
  | "Iraan" | "Iraani Islamivabariik" | "Iran" | "Iran, Islamic Republic of" | "Iranin islamilainen tasavalta" | "Irán" | "Iráni Iszlám Köztársaság" | "Iránska islamská republika" | "Irão" | "Islamic Republic of Iran" | "Islamische Republik Iran" | "Islamiska republiken Iran" | "Islamitische Republiek Iran" | "Islamska Republika Iran" | "Islamska Republika Iranu" | "Islámská republika Írán" | "Jomhuri-ye Eslāmi-ye Irān" | "Repubblica islamica dell'Iran" | "Republik Islamek Iran" | "República Islámica de Irán" | "República Islâmica do Irã" | "République islamique d'Iran" | "Írán" | "İran İslam Cumhuriyeti" | "İran" | "Иран" | "Исламская Республика Иран" | "إيران" | "ایران" | "جمهورية إيران الإسلامية" | "جمهوری اسلامی ایران" | "جمہوریہ ایران" | "イラン" | "イラン・イスラム共和国" | "伊朗" | "伊朗伊斯兰共和国" | "이란 이슬람 공화국" | "이란" -> Some Iran
  | "Iraagi Vabariik" | "Iraak" | "Iracká republika" | "Irak Cumhuriyeti" | "Irak" | "Iraki Köztársaság" | "Irakin tasavalta" | "Iraq" | "Iraque" | "Irácká republika" | "Irák" | "Jumhūriyyat al-‘Irāq" | "Repubblica dell'Iraq" | "Republic of Iraq" | "Republiek Irak" | "Republik Irak" | "Republika Irak" | "Republika Iraku" | "Republiken Irak" | "República de Irak" | "República do Iraque" | "République d'Irak" | "Ирак" | "Республика Ирак" | "العراق" | "جمهورية العراق" | "جمهوری عراق" | "جمہوریہ عراق" | "عراق" | "کۆماری عێراق" | "کۆماری" | "ܩܘܼܛܢܵܐ ܐܝܼܪܲܩ" | "ܩܘܼܛܢܵܐ" | "イラク" | "イラク共和国" | "伊拉克" | "伊拉克共和国" | "이라크 공화국" | "이라크" -> Some Iraq
  | "Ierland" | "Iirimaa" | "Ireland" | "Irland" | "Irlanda" | "Irlande" | "Irlandia" | "Irlannin tasavalta" | "Irlanti" | "Irska" | "Irsko" | "Iwerzhon" | "Poblacht na hÉireann" | "Repubblica d'Irlanda" | "Republic of Ireland" | "Republik Irland" | "Republik Iwerzhon" | "Republika Irlandii" | "Republika Irska" | "República da Irlanda" | "República de Irlanda" | "République d'Irlande" | "Éire" | "Ír Köztársaság" | "Írország" | "Írska republika" | "Írsko" | "İrlanda Cumhuriyeti" | "İrlanda" | "Ирландия" | "أيرلندا" | "ایرلند" | "جزیرہ آئرلینڈ" | "جمهورية أيرلندا" | "جمہوریہ جزیرہ آئرلینڈ" | "アイルランド" | "爱尔兰" | "爱尔兰共和国" | "아일랜드 공화국" | "아일랜드" -> Some Ireland
  | "Ellan Vannin or Mannin" | "Ellan Vannin" | "Enez Vanav" | "Ilha de Man" | "Insel Man" | "Isla de Man" | "Isle of Man" | "Isola di Man" | "Man Adası" | "Man" | "Mana ostrvo" | "Mani saar" | "Mann" | "Mannin" | "Mansaari" | "Men Ostrvo" | "Ostrov Man" | "Ostrvo Men" | "Otok Man" | "Wyspa Man" | "Île de Man" | "Остров Мэн" | "آئل آف مین" | "جزيرة مان" | "جزیرهٔ مَن" | "マン島" | "马恩岛" | "맨섬" -> Some Isle_Of_Man
  | "Država Izrael" | "Estado de Israel" | "Iisrael" | "Iisraeli Riik" | "Israel" | "Israele" | "Israelin valtio" | "Israël" | "Izrael" | "Izraelský štát" | "Medīnat Yisrā'el" | "Państwo Izrael" | "Staat Israel" | "Staat Israël" | "Stad Israel" | "State of Israel" | "Staten Israel" | "Stato di Israele" | "Stát Izrael" | "État d'Israël" | "İsrail Devleti" | "İsrail" | "Государство Израиль" | "Израиль" | "ישראל" | "מדינת ישראל" | "إسرائيل" | "اسرائیل" | "دولة إسرائيل" | "ریاستِ اسرائیل" | "فلسطين اشغالی" | "イスラエル" | "イスラエル国" | "以色列" | "以色列国" | "이스라엘" | "이스라엘국" -> Some Israel
  | "Itaalia Vabariik" | "Itaalia" | "Italia" | "Italiaanse Republiek" | "Italian Republic" | "Italian tasavalta" | "Italie" | "Italien" | "Italienische Republik" | "Italija" | "Italië" | "Italská republika" | "Italy" | "Itália" | "Itálie" | "Olasz Köztársaság" | "Olaszország" | "Repubblica italiana" | "Republik Italia" | "Republika Italija" | "Republika Włoska" | "Republiken Italien" | "República Italiana" | "République italienne" | "Talianska republika" | "Taliansko" | "Włochy" | "talijanska Republika" | "İtalya Cumhuriyeti" | "İtalya" | "Италия" | "итальянская Республика" | "إيطاليا" | "اطالیہ" | "الجمهورية الإيطالية" | "ایتالیا" | "جمهوری ایتالیا" | "جمہوریہ اطالیہ" | "イタリア" | "イタリア共和国" | "意大利" | "意大利共和国" | "이탈리아 공화국" | "이탈리아" -> Some Italy
  | "Aod an Olifant" | "Costa d'Avorio" | "Costa de Marfil" | "Costa do Marfim" | "Cote d'Ivoire" | "Côte d'Ivoire" | "Côte d’Ivoire’i Vabariik" | "Elefántcsontpart" | "Elefántcsontparti Köztársaság" | "Elevandiluurannik" | "Elfenbenskusten" | "Fildişi Sahili" | "Ivoorkust" | "Ivory Coast" | "Norsunluurannikko" | "Norsunluurannikon tasavalta" | "Obala Bjelokosti" | "Obala Slonovače" | "Pobržie Slonoviny" | "Pobřeží slonoviny" | "Repubblica della Costa d'Avorio" | "Republic of Côte d'Ivoire" | "Republiek Ivoorkust" | "Republik Aod an Olifant" | "Republik Côte d'Ivoire" | "Republika Côte d'Ivoire" | "Republika Obala Slonovače" | "Republika Pobrežie Slonoviny" | "Republika Pobřeží slonoviny" | "Republiken Elfenbenskusten" | "República da Côte d'Ivoire" | "República de Côte d'Ivoire" | "République de Côte d' Ivoire" | "République de Côte d'Ivoire" | "Кот-д’Ивуар" | "Республика Кот-д'Ивуаре" | "آئیوری کوسٹ" | "جمهورية ساحل العاج" | "جمهوری ساحل عاج" | "جمہوریہ کوت دیواغ" | "ساحل العاج" | "ساحل عاج" | "コートジボワール" | "コートジボワール共和国" | "科特迪瓦" | "科特迪瓦共和国" | "코트디부아르 공화국" | "코트디부아르" -> Some Ivory_Coast
  | "Giamaica" | "Jamaica" | "Jamaika" | "Jamajka" | "Jamaïque" | "Ямайка" | "جامائیکا" | "جامايكا" | "جمیکا" | "ジャマイカ" | "牙买加" | "자메이카" -> Some Jamaica
  | "Giappone" | "Jaapan" | "Japan" | "Japani" | "Japon" | "Japonia" | "Japonsko" | "Japonya" | "Japán" | "Japão" | "Japón" | "Nihon" | "Nippon" | "Япония" | "اليابان" | "جاپان" | "ژاپن" | "日本" | "日本国" | "일본" | "일본국" -> Some Japan
  | "Bailiado de Jersey" | "Bailiwick Jersey" | "Bailiwick of Jersey" | "Bailliage de Jersey" | "Bailliage dé Jèrri" | "Bailía de Jersey" | "Baliato di Jersey" | "Baljuwschap Jersey" | "Bejlivik Džerzi" | "Džerzi" | "Isola di Jersey" | "Jersey foogtkond" | "Jersey" | "Jerzenez" | "Jèrri" | "Rychtářství Jersey" | "Struka od Jersey" | "Vogtei Jersey" | "Джерси" | "Коронное владение Джерси" | "جرزی" | "جيرزي" | "ジャージー" | "ジャージー島" | "泽西岛" | "저지 섬" -> Some Jersey
  | "Giordania" | "Haschemitisches Königreich Jordanien" | "Hashemite Kingdom of Jordan" | "Hashimitiska kungadömet Jordanien" | "Hasjemitisch Koninkrijk Jordanië" | "Hašemitska Kraljevina Jordan" | "Hašemitske Kraljevine Jordan" | "Jordaania Hašimiidi Kuningriik" | "Jordaania" | "Jordan" | "Jordania" | "Jordanian hašemiittinen kunigaskunta" | "Jordanie" | "Jordanien" | "Jordanië" | "Jordańskie Królestwo Haszymidzkie" | "Jordánia" | "Jordánske hášimovské kráľovstvo" | "Jordánsko" | "Jordánské hášimovské království" | "Jordânia" | "Regno hascemita di Giordania" | "Reino Hachemita da Jordânia" | "Reino Hachemita de Jordania" | "Rouantelezh hachemit Jordania" | "Royaume hachémite de Jordanie" | "al-Mamlakah al-Urdunīyah al-Hāshimīyah" | "ürdün Hâşimi Krallığı" | "ürdün" | "Иордания" | "Иорданского Хашимитского Королевства" | "اردن" | "الأردن" | "المملكة الأردنية الهاشمية" | "پادشاهی اُردُن هاشمی" | "ھاشمی مملکتِ اردن" | "ヨルダン" | "ヨルダン・ハシミテ王国" | "约旦" | "约旦哈希姆王国" | "요르단 하심 왕국" | "요르단" -> Some Jordan
  | "Cazaquistão" | "Kasachstan" | "Kasahstan" | "Kasahstani Vabariik" | "Kazachstan" | "Kazachstán" | "Kazah Köztársaság" | "Kazahstan" | "Kazahsztán" | "Kazajistán" | "Kazakhstan" | "Kazakistan Cumhuriyeti" | "Kazakistan" | "Kazakstan" | "Kazakstanin tasavalta" | "Kazašská republika" | "Qazaqstan Respublïkası" | "Qazaqstan" | "Repubblica del Kazakhstan" | "Republic of Kazakhstan" | "Republiek Kazachstan" | "Republik Kasachstan" | "Republik Kazakstan" | "Republika Kazachstanu" | "Republika Kazachstán" | "Republika Kazahstan" | "Republiken Kazakstan" | "República de Kazajstán" | "República do Cazaquistão" | "Respublika Kazakhstan" | "République du Kazakhstan" | "Казахстан" | "Республика Казахстан" | "Қазақстан Республикасы" | "Қазақстан" | "جمهورية كازاخستان" | "جمهوری قزاقستان" | "جمہوریہ قازقستان" | "قازقستان" | "قزاقستان" | "كازاخستان" | "カザフスタン" | "カザフスタン共和国" | "哈萨克斯坦" | "哈萨克斯坦共和国" | "카자흐스탄 공화국" | "카자흐스탄" -> Some Kazakhstan
  | "Jamhuri ya Kenya" | "Keenia Vabariik" | "Keenia" | "Kenia" | "Kenian tasavalta" | "Kenija" | "Kenská republika" | "Kenya Cumhuriyeti" | "Kenya" | "Kenyai Köztársaság" | "Keňa" | "Keňská republika" | "Quénia" | "Repubblica del Kenya" | "Republic of Kenya" | "Republiek Kenia" | "Republik Kenia" | "Republik Kenya" | "Republika Kenii" | "Republika Kenija" | "Republiken Kenya" | "República de Kenya" | "República do Quénia" | "République du Kenya" | "Кения" | "Республика Кения" | "جمهورية كينيا" | "جمهوری کنیا" | "جمہوریہ کینیا" | "كينيا" | "کنیا" | "کینیا" | "ケニア" | "ケニア共和国" | "肯尼亚" | "肯尼亚共和国" | "케냐 공화국" | "케냐" -> Some Kenya
  | "Independent and Sovereign Republic of Kiribati" | "Independente e soberano República de Kiribati" | "Kiribati Cumhuriyeti" | "Kiribati Köztársaság" | "Kiribati Vabariik" | "Kiribati" | "Kiribatin tasavalta" | "Kiribatská republika" | "Onafhankelijke en soevereine republiek Kiribati" | "Repubblica indipendente e sovrano di Kiribati" | "Republic of Kiribati" | "Republik Kiribati" | "Republika Kiribati" | "Republiken Kiribati" | "República Independiente y Soberano de Kiribati" | "Ribaberiki Kiribati" | "République de Kiribati" | "Samostalne i suverene Republike Kiribati" | "Кирибати" | "Независимой и суверенной Республики Кирибати" | "جمهورية كيريباتي" | "جمهوری کیریباتی" | "سلطنت آزاد جمہوریہ کیریباتی" | "كيريباتي" | "کیریباتی" | "キリバス" | "キリバス共和国" | "基里巴斯" | "基里巴斯共和国" | "키리바시 공화국" | "키리바시" -> Some Kiribati
  | "Kosova Cumhuriyeti" | "Kosova" | "Kosovo Vabariik" | "Kosovo" | "Kosovon tasavalta" | "Kosovská republika" | "Kosowo" | "Koszovó" | "Repubblica del Kosovo" | "Republiek Kosovo" | "Republik Kosovo" | "Republika Kosovo" | "Republika Kosowa" | "Republika e Kosovës" | "Republiken Kosovo" | "República de Kosovo" | "República do Kosovo" | "République du Kosovo" | "Косово" | "Република Косово" | "Республика Косово" | "جمهورية كوسوفو" | "جمهوری کوزوو" | "جمہوریہ کوسووہ" | "كوسوفو" | "کوزوو" | "کوسووہ" | "コソボ" | "コソボ共和国" | "科索沃" | "科索沃共和国" | "코소보 공화국" | "코소보" -> Some Kosovo
  | "Dawlat al-Kuwait" | "Država Kuvajt" | "Estado de Kuwait" | "Estado do Kuwait" | "Koeweit" | "Koweit" | "Koweït" | "Kuvait" | "Kuvaiti Állam" | "Kuvajt" | "Kuvajtský štát" | "Kuveidi Riik" | "Kuveit" | "Kuveyt Devleti" | "Kuveyt" | "Kuwait" | "Kuwaitin valtio" | "Kuwejt" | "Państwo Kuwejt" | "Staat Koeweit" | "Staat Kuwait" | "Stad Koweit" | "State of Kuwait" | "Staten Kuwait" | "Stato del Kuwait" | "Stát Kuvajt" | "État du Koweït" | "Государство Кувейт" | "Кувейт" | "الكويت" | "دولة الكويت" | "دولت کویت" | "دولتِ کویت" | "کویت" | "کُویت" | "クウェート" | "クウェート国" | "科威特" | "科威特国" | "쿠웨이트" | "쿠웨이트국" -> Some Kuwait
  | "Kirghizistan" | "Kirgiisi Vabariik" | "Kirgisia" | "Kirgisian tasavalta" | "Kirgisische Republik" | "Kirgisistan" | "Kirgiska Republika" | "Kirgistan" | "Kirgistanu" | "Kirgiz Köztársaság" | "Kirgizische Republiek" | "Kirgizistan" | "Kirgizisztán" | "Kirgizië" | "Kirgizsko" | "Kirgizská republika" | "Kirgizstan" | "Kirguizistán" | "Kyrgyz Republic" | "Kyrgyz Respublikasy" | "Kyrgyzská republika" | "Kyrgyzstan" | "Kyrgyzstán" | "Kõrgõzstan" | "Kırgız Cumhuriyeti" | "Kırgızistan" | "Quirguistão" | "Republik Kirgiz" | "Republika Kirgiska" | "Republiken Kirgizistan" | "República Kirguisa" | "República do Quirguistão" | "République kirghize" | "Киргизия" | "Кыргыз Республикасы" | "Кыргызская Республика" | "Кыргызстан" | "الجمهورية القيرغيزية" | "جمهوری قِرقیزستان" | "جمہوریہ کرغیزستان" | "قرقیزستان" | "قيرغيزستان" | "کرغیزستان" | "キルギス" | "キルギス共和国" | "吉尔吉斯斯坦" | "吉尔吉斯斯坦共和国" | "키르기스 공화국" | "키르기스스탄" -> Some Kyrgyzstan
  | "Demokratische Volksrepublik Laos" | "Demokratiska folkrepubliken Laos" | "Lao Democratische Volksrepubliek" | "Lao People's Democratic Republic" | "Lao" | "Laos Demokratik Halk Cumhuriyeti" | "Laos" | "Laos, República Democrática" | "Laose Demokraatlik Rahvavabariik" | "Laosin demokraattinen kansantasavalta" | "Laoská lidově demokratická republika" | "Laoská ľudovodemokratická republika" | "Laosz" | "Laoszi Népi Demokratikus Köztársaság" | "Laotańska Republika Ludowo-Demokratyczna" | "Narodna Demokratska Republika Laos" | "Narodna Demokratska Republika" | "Repubblica democratica popolare del Laos" | "Republik Demokratel ar Bobl Lao" | "República Democrática Popular Lao" | "République démocratique populaire lao" | "Sathalanalat Paxathipatai Paxaxon Lao" | "Лаос" | "Лаосская Народно-Демократическая Республика" | "جمهورية لاوس الديمقراطية الشعبية" | "جمهوری دموکراتیک خلق لائوس" | "عوامی جمہوری جمہوریہ لاؤ" | "لاؤس" | "لائوس" | "لاوس" | "ສປປລາວ" | "ສາທາລະນະ ຊາທິປະໄຕ ຄົນລາວ ຂອງ" | "ラオス" | "ラオス人民民主共和国" | "老挝" | "老挝人民民主共和国" | "라오 인민 민주 공화국" | "라오스" -> Some Laos
  | "Latvia" | "Latvian tasavalta" | "Latvija" | "Latvijas Republika" | "Latvijas Republikas" | "Letland" | "Letonia" | "Letonija" | "Letonya Cumhuriyeti" | "Letonya" | "Lett Köztársaság" | "Lettland" | "Lettonia" | "Lettonie" | "Lettország" | "Letónia" | "Lotyšsko" | "Lotyšská republika" | "Läti Vabariik" | "Läti" | "Repubblica di Lettonia" | "Republic of Latvia" | "Republiek Letland" | "Republik Latvia" | "Republik Lettland" | "Republika Latvija" | "Republika Letonija" | "Republika Łotewska" | "Republiken Lettland" | "República da Letónia" | "República de Letonia" | "République de Lettonie" | "Łotwa" | "Латвийская Республика" | "Латвия" | "جمهورية لاتفيا" | "جمهوری لتونی" | "جمہوریہ لٹویا" | "لاتفيا" | "لتونی" | "لٹویا" | "ラトビア" | "ラトビア共和国" | "拉脱维亚" | "拉脱维亚共和国" | "라트비아 공화국" | "라트비아" -> Some Latvia
  | "Al-Jumhūrīyah Al-Libnānīyah" | "Lebanese Republic" | "Lebanon" | "Liban" | "Libanese Republiek" | "Libanesische Republik" | "Libano" | "Libanon" | "Libanoni Köztársaság" | "Libanonin tasavalta" | "Libanonska Republika" | "Libanonská republika" | "Libanska Republika" | "Liibanon" | "Liibanoni Vabariik" | "Líbano" | "Lübnan Cumhuriyeti" | "Lübnan" | "Repubblica libanese" | "Republik Liban" | "Republika Libańska" | "Republiken Libanon" | "República Libanesa" | "République libanaise" | "Ливан" | "Ливанская Республика" | "الجمهورية اللبنانية" | "جمهوری لبنان" | "جمہوریہ لبنان" | "لبنان" | "レバノン" | "レバノン共和国" | "黎巴嫩" | "黎巴嫩共和国" | "레바논 공화국" | "레바논" -> Some Lebanon
  | "Kingdom of Lesotho" | "Koninkrijk Lesotho" | "Konungariket Lesotho" | "Kraljevina Lesoto" | "Królestwo Lesotho" | "Königreich Lesotho" | "Lesotho Krallığı" | "Lesotho Kuningriik" | "Lesotho" | "Lesothon kuningaskunta" | "Lesothské království" | "Lesothské kráľovstvo" | "Lesothói Királyság" | "Lesoto" | "Muso oa Lesotho" | "Regno del Lesotho" | "Reino de Lesotho" | "Reino do Lesoto" | "Rouantelezh Lesotho" | "Royaume du Lesotho" | "Королевство Лесото" | "Лесото" | "لسوتو" | "ليسوتو" | "لیسوتھو" | "مملكة ليسوتو" | "مملکتِ لیسوتھو" | "پادشاهی لسوتو" | "レソト" | "レソト王国" | "莱索托" | "莱索托王国" | "레소토 왕국" | "레소토" -> Some Lesotho
  | "Libeeria Vabariik" | "Libeeria" | "Liberia" | "Liberian tasavalta" | "Liberija" | "Liberijská republika" | "Liberya Cumhuriyeti" | "Liberya" | "Libéria" | "Libériai Köztársaság" | "Libérie" | "Libérijská republika" | "Repubblica di Liberia" | "Republic of Liberia" | "Republiek Liberia" | "Republik Liberia" | "Republika Liberii" | "Republika Liberija" | "Republiken Liberia" | "República da Libéria" | "República de Liberia" | "République du Libéria" | "Либерия" | "Республика Либерия" | "جمهورية ليبيريا" | "جمهوری لیبریا" | "جمہوریہ لائبیریا" | "لائبیریا" | "ليبيريا" | "لیبـِریا" | "リベリア" | "リベリア共和国" | "利比里亚" | "利比里亚共和国" | "라이베리아 공화국" | "라이베리아" -> Some Liberia
  | "Dawlat Libya" | "Država Libija" | "Država Libiji" | "Estado da Líbia" | "Estado de Libia" | "Grande République arabe libyenne populaire et socialiste" | "Libia" | "Libija" | "Libië" | "Libya Devleti" | "Libya" | "Libyan valtio" | "Libye" | "Libyen" | "Liibüa" | "Líbia Állam" | "Líbia" | "Líbya" | "Państwo Libia" | "Staat Libyen" | "Staat van Libië" | "Stad Libia" | "State of Libya" | "Staten Libyen" | "Stato della Libia" | "Stát Libye" | "Государство Ливии" | "Ливия" | "دولة ليبيا" | "دولت لیبی" | "ریاستِ لیبیا" | "ليبيا" | "لیبی" | "لیبیا" | "リビア" | "利比亚" | "利比亚国" | "리비아" -> Some Libya
  | "Furstendömet Liechtenstein" | "Fürstentum Liechtenstein" | "Kneževina Lihtenštajn" | "Knížectví Lichtenštejnské" | "Księstwo Liechtensteinu" | "Lichtenštajnsko" | "Lichtenštajnské kniežatstvo" | "Lichtenštejnsko" | "Liechenstein" | "Liechensteinin ruhtinaskunta" | "Liechtenstein" | "Liechtensteini Hercegség" | "Liechtensteini Vürstiriik" | "Lihtenştayn Prensliği" | "Lihtenştayn" | "Lihtenštajn" | "Principado de Liechtenstein" | "Principality of Liechtenstein" | "Principato del Liechtenstein" | "Principauté du Liechtenstein" | "Priñselezh Liechtenstein" | "Vorstendom Liechtenstein" | "Княжество Лихтенштейн" | "Лихтенштейн" | "إمارة ليختنشتاين" | "امارات لیختینستائن" | "شاهزاده‌نشین لیختن‌اشتاین" | "ليختنشتاين" | "لیختن‌اشتاین" | "لیختینستائن" | "リヒテンシュタイン" | "リヒテンシュタイン公国" | "列支敦士登" | "列支敦士登公国" | "리히텐슈타인 공국" | "리히텐슈타인" -> Some Liechtenstein
  | "Leedu Vabariik" | "Leedu" | "Liettua" | "Liettuan tasavalta" | "Lietuva" | "Lietuvos Respublika" | "Lietuvos Respublikos" | "Litauen" | "Litevská republika" | "Lithuania" | "Litouwen" | "Litovská republika" | "Lituania" | "Lituanie" | "Lituânia" | "Litva" | "Litvanija" | "Litvanya Cumhuriyeti" | "Litvanya" | "Litván Köztársaság" | "Litvánia" | "Litwa" | "Repubblica di Lituania" | "Republic of Lithuania" | "Republiek Litouwen" | "Republik Litauen" | "Republik Lituania" | "Republika Litewska" | "Republika Litva" | "Republika Litvanija" | "Republiken Litauen" | "República da Lituânia" | "República de Lituania" | "République de Lituanie" | "Литва" | "Литовская Республика" | "جمهورية ليتوانيا" | "جمہوریہ لتھووینیا" | "لتھووینیا" | "ليتوانيا" | "لیتوانیایی‌ها" | "リトアニア" | "リトアニア共和国" | "立陶宛" | "立陶宛共和国" | "리투아니아 공화국" | "리투아니아" -> Some Lithuania
  | "Dugelezh Veur Luksembourg" | "Gran Ducado de Luxemburgo" | "Grand Duchy of Luxembourg" | "Grand-Duché de Luxembourg" | "Granducato di Lussemburgo" | "Groothertogdom Luxemburg" | "Groussherzogtum Lëtzebuerg" | "Großherzogtum Luxemburg" | "Großherzogtum Luxemburg," | "Grão-Ducado do Luxemburgo" | "Lucembursko" | "Lucemburské velkovévodství" | "Luksembourg" | "Luksemburg" | "Luksemburgi Suurhertsogiriik" | "Lussemburgo" | "Luxembourg" | "Luxemburg" | "Luxemburgi Nagyhercegség" | "Luxemburgin suurherttuakunta" | "Luxemburgo" | "Luxembursko" | "Luxemburské veľkovojvodstvo" | "Lëtzebuerg" | "Lüksemburg Büyük Dükalığı" | "Lüksemburg" | "Storhertigdömet Luxemburg" | "Veliko Vojvodstvo Luksemburg" | "Wielkie Księstwo Luksemburga" | "Великое Герцогство Люксембург" | "Люксембург" | "دوقية لوكسمبورغ" | "دوقیہ کبیرلکسمبرگ" | "دوک‌نشین لوکزامبورگ" | "لوكسمبورغ" | "لوکزامبورگ" | "لکسمبرگ" | "ルクセンブルク" | "ルクセンブルク大公国" | "卢森堡" | "卢森堡大公国" | "룩셈부르크 대공국" | "룩셈부르크" -> Some Luxembourg
  | "Macao Regione amministrativa speciale della Repubblica Popolare Cinese" | "Macao Special Administrative Region of the People's Republic of China" | "Macao" | "Macao, Región Administrativa Especial de la República Popular China" | "Macao, Špeciàlna administratívna oblasŦ" | "Macaon Kiinan kansantasavallan erityishallintoalue" | "Macau Região Administrativa Especial da República Popular da China" | "Macau erihalduspiirkond" | "Macau" | "Makao Posebnog upravnog područjaNarodne Republike Kine" | "Makao specijalna administrativna oblast Narodne Republike Kine" | "Makao" | "Makau" | "Makaó" | "Rannvro velestradurel arbennik Makao eus Republik pobl Sina" | "Região Administrativa Especial de Macau da República Popular da China" | "Région administrative spéciale de Macao de la République populaire de Chine" | "Sonderverwaltungsregion Macau der Volksrepublik China" | "Speciale Administratieve Regio Macau van de Volksrepubliek China" | "Specjalny Region Administracyjny Chińskiej Republiki Ludowej Makau" | "Zvláštní správní oblast Čínské lidové republiky Macao" | "çin Halk Cumhuriyeti Makao özel İdari Bölgesi" | "Макао" | "Специальный административный район Макао Китайской Народной Республики Китай" | "ماكاو" | "ماکائو" | "منطقة ماكاو الإدارية التابعة لجمهورية الصين الشعبية" | "مکاؤ عوامی جمہوریہ چین کا خصوصی انتظامی علاقہ" | "مکاؤ" | "マカオ" | "中华人民共和国澳门特别行政区" | "中華人民共和國澳門特別行政區" | "澳門特別行政区" | "澳门" | "마카오" | "중화인민공화국 마카오 특별행정구" -> Some Macau
  | "Madagascar" | "Madagasikara" | "Madagaskar Cumhuriyeti" | "Madagaskar" | "Madagaskari Vabariik" | "Madagaskarin tasavalta" | "Madagaskarská republika" | "Madagaszkár" | "Madagaszkári Köztársaság" | "Madagáscar" | "Repoblikan'i Madagasikara" | "Repubblica del Madagascar" | "Republic of Madagascar" | "Republiek Madagaskar" | "Republik Madagaskar" | "Republika Madagaskar" | "Republika Madagaskaru" | "Republiken Madagaskar" | "República de Madagascar" | "República de Madagáscar" | "République de Madagascar" | "Мадагаскар" | "Республика Мадагаскар" | "جمهورية مدغشقر" | "جمهوری ماداگاسکار" | "جمہوریہ مڈغاسکر" | "ماداگاسکار" | "مدغشقر" | "مڈغاسکر" | "マダガスカル" | "マダガスカル共和国" | "马达加斯加" | "马达加斯加共和国" | "마다가스카르 공화국" | "마다가스카르" -> Some Madagascar
  | "Chalo cha Malawi, Dziko la Malaŵi" | "Malavi Cumhuriyeti" | "Malavi" | "Malawi Köztársaság" | "Malawi Vabariik" | "Malawi" | "Malawijská republika" | "Malawin tasavalta" | "Malawiská republika" | "Malaŵi" | "Repubblica del Malawi" | "Republic of Malawi" | "Republiek Malawi" | "Republik Malawi" | "Republika Malavi" | "Republika Malawi" | "Republiken Malawi" | "República de Malawi" | "República do Malawi" | "République du Malawi" | "Малави" | "Республика Малави" | "جمهورية مالاوي" | "جمهوری مالاوی" | "جمہوریہ ملاوی" | "مالاوي" | "مالاوی" | "ملاوی" | "マラウイ" | "マラウイ共和国" | "马拉维" | "马拉维共和国" | "말라위 공화국" | "말라위" -> Some Malawi
  | "Fédération de Malaisie" | "Malaisia" | "Malaisie" | "Malajsie" | "Malajzia" | "Malasia" | "Malaysia" | "Maleisië" | "Malesia" | "Malezija" | "Malezja" | "Malezya" | "Malásia" | "Малайзия" | "فدراسیون مالزی" | "مالزی" | "ماليزيا" | "ملائیشیا" | "مليسيا" | "マレーシア" | "马来西亚" | "말레이시아" -> Some Malaysia
  | "Dhivehi Raajjeyge Jumhooriyya" | "Maldiivi Vabariik" | "Maldiivid" | "Maldivas" | "Maldive Islands" | "Maldive" | "Maldiven" | "Maldiverna" | "Maldives" | "Maldivez" | "Maldivi" | "Maldivler Cumhuriyeti" | "Maldivler" | "Maldivská republika" | "Maldivy" | "Maldív-szigetek" | "Malediivien tasavalta" | "Malediivit" | "Malediven" | "Maledivská republika" | "Maledivy" | "Malediwy" | "Repubblica delle Maldive" | "Republic of the Maldives" | "Republiek van de Malediven" | "Republik Maldivez" | "Republik Malediven" | "Republika Maldivi" | "Republika Malediwów" | "Republiken Maldiverna" | "República das Maldivas" | "República de las Maldivas" | "République des Maldives" | "Мальдивы" | "Республика Мальдивы" | "المالديف" | "جمهورية المالديف" | "جمهوری مالدیو" | "جمہوریہ مالدیپ" | "مالدیو" | "مالدیپ" | "ދިވެހިރާއްޖޭގެ ޖުމްހޫރިއްޔާ" | "ދިވެހިރާއްޖޭގެ" | "モルディブ" | "モルディブ共和国" | "马尔代夫" | "马尔代夫共和国" | "몰디브 공화국" | "몰디브" -> Some Maldives
  | "Mali Cumhuriyeti" | "Mali Köztársaság" | "Mali Vabariik" | "Mali" | "Malijská republika" | "Malin tasavalta" | "Repubblica del Mali" | "Republic of Mali" | "Republiek Mali" | "Republik Mali" | "Republika Mali" | "Republiken Mali" | "República de Malí" | "República do Mali" | "République du Mali" | "Мали" | "Республика Мали" | "جمهورية مالي" | "جمهوری مالی" | "جمہوریہ مالی" | "مالي" | "مالی" | "マリ" | "マリ共和国" | "马里" | "马里共和国" | "말리 공화국" | "말리" -> Some Mali
  | "Malta Cumhuriyeti" | "Malta Vabariik" | "Malta" | "Maltan tasavalta" | "Malte" | "Maltská republika" | "Málta" | "Máltai Köztársaság" | "Repubblica di Malta" | "Repubblika ta ' Malta" | "Repubblika ta' Malta" | "Republic of Malta" | "Republiek Malta" | "Republik Malta" | "Republika Malta" | "Republika Malty" | "Republiken Malta" | "República de Malta" | "République de Malte" | "Мальта" | "Республика Мальта" | "جمهورية مالطا" | "جمهوری مالت" | "جمہوریہ مالٹا" | "مالت" | "مالطا" | "مالٹا" | "マルタ" | "マルタ共和国" | "马耳他" | "马耳他共和国" | "몰타 공화국" | "몰타" -> Some Malta
  | "Aolepān Aorōkin M̧ajeļ" | "Ilhas Marshall" | "Inizi Marshall" | "Islas Marshall" | "Isole Marshall" | "Marshall Adaları Cumhuriyeti" | "Marshall Adaları" | "Marshall Islands" | "Marshall-szigetek" | "Marshalleilanden" | "Marshalli Saared" | "Marshalli Saarte Vabariik" | "Marshallinsaaret" | "Marshallinsaarten tasavalta" | "Marshallinseln" | "Marshallove ostrovy" | "Marshallovy ostrovy" | "Marshallöarna" | "Maršalovi Otoci" | "Maršalska Ostrva" | "M̧ajeļ" | "Repubblica delle Isole Marshall" | "Republic of the Marshall Islands" | "Republiek van de Marshall-eilanden" | "Republik Inizi Marshall" | "Republik Marshallinseln" | "Republika Marshallovy ostrovy" | "Republika Marshallových ostrovov" | "Republika Maršalovi Otoci" | "Republika Maršalska Ostrva" | "Republika Wysp Marshalla" | "Republiken Marshallöarna" | "República das Ilhas Marshall" | "República de las Islas Marshall" | "République des Îles Marshall" | "Wyspy Marshalla" | "Îles Marshall" | "Маршалловы Острова" | "Республика Маршалловы острова" | "جزائر مارشل" | "جزایر مارشال" | "جزر مارشال" | "جمهورية جزر مارشال" | "جمهوری جزایر مارشال" | "جمہوریہ جزائر مارشل" | "マーシャル諸島" | "マーシャル諸島共和国" | "马绍尔群岛" | "马绍尔群岛共和国" | "마셜 제도 공화국" | "마셜 제도" -> Some Marshall_Islands
  | "Martinica" | "Martinik" | "Martinique" | "Martinique’i departemang" | "Martynika" | "Мартиника" | "مارتينيك" | "مارتینیک" | "مارٹینیک" | "マルチニーク島" | "マルティニーク" | "马提尼克" | "마르티니크" -> Some Martinique
  | "Islamic Republic of Mauritania" | "Islamische Republik Mauretanien" | "Islamiska republiken Mauretanien" | "Islamitische Republiek Mauritanië" | "Islamska Republika Mauretańska" | "Islamska Republika Mauritanija" | "Maouritania" | "Mauretania" | "Mauretanien" | "Mauritaania Islamivabariik" | "Mauritaania" | "Mauritania" | "Mauritanian islamilainen tasavalta" | "Mauritanie" | "Mauritanija" | "Mauritanië" | "Mauritánia" | "Mauritániai Iszlám Köztársaság" | "Mauritánie" | "Mauritánska islamská republika" | "Mauritánská islámská republika" | "Mauritânia" | "Moritanya İslam Cumhuriyeti" | "Moritanya" | "Repubblica islamica di Mauritania" | "Republik islamek Maouritania" | "República Islámica de Mauritania" | "República Islâmica da Mauritânia" | "République islamique de Mauritanie" | "al-Jumhūriyyah al-ʾIslāmiyyah al-Mūrītāniyyah" | "Исламская Республика Мавритания" | "Мавритания" | "اسلامی جمہوریہ موریتانیہ" | "الجمهورية الإسلامية الموريتانية" | "جمهوری اسلامی موریتانی" | "موريتانيا" | "موریتانی" | "موریتانیہ" | "モーリタニア" | "モーリタニア・イスラム共和国" | "毛里塔尼亚" | "毛里塔尼亚伊斯兰共和国" | "모리타니 이슬람 공화국" | "모리타니" -> Some Mauritania
  | "Maurice" | "Mauricijská republika" | "Mauricijus" | "Mauricio" | "Mauricius" | "Mauritiuksen tasavalta" | "Mauritius Cumhuriyeti" | "Mauritius" | "Mauritiuse Vabariik" | "Mauritiusi Köztársaság" | "Maurícijská republika" | "Maurício" | "Maurícius" | "Moris" | "Repubblica di Mauritius" | "Republic of Mauritius" | "Republiek Mauritius" | "Republik Mauritius" | "Republik Moris" | "Republika Mauricijus" | "Republika Mauritiusu" | "Republiken Mauritius" | "República das Maurícias" | "República de Mauricio" | "République de Maurice" | "Île Maurice" | "Маврикий" | "Республика Маврикий" | "جمهورية موريشيوس" | "جمهوری موریس" | "جمہوریہ موریشس" | "موريشيوس" | "موریس" | "موریشس" | "モーリシャス" | "モーリシャス共和国" | "毛里求斯" | "毛里求斯共和国" | "모리셔스 공화국" | "모리셔스" -> Some Mauritius
  | "Afdeling Mayotte" | "Departamant Mayotte" | "Departamento de Mayotte" | "Departementsområdet Mayotte" | "Department Mayotte" | "Department of Mayotte" | "Dipartimento di Mayotte" | "Département de Mayotte" | "Kolektivitet Majot" | "Majot" | "Majotta" | "Mayotte" | "Odjel Mayotte" | "Übersee-Département Mayotte" | "Департамент Майотта" | "Майотта" | "مايوت" | "مایوت" | "مایوٹ" | "مجموعه شهرستانی مایوت" | "マイヨット島" | "マヨット" | "马约特" | "마요트" -> Some Mayotte
  | "Birleşik Meksika Devletleri" | "Estados Unidos Mexicanos" | "Mec'hiko" | "Mehhiko Ühendriigid" | "Mehhiko" | "Meksika" | "Meksiko" | "Meksikon yhdysvallat" | "Meksyk" | "Meksykańskie Stany Zjednoczone" | "Messico" | "Mexicanos" | "Mexico" | "Mexiko" | "Mexikos förenta stater" | "Mexikó" | "Mexikói Egyesült Államok" | "Mexique" | "México" | "Sjedinjene Meksičke Države" | "Spojené státy mexické" | "Spojené štášy mexické" | "Stadoù-Unanet Mec'hiko" | "Stati Uniti del Messico" | "United Mexican States" | "Vereinigte Mexikanische Staaten" | "Verenigde Mexicaanse Staten" | "États-Unis du Mexique" | "Мексика" | "Мексиканские Соединённые Штаты" | "المسكيك" | "الولايات المتحدة المكسيكية" | "ایالات متحد مکزیک" | "ریاستہائے متحدہ میکسیکو" | "مکزیک" | "میکسیکو" | "メキシコ" | "メキシコ合衆国" | "墨西哥" | "墨西哥合众国" | "멕시코 합중국" | "멕시코" -> Some Mexico
  | "Estados Federados da Micronésia" | "Estados Federados de Micronesia" | "Federale Staten van Micronesia" | "Federated States of Micronesia" | "Federativní státy Mikronésie" | "Föderierte Staaten von Mikronesien" | "Micronesia" | "Micronesia, Federated States of" | "Micronesië" | "Micronésia" | "Micronésie" | "Mikroneesia Liiduriigid" | "Mikroneesia" | "Mikronesia" | "Mikronesian liittovaltio" | "Mikronesien" | "Mikronesiska federationen" | "Mikronezia" | "Mikronezija" | "Mikronezja" | "Mikronezya Federal Devletleri" | "Mikronezya" | "Mikronésie" | "Mikronézia" | "Mikronéziai Szövetségi Államok" | "Mikronézske federatívne štáty" | "Savezne Države Mikronezije" | "Sfederowane Stany Mikronezji" | "Stadoù Kevreet Mikronezia" | "Stati federati di Micronesia" | "États fédérés de Micronésie" | "Федеративные Штаты Микронезии" | "ایالات فدرال میکرونزی" | "ریاستہائے وفاقیہ مائکرونیشیا" | "مائکرونیشیا" | "ميكرونيسيا" | "میکرونزی" | "ولايات ميكرونيسيا المتحدة" | "ミクロネシア" | "ミクロネシア連邦" | "密克罗尼西亚" | "密克罗尼西亚联邦" | "미크로네시아 연방" | "미크로네시아" -> Some Micronesia
  | "Moldavia" | "Moldavie" | "Moldavien" | "Moldavija" | "Moldavië" | "Moldavsko" | "Moldavská republika" | "Moldawien" | "Moldova Cumhuriyeti" | "Moldova Vabariik" | "Moldova" | "Moldova, Republic of" | "Moldovai Köztársaság" | "Moldovan tasavalta" | "Moldávia" | "Mołdawia" | "Repubblica di Moldova" | "Republic of Moldova" | "Republica Moldova" | "Republiek Moldavië" | "Republik Moldau" | "Republik Moldova" | "Republika Moldavija" | "Republika Mołdawii" | "Republiken Moldavien" | "República da Moldávia" | "República de Moldova" | "République de Moldavie" | "Молдавия" | "Молдова" | "جمهورية مولدوڤا" | "جمهوری مولداوی" | "جمہوریہ مالدووا" | "مالدووا" | "مولداوی" | "مولدوڤا" | "モルドバ" | "モルドバ共和国" | "摩尔多瓦" | "摩尔多瓦共和国" | "몰도바 공화국" | "몰도바" -> Some Moldova
  | "Furstendömet Monaco" | "Fürstentum Monaco" | "Kneževina Monako" | "Księstwo Monako" | "Monacké kniežatstvo" | "Monacké knížectví" | "Monaco Vürstiriik" | "Monaco" | "Monacon ruhtinaskunta" | "Monacói Hercegség" | "Monako Prensliği" | "Monako" | "Mónaco" | "Principado de Mónaco" | "Principado do Mónaco" | "Principality of Monaco" | "Principato di Monaco" | "Principauté de Monaco" | "Priñselezh Monako" | "Vorstendom Monaco" | "Княжество Монако" | "Монако" | "إمارة موناكو" | "جمہوریہ مناکو" | "شاهزاده‌نشین موناکو" | "موناكو" | "موناکو" | "モナコ" | "モナコ公国" | "摩纳哥" | "摩纳哥公国" | "모나코 공국" | "모나코" -> Some Monaco
  | "Mongolei" | "Mongolia" | "Mongolian tasavalta" | "Mongolie" | "Mongoliet" | "Mongolija" | "Mongolië" | "Mongolsko" | "Mongoolia" | "Mongólia" | "Moğolistan" | "Stát Mongolsko" | "Монгол улс" | "Монголия" | "جمهورية منغوليا" | "مغولستان" | "منغوليا" | "منگولیا" | "モンゴル" | "モンゴル国" | "蒙古" | "몽골" | "몽골국" -> Some Mongolia
  | "Crna Gora" | "Czarnogóra" | "Karadağ" | "Montenegro" | "Montenegró" | "Monténégro" | "Republik Montenegro" | "Černá Hora" | "Čierna Hora" | "Црна Гора" | "Черногория" | "الجبل الاسود" | "مونته‌نگرو" | "مونٹینیگرو" | "モンテネグロ" | "黑山" | "몬테네그로" -> Some Montenegro
  | "Montserat" | "Montserrat" | "Монтсеррат" | "مانٹسریٹ" | "مونتسرات" | "モントセラト" | "蒙特塞拉特" | "몬트세랫" -> Some Montserrat
  | "Al-Mamlakah al-Maġribiyah" | "Fas Krallığı" | "Fas" | "Kingdom of Morocco" | "Koninkrijk Marokko" | "Konungariket Marocko" | "Kraljevina Maroko" | "Królestwo Marokańskie" | "Königreich Marokko" | "Maroc" | "Marocco" | "Marocko" | "Marocké kniežatstvo" | "Marocké království" | "Marokko" | "Marokkó" | "Marokkói Királyság" | "Maroko Kuningriik" | "Maroko" | "Marokon kuningaskunta" | "Marrocos" | "Marruecos" | "Morocco" | "Regno del Marocco" | "Reino de Marrocos" | "Reino de Marruecos" | "Rouantelezh Maroko" | "Royaume du Maroc" | "Королевство Марокко" | "Марокко" | "المغرب" | "المملكة المغربية" | "مراکش" | "مملکتِ مراکش" | "پادشاهی مراکش" | "ⵍⵎⴰⵖⵔⵉⴱ" | "ⵜⴰⴳⵍⴷⵉⵜ ⵏ ⵍⵎⵖⵔⵉⴱ" | "モロッコ" | "モロッコ王国" | "摩洛哥" | "摩洛哥王国" | "모로코 왕국" | "모로코" -> Some Morocco
  | "Mosambická republika" | "Mosambiigi Vabariik" | "Mosambiik" | "Mosambik" | "Mosambikin tasavalta" | "Mozambická republika" | "Mozambico" | "Mozambik Cumhuriyeti" | "Mozambik" | "Mozambiki Köztársaság" | "Mozambique" | "Moçambique" | "Repubblica del Mozambico" | "Republic of Mozambique" | "Republiek Mozambique" | "Republik Mosambik" | "Republik Mozambik" | "Republika Mozambik" | "Republika Mozambiku" | "Republiken Moçambique" | "República de Mozambique" | "República de Moçambique" | "République du Mozambique" | "Мозамбик" | "Республика Мозамбик" | "جمهورية موزمبيق" | "جمهوری موزامبیک" | "جمہوریہ موزمبیق" | "موزامبیک" | "موزمبيق" | "موزمبیق" | "モザンビーク" | "モザンビーク共和国" | "莫桑比克" | "莫桑比克共和国" | "모잠비크 공화국" | "모잠비크" -> Some Mozambique
  | "Birmania" | "Birmanie" | "Burma" | "Mianmar" | "Mianmari Államszövetség Köztársasága" | "Mijanmar" | "Mjanma" | "Mjanmar" | "Mjanmarsko" | "Mjanmarská zväzová republika" | "Myanmar Birliği Cumhuriyeti" | "Myanmar" | "Myanmari Liidu Vabariik" | "Myanmarin liiton tasavalta" | "Pyidaunzu Thanmăda Myăma Nainngandaw" | "Repubblica dell'Unione di Myanmar" | "Republic of the Union of Myanmar" | "Republiek van de Unie van Myanmar" | "Republik Unaniezh Myanmar" | "Republik der Union Myanmar" | "Republika Mjanmarska Unija" | "Republika Myanmarský svaz" | "Republika Unije Mijanmar" | "Republika Związku Mjanmy" | "Republiken Unionen Myanmar" | "República da União de Myanmar" | "República de la Unión de Myanmar" | "République de l'Union du Myanmar" | "Мьянма" | "Республика Союза Мьянма" | "اتحادیه جمهوری میانمار" | "جمهورية اتحاد ميانمار" | "متحدہ جمہوریہ میانمار" | "ميانمار" | "میانمار" | "ပြည်ထောင်စု သမ္မတ မြန်မာနိုင်ငံတော်" | "မြန်မာ" | "ミャンマー" | "ミャンマー連邦共和国" | "缅甸" | "缅甸联邦共和国" | "미얀마 연방 공화국" | "미얀마" -> Some Myanmar
  | "Lefatshe la Namibia" | "Namibia" | "Namibian tasavalta" | "Namibie" | "Namibija" | "Namibijská republika" | "Namibië" | "Namibya Cumhuriyeti" | "Namibya" | "Namiibia Vabariik" | "Namiibia" | "Namíbia" | "Namíbiai Köztársaság" | "Namíbijská republika" | "Repubblica di Namibia" | "Republic of Namibia" | "Republiek Namibië" | "Republiek van Namibië" | "Republik Namibia" | "Republika Namibii" | "Republika Namibija" | "Republiken Namibia" | "República da Namíbia" | "República de Namibia" | "République de Namibie" | "Намибия" | "Республика Намибия" | "جمهورية ناميبيا" | "جمهوری نامیبیا" | "جمہوریہ نمیبیا" | "ناميبيا" | "نامیبیا" | "نمیبیا" | "ナミビア" | "ナミビア共和国" | "纳米比亚" | "纳米比亚共和国" | "나미비아 공화국" | "나미비아" -> Some Namibia
  | "Naoero" | "Naurská republika" | "Nauru Cumhuriyeti" | "Nauru Vabariik" | "Nauru" | "Naurui Köztársaság" | "Naurun tasavalta" | "Pleasant Island" | "Repubblica di Nauru" | "Republic of Nauru" | "Republiek Nauru" | "Republik Nauru" | "Republika Nauru" | "Republiken Nauru" | "República de Nauru" | "Ripublik Naoero" | "République de Nauru" | "Науру" | "Республика Науру" | "جمهورية ناورو" | "جمهوری نائورو" | "جمہوریہ ناورو" | "نائورو" | "ناورو" | "ナウル" | "ナウル共和国" | "瑙鲁" | "瑙鲁共和国" | "나우루 공화국" | "나우루" -> Some Nauru
  | "Demokratische Bundesrepublik Nepal" | "Demokratiska förbundsrepubliken Nepal" | "Federal Democratic Republic of Nepal" | "Federale Democratische Republiek Nepal" | "Federalna Demokratyczna Republika Nepalu" | "Federativní demokratická republika Nepál" | "Loktāntrik Ganatantra Nepāl" | "Nepal Federal Demokratik Cumhuriyeti" | "Nepal" | "Nepali Demokraatlik Liitvabariik" | "Nepalin demokraattinen liittotasavalta" | "Nepál" | "Nepáli Szövetségi Demokratikus Köztársaság" | "Nepálska federatívna demokratická republika" | "Népal" | "Repubblica federale democratica del Nepal" | "Republik Demokratel Kevreadel Nepal" | "República Democrática Federal de Nepal" | "República Democrática Federal do Nepal" | "République du Népal" | "Savezna Demokratska Republika Nepal" | "Непал" | "Федеративная Демократическая Республика Непал" | "جمهورية نيبال الديمقراطية الاتحادية" | "جمهوری فدرال دموکراتیک نپال" | "نيبال" | "نپال" | "نیپال" | "وفاقی جمہوری جمہوریہ نیپال" | "नेपाल संघीय लोकतान्त्रिक गणतन्त्र" | "नेपाल" | "ネパール" | "ネパール連邦民主共和国" | "尼泊尔" | "尼泊尔联邦民主共和国" | "네팔 연방 민주 공화국" | "네팔" -> Some Nepal
  | "Alankomaat" | "Holanda" | "Holandia" | "Holandija" | "Holandské kráľovstvo" | "Holansko" | "Holland Királyság" | "Holland" | "Hollanda Krallığı" | "Hollanda" | "Hollandia" | "Izelvroioù" | "Koninkrijk der Nederlanden" | "Kraljevina Holandija" | "Królestwo Niderlandów" | "Madalmaade Kuningriik" | "Nederland" | "Nederländerna" | "Netherlands" | "Niederlande" | "Nizozemska" | "Nizozemsko" | "Nizozemské království" | "Paesi Bassi" | "Pays-Bas" | "Países Bajos" | "Rouantelezh an Izelvroioù" | "The Netherlands" | "Нидерланды" | "مملکتِ نیدرلینڈز" | "نیدرلینڈز" | "هلند" | "هولندا" | "オランダ" | "オランダ王国" | "荷兰" | "네덜란드 왕국" | "네덜란드" -> Some Netherlands
  | "Kaledonia-Nevez" | "Neukaledonien" | "New Caledonia" | "Nieuw-Caledonië" | "Nouvelle-Calédonie" | "Nova Caledónia" | "Nova Kaledonija" | "Nová Kaledonie" | "Nová Kaledónia" | "Nowa Kaledonia" | "Nueva Caledonia" | "Nuova Caledonia" | "Nya Kaledonien" | "Uus-Kaledoonia" | "Uusi-Kaledonia" | "Yeni Kaledonya" | "nieuw -Caledonië" | "nueva Caledonia" | "Új-Kaledónia" | "Новая Каледония" | "كاليدونيا الجديدة" | "نیو کیلیڈونیا" | "کالدونیای جدید" | "ニューカレドニア" | "新喀里多尼亚" | "누벨칼레도니" -> Some New_Caledonia
  | "Aotearoa" | "Neuseeland" | "New Zealand" | "Nieuw Zeeland" | "Nieuw-Zeeland" | "Nouvelle-Zélande" | "Nova Zelândia" | "Novi Zeland" | "Nový Zéland" | "Nowa Zelandia" | "Nueva Zelanda" | "Nuova Zelanda" | "Nya Zeeland" | "Uus-Meremaa" | "Uusi-Seelanti" | "Yeni Zelanda" | "Zeland-Nevez" | "nova Zelândia" | "nueva Zelanda" | "Új-Zéland" | "Новая Зеландия" | "نيوزيلندا" | "نیوزی لینڈ" | "نیوزیلند" | "ニュージーランド" | "新西兰" | "뉴질랜드" -> Some New_Zealand
  | "Nicaragua Vabariik" | "Nicaragua" | "Nicaraguai Köztársaság" | "Nicaraguan tasavalta" | "Nicarágua" | "Nikaragua Cumhuriyeti" | "Nikaragua" | "Nikaragujská republika" | "Nikaragva" | "Repubblica del Nicaragua" | "Republic of Nicaragua" | "Republiek Nicaragua" | "Republik Nicaragua" | "Republika Nikaragua" | "Republika Nikaragui" | "Republika Nikaragva" | "Republiken Nicaragua" | "República da Nicarágua" | "República de Nicaragua" | "République du Nicaragua" | "Никарагуа" | "Республика Никарагуа" | "جمهورية نيكاراغوا" | "جمهوری نیکاراگوئه" | "جمہوریہ نکاراگوا" | "نيكاراغوا" | "نکاراگوا" | "نیکاراگوئه" | "ニカラグア" | "ニカラグア共和国" | "尼加拉瓜" | "尼加拉瓜共和国" | "니카라과 공화국" | "니카라과" -> Some Nicaragua
  | "Niger" | "Nigeri Köztársaság" | "Nigeri Vabariik" | "Nigerin tasavalta" | "Nigerská republika" | "Nigérská republika" | "Nijar" | "Nijer Cumhuriyeti" | "Nijer" | "Níger" | "Repubblica del Niger" | "Republiek Niger" | "Republik Niger" | "Republika Niger" | "Republika Nigru" | "Republiken Niger" | "República de Níger" | "República do Níger" | "République du Niger" | "Нигер" | "Республика Нигер" | "النيجر" | "جمهورية النيجر" | "جمهوری نیجر" | "جمہوریہ نائجر" | "نائجر" | "نیجر" | "ニジェール" | "ニジェール共和国" | "尼日尔" | "尼日尔共和国" | "니제르 공화국" | "니제르" -> Some Niger
  | "Bundesrepublik Nigeria" | "Federal Republic of Nigeria" | "Federale Republiek Nigeria" | "Federalna Republika Nigerii" | "Förbundsrepubliken Nigeria" | "Naíjíríà" | "Nigeeria Liitvabariik" | "Nigeeria" | "Nigeria" | "Nigerian liittotasavalta" | "Nigerija" | "Nigerijská federativní republika" | "Nigéria" | "Nigérie" | "Nigérijská federatívna republika" | "Nijeriya" | "Nijerya Federal Cumhuriyeti" | "Nijerya" | "Repubblica federale di Nigeria" | "Republik Kevreadel Nigeria" | "República Federal da Nigéria" | "República Federal de Nigeria" | "République fédérale du Nigeria" | "Savezna Republika Nigerija" | "Нигерия" | "Федеративная Республика Нигерия" | "جمهورية نيجيريا الاتحادية" | "جمهوری فدرال نیجریه" | "نائجیریا" | "نيجيريا" | "نیجریه" | "وفاقی جمہوریہ نائجیریا" | "ナイジェリア" | "ナイジェリア連邦共和国" | "尼日利亚" | "尼日利亚联邦共和国" | "나이지리아 연방 공화국" | "나이지리아" -> Some Nigeria
  | "Nijue" | "Niue" | "Niuē" | "Ниуэ" | "نييوي" | "نیووی" | "نیووے" | "ニウエ" | "纽埃" | "니우에" -> Some Niue
  | "Enez Norfolk" | "Gebiet der Norfolkinsel" | "Grondgebied van Norfolk Island" | "Ilha Norfolk" | "Isla de Norfolk" | "Isola Norfolk" | "Norf'k Ailen" | "Norfolk Adası" | "Norfolk Island" | "Norfolk" | "Norfolk-sziget" | "Norfolkeiland" | "Norfolki saare ala" | "Norfolkinsaaren territorio" | "Norfolkinsaari" | "Norfolkinsel" | "Norfolkön" | "Ostrvo Norfok" | "Otok Norfolk" | "Teratri of Norf'k Ailen" | "Teritorij Norfolk Island" | "Teritorija Ostrva Norfok" | "Teritorium ostrova Norfolk" | "Teritórium ostrova Norfolk" | "Territoire de l'île Norfolk" | "Territorio de la Isla Norfolk" | "Territorio di Norfolk Island" | "Territory of Norfolk Island" | "Território da Ilha Norfolk" | "Terytorium Wyspy Norfolk" | "Tiriad Enez Norfolk" | "Wyspa Norfolk" | "Île Norfolk" | "Норфолк" | "Территория острова Норфолк" | "إقليم جزيرة نورفولك" | "جزيرة نورفولك" | "جزیره نورفک" | "جزیرہ نورفک خطہ" | "جزیرہ نورفک" | "قلمرو جزایر نورفک" | "ノーフォーク島" | "诺福克岛" | "노퍽 섬" -> Some Norfolk_Island
  | "Chosŏn Minjujuŭi Inmin Konghwaguk" | "Corea del Nord" | "Corea del Norte" | "Coreia do Norte" | "Corée du Nord" | "DPRK" | "Democratic People's Republic of Korea" | "Democratische Volksrepubliek Korea" | "Demokratische Volksrepublik Korea" | "Demokratiska Folkrepubliken Korea" | "Demokratska Narodna Republika Koreja" | "Kore Demokratik Halk Cumhuriyeti" | "Korea Północna" | "Korea Rahvademokraatlik Vabariik" | "Korea an Norzh" | "Korea, Democratic People's Republic of" | "Koreai Népi Demokratikus Köztársaság" | "Korean demokraattinen kansantasavalta" | "Koreańska Republika Ludowo-Demokratyczna" | "Korejská lidově demokratická republika" | "Kuzey Kore" | "Kórejská ľudovodemokratická republika (KĽR, Severná Kórea)" | "Kórejská ľudovodemokratická republika" | "Noord-Korea" | "Nordkorea" | "North Korea" | "Pohjois-Korea" | "Põhja-Korea" | "Repubblica democratica popolare di Corea" | "Republik Poblel ha Demokratel Korea" | "República Popular Democrática da Coreia" | "República Popular Democrática de Corea" | "République populaire démocratique de Corée" | "Severna Koreja" | "Severní Korea" | "Sjeverna Koreja" | "Észak-Korea" | "Корейская Народно-Демократическая Республика Корея" | "Северная Корея" | "جمهورية كوريا الديمقراطية الشعبية" | "جمهوری دموکراتیک خلق کره" | "جمہوری عوامی جمہوریہ کوریا" | "شمالی کوریا" | "كوريا الشمالية" | "کُره شمالی" | "北朝鮮" | "朝鲜" | "朝鲜人民民主共和国" | "북조선" | "북한" | "조선" | "조선민주주의인민공화국" -> Some North_Korea
  | "Kuzey Makedonya Cumhuriyeti" | "Kuzey Makedonya" | "Macedonia Północna" | "Macedonia del Nord" | "Macedonia del Norte" | "Macedonia" | "Macedonia, The Former Yugoslav Republic of" | "Macedónia do Norte" | "Macédoine du Nord" | "Makedonia an Norzh" | "Noord-Macedonië" | "Nordmakedonien" | "Nordmazedonien" | "North Macedonia" | "Pohjois-Makedonia" | "Pohjois-Makedonian tasavalta" | "Põhja-Makedoonia Vabariik" | "Põhja-Makedoonia" | "Repubblica di Macedonia del Nord" | "Republic of North Macedonia" | "Republiek Noord-Macedonië" | "Republik Makedonia an Norzh" | "Republik Nordmazedonien" | "Republika Macedonii Północnej" | "Republika Severna Makedonija" | "Republika Severní Makedonie" | "Republika Sjeverna Makedonija" | "Republiken Nordmakedonien" | "República da Macedônia do Norte" | "República de Macedonia del Norte" | "République de Macédoine du Nord" | "Severna Makedonija" | "Severné Macedónsko" | "Severní Makedonie" | "Severomacedónska republika" | "Sjeverna Makedonija" | "The former Yugoslav Republic of Macedonia" | "Észak-Macedónia" | "Észak-macedón Köztársaság" | "Македонија" | "Република Северна Македонија" | "Республика Северная Македония" | "Северная Македония" | "جمهورية شمال مقدونيا" | "جمهوری مقدونیه شمالی" | "جمہوریہ مقدونیہ" | "شمال مقدونيا" | "شمالی مقدونیہ" | "مقدونیه شمالی" | "北マケドニア" | "北マケドニア共和国" | "北馬其頓" | "北馬其頓共和國" | "북마케도니아 공화국" | "북마케도니아" -> Some North_Macedonia
  | "Commonwealth delle Isole Marianne Settentrionali" | "Commonwealth der Nördlichen Marianen" | "Commonwealth des îles Mariannes du Nord" | "Commonwealth of the Northern Mariana Islands" | "Commonwealth van de Noordelijke Marianen" | "Comunidade das Ilhas Marianas do Norte" | "Inizi Mariana an Norzh" | "Islas Marianas del Norte" | "Isole Marianne Settentrionali" | "Kenglad Inizi Mariana an Norzh" | "Komonvelt Severna Marijanska Ostrva" | "Kuzey Mariana Adaları Milletler Topluluğu" | "Kuzey Mariana Adaları" | "Mancomunidad de las Islas Marianas del Norte" | "Marianas Setentrionais" | "Mariany Północne" | "Na Islas Mariånas" | "Noordelijke Marianeneilanden" | "Nordmarianerna" | "Northern Mariana Islands" | "Nördliche Marianen" | "Pohjois-Mariaanit" | "Põhja-Mariaani Ühendus" | "Põhja-Mariaanid" | "Sankattan Siha Na Islas Mariånas" | "Severna Marijanska Ostrva" | "Severné Mariány" | "Severní Mariany" | "Sjevernomarijanski otoci" | "Společenství Severních Marian" | "Spoločenstvo ostrovov Severné Mariány" | "Wspólnota Marianów Północnych" | "Zajednica je Sjeverni Marijanski otoci" | "Északi-Mariana-szigetek" | "Îles Mariannes du Nord" | "Северные Марианские острова" | "Содружество Северных Марианских островов" | "جزائر شمالی ماریانا" | "جزایر ماریانای شمالی" | "جزر ماريانا الشمالية" | "دولتِ مشترکہ جزائر شمالی ماریانا" | "كومونولث جزر ماريانا الشمالية" | "北マリアナ諸島" | "北马里亚纳群岛" | "북마리아나 제도" -> Some Northern_Mariana_Islands
  | "Kingdom of Norway" | "Kongeriket Noreg" | "Kongeriket Norge" | "Koninkrijk Noorwegen" | "Konungariket Norge" | "Kraljevina Norveška" | "Królestwo Norwegii" | "Königreich Norwegen" | "Noorwegen" | "Noreg" | "Norge" | "Norgga gonagasriika" | "Norgga" | "Norja" | "Norjan kuningaskunta" | "Norra Kuningriik" | "Norra" | "Norsko" | "Norské království" | "Noruega" | "Norvegia" | "Norveç Krallığı" | "Norveç" | "Norveška" | "Norvège" | "Norvég Királyság" | "Norvégia" | "Norway" | "Norwegen" | "Norwegia" | "Nórske kráľovstvo" | "Nórsko" | "Regno di Norvegia" | "Reino da Noruega" | "Reino de Noruega" | "Rouantelezh Norvegia" | "Royaume de Norvège" | "Королевство Норвегия" | "Норвегия" | "النرويج" | "مملكة النرويج" | "مملکتِ ناروے" | "ناروے" | "نروژ" | "پادشاهی نروژ" | "ノルウェー" | "ノルウェー王国" | "挪威" | "挪威王国" | "노르웨이 왕국" | "노르웨이" -> Some Norway
  | "Omaan" | "Omaani Sultaniriik" | "Oman" | "Omanin sulttaanikunta" | "Omán" | "Ománi Szultanátus" | "Ománsky sultanát" | "Omã" | "Salṭanat ʻUmān" | "Sultanaat van Oman" | "Sultanat Oman" | "Sultanat d'Oman" | "Sultanate of Oman" | "Sultanatet Oman" | "Sultanato de Omán" | "Sultanato de Omã" | "Sultanato dell'Oman" | "Sultanelezh Oman" | "Sultanát Omán" | "Sułtanat Omanu" | "Umman Sultanlığı" | "Umman" | "oman" | "Оман" | "Султанат Оман" | "سلطان‌نشین عُمان" | "سلطنة عمان" | "سلطنت عمان" | "عمان" | "オマーン" | "オマーン国" | "阿曼" | "阿曼苏丹国" | "오만 술탄국" | "오만" -> Some Oman
  | "Islamic Republic of Pakistan" | "Islamische Republik Pakistan" | "Islamiska republiken Pakistan" | "Islamitische Republiek Pakistan" | "Islamska Republika Pakistan" | "Islamska Republika Pakistanu" | "Islāmī Jumhūriya'eh Pākistān" | "Pakistan İslam Cumhuriyeti" | "Pakistan" | "Pakistani Islamivabariik" | "Pakistanin islamilainen tasavalta" | "Pakistanská islamská republika" | "Pakistán" | "Pakisztán" | "Paquistão" | "Pákistán" | "Pákistánská islámská republika" | "Pākistān" | "Repubblica islamica del Pakistan" | "Republik islamek Pakistan" | "República Islámica de Pakistán" | "República Islâmica do Paquistão" | "République islamique du Pakistan" | "Исламская Республика Пакистан" | "Пакистан" | "اسلامی جمہوریہ پاکستان" | "اسلامی جمہوریۂ پاكستان" | "باكستان" | "جمهورية باكستان الإسلامية" | "جمهوری اسلامی پاکستان" | "پاكستان" | "پاکستان" | "パキスタン" | "パキスタン・イスラム共和国" | "巴基斯坦" | "巴基斯坦伊斯兰共和国" | "파키스탄 이슬람 공화국" | "파키스탄" -> Some Pakistan
  | "Belau Vabariik" | "Belau" | "Beluu er a Belau" | "Palaos (Palau)" | "Palau Cumhuriyeti" | "Palau" | "Palaui Köztársaság" | "Palaun tasavalta" | "Palauská republika" | "Repubblica di Palau" | "Republic of Palau" | "Republiek van Palau" | "Republik Palau" | "Republika Palau" | "Republiken Palau" | "República de Palau" | "République des Palaos (Palau)" | "Палау" | "Республика Палау" | "بالاو" | "جمهورية بالاو" | "جمهوری پالائو" | "جمہوریہ پلاؤ" | "پالائو" | "پلاؤ" | "パラオ" | "パラオ共和国" | "帕劳" | "帕劳共和国" | "팔라우 공화국" | "팔라우" -> Some Palau
  | "Dawlat Filasṭin" | "Država Palestina" | "Estado da Palestina" | "Estado de Palestina" | "Filistin Devleti" | "Filistin" | "Palestiina Riik" | "Palestiina" | "Palestiinan valtio" | "Palestijnse gebieden" | "Palestina" | "Palestine" | "Palestine, State of" | "Palestyna" | "Palestína" | "Palestínsky štát" | "Palesztin Autonómia" | "Palesztina" | "Palästina" | "Państwo Palestyna" | "Staat Palestina" | "Staat Palästina" | "Stad Palestina" | "State of Palestine" | "Stato di Palestina" | "Stát Palestina" | "État de Palestine" | "Государство Палестина" | "Палестина" | "دولة فلسطين" | "دولت فلسطین" | "ریاستِ فلسطین" | "فلسطين" | "فلسطین" | "パレスチナ" | "巴勒斯坦" | "巴勒斯坦国" | "팔레스타인" | "팔레스타인국" -> Some Palestine
  | "Panama Cumhuriyeti" | "Panama Vabariik" | "Panama" | "Panamai Köztársaság" | "Panaman tasavalta" | "Panamská republika" | "Panamá" | "Repubblica di Panama" | "Republic of Panama" | "Republiek Panama" | "Republik Panama" | "Republika Panama" | "Republika Panamy" | "Republiken Panama" | "República de Panamá" | "República do Panamá" | "République du Panama" | "Панама" | "Республика Панама" | "بنما" | "جمهورية بنما" | "جمهوری پاناما" | "جمہوریہ پاناما" | "پاناما" | "パナマ" | "パナマ共和国" | "巴拿马" | "巴拿马共和国" | "파나마 공화국" | "파나마" -> Some Panama
  | "Den oberoende staten Papua Nya Guinea" | "Estado Independente da Papua Nova Guiné" | "Estado Independiente de Papúa Nueva Guinea" | "Independen Stet bilong Papua Niugini" | "Independent State of Papua New Guinea" | "Nezavisna Država Papua Nova Gvineja" | "Nezavisna Država Papui Novoj Gvineji" | "Nezávislý stát Papua Nová Guinea" | "Nezávislý štát Papua-Nová Guinea" | "Niezależne Państwo Papui-Nowej Gwinei" | "Onafhankelijke Staat Papoea -Nieuw-Guinea" | "Paapua Uus-Guinea Iseseisvusriik" | "Paapua Uus-Guinea" | "Papoea-Nieuw-Guinea" | "Papoua-Ginea Nevez" | "Papouasie-Nouvelle-Guinée" | "Papua New Guinea" | "Papua Niu Gini" | "Papua Niugini" | "Papua Nova Guiné" | "Papua Nova Gvineja" | "Papua Nuova Guinea" | "Papua Nya Guinea" | "Papua Yeni Gine Bağımsız Devleti" | "Papua Yeni Gine" | "Papua-Neuguinea" | "Papua-Nová Guinea" | "Papua-Nowa Gwinea" | "Papua-Uuden-Guinean Itsenäinen valtio" | "Papua-Uusi-Guinea" | "Papúa Nueva Guinea" | "Pápua Új-Guinea Független Állam" | "Pápua Új-Guinea" | "Stad dizalc'h Papoua-Ginea Nevez" | "Stato indipendente di Papua Nuova Guinea" | "Unabhängiger Staat Papua-Neuguinea" | "État indépendant de Papouasie-Nouvelle-Guinée" | "Независимое Государство Папуа-Новой Гвинеи" | "Папуа — Новая Гвинея" | "آزاد ریاستِ پاپوا نیو گنی" | "بابوا غينيا الجديدة" | "دولة بابوا غينيا الجديدة" | "مملکت مستقل پاپوآ گینهٔ نو" | "پاپوا نیو گنی" | "パプアニューギニア" | "パプアニューギニア独立国" | "巴布亚新几内亚" | "파푸아뉴기니 독립국" | "파푸아뉴기니" -> Some Papua_New_Guinea
  | "Paraguai" | "Paraguaj" | "Paraguajská republika" | "Paraguay Cumhuriyeti" | "Paraguay Vabariik" | "Paraguay" | "Paraguayi Köztársaság" | "Paraguayn tasavalta" | "Paraguayská republika" | "Paraguái" | "Paragvaj" | "Paragwaj" | "Repubblica del Paraguay" | "Republic of Paraguay" | "Republiek Paraguay" | "Republik Paraguay" | "Republika Paragvaj" | "Republika Paragwaju" | "Republiken Paraguay" | "República de Paraguay" | "República del Paraguay" | "República do Paraguai" | "République du Paraguay" | "Tetã Paraguái" | "Парагвай" | "Республика Парагвай" | "باراغواي" | "جمهورية باراغواي" | "جمهوری پاراگوئه" | "جمہوریہ پیراگوئے" | "پاراگوئه" | "پیراگوئے" | "パラグアイ" | "パラグアイ共和国" | "巴拉圭" | "巴拉圭共和国" | "파라과이 공화국" | "파라과이" -> Some Paraguay
  | "Perou" | "Peru Cumhuriyeti" | "Peru" | "Perui Köztársaság" | "Perun tasavalta" | "Peruu Vabariik" | "Peruu" | "Peruánska republika" | "Peruánská republika" | "Perù" | "Perú" | "Piruw Ripuwlika" | "Piruw Suyu" | "Piruw" | "Pérou" | "Repubblica del Perù" | "Republic of Peru" | "Republiek Peru" | "Republik Perou" | "Republik Peru" | "Republika Peru" | "Republiken Peru" | "República de Perú" | "República del Perú" | "República do Peru" | "République du Pérou" | "Перу" | "Республика Перу" | "بيرو" | "جمهورية بيرو" | "جمهوری پرو" | "جمہوریہ پیرو" | "پرو" | "پیرو" | "ペルー" | "ペルー共和国" | "秘鲁" | "秘鲁共和国" | "페루 공화국" | "페루" -> Some Peru
  | "Filipiini Vabariik" | "Filipiinid" | "Filipijnen" | "Filipinas" | "Filipinez" | "Filipini" | "Filipinler Cumhuriyeti" | "Filipinler" | "Filipiny" | "Filippiinien tasavalta" | "Filippiinit" | "Filippine" | "Filippinerna" | "Filipínska republika" | "Filipínská republika" | "Filipíny" | "Fülöp-szigetek" | "Fülöp-szigeteki Köztársaság" | "Philippinen" | "Philippines" | "Pilipinas" | "Repubblica delle Filippine" | "Republic of the Philippines" | "Republiek der Filipijnen" | "Republik Filipinez" | "Republik der Philippinen" | "Republika Filipin" | "Republika Filipini" | "Republiken Filippinerna" | "República das Filipinas" | "República de las Filipinas" | "Repúblika ng Pilipinas" | "République des Philippines" | "Республика Филиппины" | "Филиппины" | "الفلبين" | "جمهورية الفلبين" | "جمهوری فیلیپین" | "جمہوریہ فلپائن" | "فلپائن" | "فیلیپین" | "フィリピン" | "フィリピン共和国" | "菲律宾" | "菲律宾共和国" | "필리핀 공화국" | "필리핀" -> Some Philippines
  | "Groupe d'îles Pitcairn" | "Grupa Ostrva Pitkern" | "Grupo de Islas Pitcairn" | "Ilhas Pitcairn" | "Inizi Pitcairn" | "Inizi Pitcairn, Henderson, Ducie hag Oeno" | "Islas Pitcairn" | "Isole Pitcairn" | "Ostrva Pitkern" | "Pitcairn Adaları" | "Pitcairn Group of Islands" | "Pitcairn Henderson Ducie and Oeno Islands" | "Pitcairn Islands" | "Pitcairn groep eilanden" | "Pitcairn grupo de ilhas" | "Pitcairn gruppo di isole" | "Pitcairn skupine otoka" | "Pitcairn" | "Pitcairn, Henderson, Ducie ve Oeno Adaları" | "Pitcairn-szigetek" | "Pitcairneilanden" | "Pitcairni, Hendersoni, Ducie ja Oeno saar" | "Pitcairninseln" | "Pitcairnove ostrovy" | "Pitcairnovo otočje" | "Pitcairnovy ostrovy" | "Pitcairnöarna" | "Wyspy Pitcairn, Henderson, Ducie i Oeno" | "Îles Pitcairn" | "Острова Питкэрн" | "Питкэрн группа островов" | "جزائر پٹکیرن" | "جزایر پیت‌کرن" | "جزر بيتكيرن" | "پٹکیرن جزائر" | "ピトケアン諸島" | "皮特凯恩群岛" | "핏케언 제도" -> Some Pitcairn_Islands
  | "Lengyel Köztársaság" | "Lengyelország" | "Poland" | "Polen" | "Poljska" | "Pologne" | "Polonia" | "Polonya Cumhuriyeti" | "Polonya" | "Polska" | "Polsko" | "Polská republika" | "Polónia" | "Poola Vabariik" | "Poola" | "Poľsko" | "Poľská republika" | "Puola" | "Puolan tasavalta" | "Repubblica di Polonia" | "Republic of Poland" | "Republiek Polen" | "Republik Polen" | "Republik Polonia" | "Republika Poljska" | "Republiken Polen" | "República da Polónia" | "República de Polonia" | "Rzeczpospolita Polska" | "République de Pologne" | "Польша" | "Республика Польша" | "الجمهورية البولندية" | "بولندا" | "جمهوری لهستان" | "جمہوریہ پولینڈ" | "لهستان" | "پولینڈ" | "ポーランド" | "ポーランド共和国" | "波兰" | "波兰共和国" | "폴란드 공화국" | "폴란드" -> Some Poland
  | "Portekiz Cumhuriyeti" | "Portekiz" | "Portogallo" | "Portugal" | "Portugali Vabariik" | "Portugali" | "Portugalia" | "Portugalin tasavalta" | "Portugalska Republika" | "Portugalsko" | "Portugalská republika" | "Portugese Republiek" | "Portugiesische Republik" | "Portuguesa" | "Portuguese Republic" | "Portugál Köztársaság" | "Portugália" | "Repubblica portoghese" | "Republik Portugalat" | "Republika Portugal" | "Republika Portugalska" | "Republiken Portugal" | "República Portuguesa" | "República português" | "République portugaise" | "Португалия" | "Португальская Республика" | "البرتغال" | "الجمهورية البرتغالية" | "جمهوری پرتغال" | "جمہوریہ پرتگال" | "پرتغال" | "پرتگال" | "ポルトガル" | "ポルトガル共和国" | "葡萄牙" | "葡萄牙共和国" | "포르투갈 공화국" | "포르투갈" -> Some Portugal
  | "Asociado de Puerto Rico" | "Commonwealth di Porto Rico" | "Commonwealth of Puerto Rico" | "Estado Libre Asociado de Puerto Rico" | "Freistaat Puerto Rico" | "Gemenebest van Puerto Rico" | "Kenglad Puerto Rico" | "Komonvelt Portoriko" | "Porto Rico" | "Porto Riko Topluluğu" | "Porto Riko" | "Portorické spoločenstvo" | "Portoriko" | "Portoryko" | "Puerto Rico Ühendus" | "Puerto Rico" | "Wolne Stowarzyszone Państwo Portoryko" | "Zajednica Puerto Rico" | "Пуэрто-Рико" | "Содружество Пуэрто-Рико" | "بويرتوريكو" | "دولتِ مشترکہ پورٹو ریکو" | "قلمرو همسود پورتوریکو" | "كومنولث بويرتوريكو" | "پورتوریکو" | "پورٹو ریکو" | "プエルトリコ" | "波多黎各" | "波多黎各联邦" | "푸에르토리코" -> Some Puerto_Rico
  | "Catar" | "Dawlat Qaṭar" | "Država Katar" | "Estado de Qatar" | "Estado do Qatar" | "Katar Devleti" | "Katar" | "Katari Riik" | "Katari Állam" | "Katarský štát" | "Państwo Katar" | "Qatar" | "Qatarin valtio" | "Staat Katar" | "Staat Qatar" | "Stad Katar" | "State of Qatar" | "Staten Qatar" | "Stato del Qatar" | "Stát Katar" | "État du Qatar" | "Государство Катар" | "Катар" | "دولة قطر" | "دولت قطر" | "ریاستِ قطر" | "قطر" | "カタール" | "カタール国" | "卡塔尔" | "卡塔尔国" | "카타르" | "카타르국" -> Some Qatar
  | "Departman Reinion" | "Enez ar Reünion" | "Ile de la Réunion" | "Ilha da Reunião" | "Isla de la Reunión" | "La Réunion" | "Reinion" | "Reunion" | "Reunião" | "Reunión" | "Reünion" | "Riunione" | "Réunion Island" | "Réunion" | "Réunioni departemang" | "Réunionský zámorský departmán" | "Реюньон" | "جزيرة لا ريونيون" | "رئونیون" | "رے یونیوں جزیرہ" | "رے یونیوں" | "لا ريونيون" | "レユニオン" | "留尼旺岛" | "레위니옹" -> Some Reunion
  | "Roemenië" | "Romania" | "Romanya" | "Románia" | "România" | "Roménia" | "Romênia" | "Roumania" | "Roumanie" | "Rumania" | "Rumeenia" | "Rumunia" | "Rumunija" | "Rumunjska" | "Rumunsko" | "Rumänien" | "Румыния" | "رومانيا" | "رومانی" | "رومانیہ" | "ルーマニア" | "罗马尼亚" | "루마니아" -> Some Romania
  | "Federación de Rusia" | "Federacja Rosyjska" | "Federazione russa" | "Federação Russa" | "Fédération de Russie" | "Kevread Rusia" | "Oroszország" | "Oroszországi Föderáció" | "Rosja" | "Rusia" | "Rusija" | "Ruska Federacija" | "Rusko" | "Ruská federace" | "Ruská federácia" | "Rusland" | "Russia" | "Russian Federation" | "Russie" | "Russische Federatie" | "Russische Föderation" | "Russland" | "Rusya Federasyonu" | "Rusya" | "Ryska federationen" | "Ryssland" | "Rússia" | "Venemaa Föderatsioon" | "Venemaa" | "Venäjä" | "Venäjän federaatio" | "Российская Федерация" | "Россия" | "روس" | "روسيا الاتحادية" | "روسيا" | "روسی وفاق" | "روسیه" | "فدراسیون روسیه" | "ロシア" | "ロシア連邦" | "俄罗斯" | "俄罗斯联邦" | "러시아 연방" | "러시아" -> Some Russia
  | "Repubblica del Ruanda" | "Republic of Rwanda" | "Republiek Rwanda" | "Republik Ruanda" | "Republik Rwanda" | "Republika Ruanda" | "Republika Ruandi" | "Republika Rwandy" | "Republiken Rwanda" | "Repubulika y'u Rwanda" | "República de Rwanda" | "República do Ruanda" | "Ruanda Cumhuriyeti" | "Ruanda" | "Ruandai Köztársaság" | "Ruandan tasavalta" | "Rwanda Vabariik" | "Rwanda" | "Rwandská republika" | "République du Rwanda" | "République rwandaise" | "Республика Руанда" | "Руанда" | "جمهورية رواندا" | "جمهوری رواندا" | "جمہوریہ روانڈا" | "رواندا" | "روانڈا" | "ルワンダ" | "ルワンダ共和国" | "卢旺达" | "卢旺达共和国" | "르완다 공화국" | "르완다" -> Some Rwanda
  | "Antille Francesi" | "Colectividad de San Barthélemy" | "Coletividade de Saint Barthélemy" | "Collectivity of Saint Barthélemy" | "Collectivité de Saint-Barthélemy" | "Collettività di Saint Barthélemy" | "Gebietskörperschaft Saint-Barthélemy" | "Gemeenschap Saint Barthélemy" | "Kolektivnost sv Barthélemy" | "Saint Barthélemy" | "Saint-Barthélemy territoriaalühendus" | "Saint-Barthélemy" | "Saint-Barthélemyn yhteisö" | "San Bartolomé" | "St. Barthelemy" | "Svatý Bartoloměj" | "Sveti Bartolomej" | "Svätý Bartolomej" | "São Bartolomeu" | "kolektivitet Sveti Bartolomej" | "Коллективность Санкт -Бартельми" | "Сен-Бартелеми" | "التجمع الإقليمي لسانت بارتيليمي" | "سان بارتليمي" | "سن بارتلمی" | "سینٹ بارتھیملے" | "サンバルテルミー" | "サン・バルテルミー島" | "圣巴泰勒米" | "圣巴泰勒米集体" | "생바르텔레미" -> Some Saint_Barthelemy
  | "Saint Helena" | "Saint Helena, Ascension and Tristan da Cunha" | "Saint Helena, Ascension ha Tristan da Cunha" | "Saint Helena, Ascension ja Tristan da Cunha" | "Sainte-Hélène, Ascension et Tristan da Cunha" | "Sankt Helena, Ascension und Tristan da Cunha" | "Sankta Helena" | "Sant'Elena, Ascensione e Tristan da Cunha" | "Santa Elena, Ascensión y Tristán de Acuña" | "Santa Helena, Ascensão e Tristão da Cunha" | "Sint-Helena, Ascension en Tristan da Cunha" | "St. Helena, Ascension and Tristan da Cunha" | "St. Helena, Ascension und Tristan da Cunha" | "Svatá Helena, Ascension a Tristan da Cunha" | "Sveta Helena" | "Sveta Jelena" | "Svätá Helena (zámorské územie)" | "Szent Ilona" | "Szent Ilona-sziget" | "Wyspa Świętej Heleny, Wyspa Wniebowstąpienia i Tristan da Cunha" | "Острова Святой Елены, Вознесения и Тристан-да-Кунья" | "سانت هيلينا وأسينشين وتريستان دا كونا" | "سنت هلن" | "سینٹ ہلینا، اسینشن و ترسٹان دا کونیا" | "セントヘレナ" | "セントヘレナ・アセンション・トリスタンダクーニャ" | "圣赫勒拿、阿森松和特里斯坦-达库尼亚" | "세인트헬레나" -> Some Saint_Helena_Ascension_And_Tristan_Da_Cunha
  | "Federace Sv. Kryštof a Nevis" | "Federacija Sent Kits i Nevis" | "Federacija Sv.Kristofora i Nevisa" | "Federación de San Cristóbal y Nevis" | "Federacja Saint Kitts i Nevis" | "Federatie van Saint Kitts en Nevis" | "Federation of Saint Christopher and Nevis" | "Federationen Saint Kitts och Nevis" | "Federazione di Saint Christopher e Nevis" | "Federação de São Cristóvão e Nevis" | "Feder໡cia Svätého Krištofa a Nevisu" | "Fédération de Saint-Christophe-et-Niévès" | "Föderation von St. Kitts und Nevis" | "Kevread Saint Kitts ha Nevis" | "Saint Christopher és Nevis Államszövetség" | "Saint Christopherin ja Nevisin federaatio" | "Saint Kitts and Nevis" | "Saint Kitts e Nevis" | "Saint Kitts en Nevis" | "Saint Kitts ha Nevis" | "Saint Kitts i Nevis" | "Saint Kitts ja Nevis" | "Saint Kitts och Nevis" | "Saint Kitts ve Nevis Federasyonu" | "Saint Kitts ve Nevis" | "Saint Kitts és Nevis" | "Saint Kittsi ja Nevise Föderatsioon" | "Saint-Christophe-et-Niévès" | "San Cristóbal y Nieves" | "St. Kitts und Nevis" | "Svatý Kryštof a Nevis" | "Sveti Kits i Nevis" | "Sveti Kristof i Nevis" | "Svätý Krištof a Nevis" | "São Cristóvão e Nevis" | "Сент-Китс и Невис" | "Федерация Сент-Кристофер и Н е в и с" | "اتحاد القديس كريستوفر ونيفيس" | "سانت كيتس ونيفيس" | "سنت کیتس و نویس" | "سینٹ کیٹز و ناویس" | "فدراسیون سنت کیتس و نویس" | "وفاقِ سینٹ کیٹز و ناویس" | "セントキッツ・ネービス" | "セントキッツ・ネーヴィス連邦" | "圣克里斯托弗和尼维斯联邦" | "圣基茨和尼维斯" | "세인트키츠 네비스 연방" | "세인트키츠 네비스" -> Some Saint_Kitts_And_Nevis
  | "Saint Lucia" | "Sainte-Lucie" | "Santa Lucia" | "Santa Lucía" | "Santa Lúcia" | "Santez-Lusia" | "St. Lucia" | "Svatá Lucie" | "Sveta Lucija" | "Svätá Lucia" | "Сент-Люсия" | "سانت لوسيا" | "سنت لوسیا" | "سینٹ لوسیا" | "セントルシア" | "圣卢西亚" | "세인트루시아" -> Some Saint_Lucia
  | "Collectivity of Saint Martin" | "Collectivité de Saint-Martin" | "Förvaltningsområdet Saint-Martin" | "Saint Martin (French part)" | "Saint Martin" | "Saint-Martin Közösség" | "Saint-Martini ühendus" | "Svatý Martin (Francie)" | "Wspólnota Saint-Martin" | "saint Martin" | "Сен-Мартен" | "سانت مارتن" | "سینٹ مارٹن" | "サンマルタン" | "サン・マルタン" | "圣马丁" | "생마르탱" -> Some Saint_Martin
  | "Collectivité territoriale de Saint-Pierre-et-Miquelon" | "Ostrovy Saint Pierre a Miquelon" | "Saint Pierre a Miquelon" | "Saint Pierre and Miquelon" | "Saint Pierre e Miquelon" | "Saint Pierre en Miquelon" | "Saint Pierre i Miquelon" | "Saint Pierre ve Miquelon" | "Saint-Pierre a Miquelon" | "Saint-Pierre e Miquelon" | "Saint-Pierre en Miquelon" | "Saint-Pierre i Miquelon" | "Saint-Pierre ja Miquelon" | "Saint-Pierre och Miquelon" | "Saint-Pierre és Miquelon" | "Saint-Pierre-et-Miquelon" | "Saint-Pierre’i ja Miqueloni territoriaalühendus" | "San Pedro y Miquelón" | "Sant-Pêr-ha-Mikelon" | "Sent Pjer i Mikelon" | "St. Pierre und Miquelon" | "Sveti Petar i Mikelon" | "Сен-Пьер и Микелон" | "سان بيير وميكلون" | "سن-پیر-ا-میکلون" | "سن-پیِر و میکلُن" | "سینٹ پیئر و میکیلون" | "サンピエール島・ミクロン島" | "サンピエール島及びミクロン島" | "圣皮埃尔和密克隆" | "생피에르 미클롱" -> Some Saint_Pierre_And_Miquelon
  | "Saint Vincent and the Grenadines" | "Saint Vincent e Grenadine" | "Saint Vincent en de Grenadines" | "Saint Vincent i Grenadyny" | "Saint Vincent ja Grenadiinid" | "Saint Vincent ja Grenadiinit" | "Saint Vincent och Grenadinerna" | "Saint Vincent ve Grenadinler" | "Saint Vincent és a Grenadine-szigetek" | "Saint Vincent" | "Saint-Vincent-et-les Grenadines" | "Saint-Vincent-et-les-Grenadines" | "San Vicente y Granadinas" | "San Vicente y las Granadinas" | "Sant-Visant hag ar Grenadinez" | "Sent Vinsent i Grenadini" | "St. Vincent und die Grenadinen" | "Svatý Vincenc a Grenadiny" | "Sveti Vincent i Grenadini" | "Sveti Vinsent i Grenadini" | "Svätý Vincent a Grenadíny" | "São Vicente e Granadinas" | "São Vincente e Granadinas" | "Сент-Винсент и Гренадины" | "سانت فينسنت والغرينادين" | "سنت وینسنت و گرنادین‌ها" | "سینٹ وینسینٹ و گریناڈائنز" | "セントビンセント・グレナディーン" | "セントビンセント・グレナディーン諸島" | "圣文森特和格林纳丁斯" | "세인트빈센트 그레나딘" -> Some Saint_Vincent_And_The_Grenadines
  | "Bağımsız Samoa Devleti" | "Estado Independente de Samoa" | "Estado Independiente de Samoa" | "Independent State of Samoa" | "Malo Saʻoloto Tutoʻatasi o Sāmoa" | "Nezavisna Država Samoa" | "Nezávislý stát Samoa" | "Nezávislý štátSamoa" | "Niezależne Państwo Samoa" | "Onafhankelijke Staat Samoa" | "Samoa Iseseisvusriik" | "Samoa" | "Samoan itsenäinen valtio" | "Självständiga staten Samoa" | "Stad Dizalc'h Samoa" | "Stato indipendente di Samoa" | "Szamoai Független Állam" | "Sāmoa" | "Unabhängige Staat Samoa" | "Независимое Государство Самоа" | "Самоа" | "آزاد سلطنتِ ساموا" | "ایالت مستقل ساموآ" | "دولة ساموا المستقلة" | "ساموآ" | "ساموا" | "سامووا" | "サモア" | "サモア独立国" | "萨摩亚" | "萨摩亚独立国" | "사모아 독립국" | "사모아" -> Some Samoa
  | "Meest Serene Republiek San Marino" | "Repubblica di San Marino" | "Republic of San Marino" | "Republik San Marino" | "Republika San Marino" | "Republiken San Marino" | "République de Saint-Marin" | "Saint-Marin" | "San Marino Cumhuriyeti" | "San Marino Köztársaság" | "San Marino Vabariik" | "San Marino" | "San Marinon seesteinen tasavalta" | "San Maríno" | "Sanmarínska republika" | "Serenissima Repubblica di San Marino" | "Serenísima República de San Marino" | "Sereníssima República de San Marino" | "Većina Serene Republika San Marino" | "Большинство Serene Республика Сан-Марино" | "Сан-Марино" | "جمهورية سان مارينو" | "جمهوری سان مارینو" | "جمہوریہ سان مارینو" | "سان مارينو" | "سان مارینو" | "サンマリノ" | "サンマリノ共和国" | "圣马力诺" | "圣马力诺共和国" | "산마리노 공화국" | "산마리노" -> Some San_Marino
  | "Democratic Republic of São Tomé and Príncipe" | "Democratische Republiek Sao Tomé en Principe" | "Demokratická republika Svatý Tomáš a Princův ostrov" | "Demokratická republika Svätého Tomáša A princovho ostrova" | "Demokratische Republik São Tomé und Príncipe" | "Demokratiska republiken São Tomé och Príncipe" | "Demokratska Republika Sao Tome i Prinsipe" | "Demokratska Republika São Tome i Principe" | "Demokratyczna Republika Wysp Świętego Tomasza i Książęcej" | "Repubblica democratica di São Tomé e Príncipe" | "Republik Demokratel São Tomé ha Príncipe" | "República Democrática de Santo Tomé y Príncipe" | "República Democrática de São Tomé e Príncipe" | "República Democrática do São Tomé e Príncipe" | "République démocratique de São Tomé et Príncipe" | "Santo Tomé y Príncipe" | "Sao Tome and Principe" | "Sao Tome i Prinsipe" | "Sao Tomé en Principe" | "Svatý Tomáš a Princův ostrov" | "Sveti Toma i Princip" | "Svätý Tomáš a Princov ostrov" | "São Tomé and Príncipe" | "São Tomé e Príncipe" | "São Tomé et Príncipe" | "São Tomé ha Príncipe" | "São Tomé ja Príncipe Demokraatlik Vabariik" | "São Tomé ja Príncipe" | "São Tomé ja Príncipen demokraattinen tasavalta" | "São Tomé och Príncipe" | "São Tomé und Príncipe" | "São Tomé ve Príncipe Demokratik Cumhuriyeti" | "São Tomé ve Príncipe" | "São Tomé és Príncipe Demokratikus Köztársaság" | "São Tomé és Príncipe" | "São Téme ja Príncipe" | "Wyspy Świętego Tomasza i Książęca" | "Демократическая Республика Сан-Томе и Принсипи" | "Сан-Томе и Принсипи" | "جمهورية ساو تومي وبرينسيب الديمقراطية" | "جمهوری دموکراتیک سائوتومه و پرنسیپ" | "جمہوریہ ساؤ ٹومے و پرنسپے" | "ساؤ ٹومے و پرنسپے" | "سائوتومه و پرنسیپ" | "ساو تومي وبرينسيب" | "サントメ・プリンシペ" | "サントメ・プリンシペ民主共和国" | "圣多美和普林西比" | "圣多美和普林西比民主共和国" | "상투메 프린시페 민주 공화국" | "상투메 프린시페" -> Some Sao_Tome_And_Principe
  | "Al-Mamlakah al-‘Arabiyyah as-Su‘ūdiyyah" | "Arabia Saoudat" | "Arabia Saudita" | "Arabia Saudyjska" | "Arabia Saudí" | "Arabie Saoudite" | "Arábia Saudita" | "Kingdom of Saudi Arabia" | "Koninkrijk van Saoedi-Arabië" | "Kraljevina Saudijska Arabija" | "Królestwo Arabii Saudyjskiej" | "Kungadömet Saudiarabien" | "Königreich Saudi-Arabien" | "Reino da Arábia Saudita" | "Reino de Arabia Saudita" | "Rouantelezh Arabia Saoudat" | "Royaume d'Arabie Saoudite" | "SA" | "Saoedi-Arabië" | "Saudi Araabia Kuningriik" | "Saudi Araabia" | "Saudi Arabia" | "Saudi-Arabia" | "Saudi-Arabian kuningaskunta" | "Saudi-Arabien" | "Saudiarabien" | "Saudijska Arabija" | "Saudskoarabské kráľovstvo" | "Saudská Arábia" | "Saúdskoarabské království" | "Saúdská Arábie" | "Suudi Arabistan Krallığı" | "Suudi Arabistan" | "Szaúd-Arábia" | "Королевство Саудовская Аравия" | "Саудовская Аравия" | "السعودية" | "المملكة العربية السعودية" | "سعودی عرب" | "عربستان سعودی" | "مملکتِ سعودی عرب" | "پادشاهی عربی سَعودی" | "サウジアラビア" | "サウジアラビア王国" | "沙特阿拉伯" | "沙特阿拉伯王国" | "사우디아라비아 왕국" | "사우디아라비아" -> Some Saudi_Arabia
  | "Repubblica del Senegal" | "Republic of Senegal" | "Republiek Senegal" | "Republik Senegal" | "Republika Senegal" | "Republiken Senegal" | "República de Senegal" | "República do Senegal" | "République du Sénégal" | "Senegal Cumhuriyeti" | "Senegal" | "Senegali Vabariik" | "Senegalin tasavalta" | "Senegalská republika" | "Szenegál" | "Szenegáli Köztársaság" | "Sénégal" | "Республика Сенегал" | "Сенегал" | "السنغال" | "جمهورية السنغال" | "جمهوری سنگال" | "جمہوریہ سینیگال" | "سنگال" | "سینیگال" | "セネガル" | "セネガル共和国" | "塞内加尔" | "塞内加尔共和国" | "세네갈 공화국" | "세네갈" -> Some Senegal
  | "Repubblica di Serbia" | "Republic of Serbia" | "Republiek Servië" | "Republik Serbia" | "Republik Serbien" | "Republika Serbii" | "Republika Srbija" | "Republiken Serbien" | "República da Sérvia" | "República de Serbia" | "République de Serbie" | "Serbia Vabariik" | "Serbia" | "Serbian tasavalta" | "Serbie" | "Serbien" | "Servië" | "Srbija" | "Srbsko" | "Srbská republika" | "Szerb Köztársaság" | "Szerbia" | "Sérvia" | "Sırbistan Cumhuriyeti" | "Sırbistan" | "Република Србија" | "Республика Сербия" | "Сербия" | "Србија" | "جمهورية صيربيا" | "جمهوری صربستان" | "جمہوریہ سربیا" | "سربیا" | "صربستان" | "صيربيا" | "セルビア" | "セルビア共和国" | "塞尔维亚" | "塞尔维亚共和国" | "세르비아 공화국" | "세르비아" -> Some Serbia
  | "Repiblik Sesel" | "Repubblica delle Seychelles" | "Republic of Seychelles" | "Republiek der Seychellen" | "Republik Sechelez" | "Republik der Seychellen" | "Republika Sejšeli" | "Republika Seszeli" | "Republiken Seychellerna" | "República das Seychelles" | "República de las Seychelles" | "République des Seychelles" | "Sechelez" | "Seicheles" | "Seišelli Vabariik" | "Seišellid" | "Sejšeli" | "Sesel" | "Seszele" | "Seychelle Köztársaság" | "Seychelle-szigetek" | "Seychellen" | "Seychellerna" | "Seychelles" | "Seychellien tasavalta" | "Seychellit" | "Seychelská republika" | "Seychely" | "Seyşeller Cumhuriyeti" | "Seyşeller" | "Республика Сейшельские Острова" | "Сейшельские Острова" | "جمهورية سيشل" | "جمهوری سیشل" | "جمہوریہ سیچیلیس" | "سيشل" | "سیشل" | "سیچیلیس" | "セーシェル" | "セーシェル共和国" | "塞舌尔" | "塞舌尔共和国" | "세이셸 공화국" | "세이셸" -> Some Seychelles
  | "Repubblica della Sierra Leone" | "Republic of Sierra Leone" | "Republiek Sierra Leone" | "Republik Sierra Leone" | "Republika Sierra Leone" | "Republika Sijera Leone" | "Republiken Sierra Leone" | "República da Serra Leoa" | "República de Sierra Leona" | "République de Sierra Leone" | "Serra Leoa" | "Sierra Leone Cumhuriyeti" | "Sierra Leone Köztársaság" | "Sierra Leone Vabariik" | "Sierra Leone" | "Sierra Leonen tasavalta" | "Sierraleonská republika" | "Sijera Leone" | "Республика Сьерра-Леоне" | "Сьерра-Леоне" | "جمهورية سيراليون" | "جمهوری سیرالئون" | "جمہوریہ سیرالیون" | "سيراليون" | "سیرالئون" | "سیرالیون" | "シエラレオネ" | "シエラレオネ共和国" | "塞拉利昂" | "塞拉利昂共和国" | "시에라리온 공화국" | "시에라리온" -> Some Sierra_Leone
  | "Repubblica di Singapore" | "Republic of Singapore" | "Republiek Singapore" | "Republik Singapour" | "Republik Singapur" | "Republik Singapura" | "Republika Singapur" | "Republika Singapuru" | "Republiken Singapore" | "República de Singapur" | "República de Singapura" | "République de Singapour" | "Singapore" | "Singaporen tasavalta" | "Singapour" | "Singapur Cumhuriyeti" | "Singapur" | "Singapura" | "Singapuri Vabariik" | "Singapurská republika" | "Szingapúr" | "Szingapúri Köztársaság" | "Республика Сингапур" | "Сингапур" | "جمهورية سنغافورة" | "جمهوری سنگاپور" | "جمہوریہ سنگاپور" | "سنغافورة" | "سنگاپور" | "சிங்கப்பூர் குடியரசு" | "சிங்கப்பூர்" | "シンガポール" | "シンガポール共和国" | "新加坡" | "新加坡共和国" | "싱가포르 공화국" | "싱가포르" -> Some Singapore
  | "Sint Maarten (Dutch part)" | "Sint Maarten" | "Svatý Martin (Nizozemsko)" | "Синт-Маартен" | "Синт-Мартен" | "سنٹ مارٹن" | "سينت مارتن" | "シント・マールテン" | "圣马丁岛" | "신트마르턴" -> Some Sint_Maarten
  | "Eslovaquia" | "Eslováquia" | "Repubblica slovacca" | "Republik Slovak" | "Republika Słowacka" | "Republiken Slovakien" | "República Eslovaca" | "République slovaque" | "Slovacchia" | "Slovak Cumhuriyeti" | "Slovak Republic" | "Slovaki Vabariik" | "Slovakia" | "Slovakian tasavalta" | "Slovakien" | "Slovakkia" | "Slovakya" | "Slovaquie" | "Slovačka republika" | "Slovačka" | "Slovensko" | "Slovenská republika" | "Slowaakse Republiek" | "Slowakei" | "Slowakije" | "Slowakische Republik" | "Szlovák Köztársaság" | "Szlovákia" | "Słowacja" | "slovačka" | "Словакия" | "Словацкая Республика" | "اِسلُواکی" | "جمهورية سلوفاكيا" | "جمهوری اسلواکی" | "جمہوریہ سلوواکیہ" | "سلوفاكيا" | "سلوواکیہ" | "スロバキア" | "スロバキア共和国" | "斯洛伐克" | "斯洛伐克共和国" | "슬로바키아 공화국" | "슬로바키아" -> Some Slovakia
  | "Eslovenia" | "Eslovénia" | "Repubblica di Slovenia" | "Republic of Slovenia" | "Republiek Slovenië" | "Republik Slovenia" | "Republik Slowenien" | "Republika Slovenija" | "Republika Słowenii" | "Republiken Slovenien" | "República da Eslovénia" | "República de Eslovenia" | "République de Slovénie" | "Sloveenia Vabariik" | "Sloveenia" | "Slovenia" | "Slovenian tasavalta" | "Slovenien" | "Slovenija" | "Slovenië" | "Slovenya Cumhuriyeti" | "Slovenya" | "Slovinsko" | "Slovinská republika" | "Slovénie" | "Slowenien" | "Szlovén Köztársaság" | "Szlovénia" | "Słowenia" | "Республика Словения" | "Словения" | "اسلوونی" | "جمهورية سلوفينيا" | "جمهوری اسلوونی" | "جمہوریہ سلووینیا" | "سلوفينيا" | "سلووینیا" | "スロベニア" | "スロベニア共和国" | "斯洛文尼亚" | "斯洛文尼亚共和国" | "슬로베니아 공화국" | "슬로베니아" -> Some Slovenia
  | "Ilhas Salomão" | "Inizi Salomon" | "Islas Salomón" | "Isole Salomone" | "Saalomoni Saared" | "Salamon-szigetek" | "Salomonen" | "Salomonove ostrovy" | "Salomonsaaret" | "Salomonseilanden" | "Salomonöarna" | "Solomon Adaları" | "Solomon Islands" | "Solomon eilanden" | "Solomonova Ostrva" | "Solomonski Otoci" | "Wyspy Salomona" | "islas Salomón" | "Îles Salomon" | "Šalamounovy ostrovy" | "Соломоновы Острова" | "Соломоновы острова" | "جزائر سلیمان" | "جزایر سلیمان" | "جزر سليمان" | "ソロモン諸島" | "所罗门群岛" | "솔로몬 제도" -> Some Solomon_Islands
  | "Bundesrepublik Somalia" | "Federal Republic of Somalia" | "Federale Republiek Somalië" | "Federalna Republika Somalii" | "Förbundsrepubliken Somalia" | "Jamhuuriyadda Federaalka Soomaaliya" | "Jumhūriyyat aṣ-Ṣūmāl al-Fiderāliyya" | "Repubblica federale di Somalia" | "Republik Kevreadel Somalia" | "República Federal da Somália" | "República Federal de Somalia" | "République fédérale de Somalie" | "Savezna Republika Somalija" | "Savezna Republika Somaliji" | "Somaalia Liitvabariik" | "Somaalia" | "Somali Federal Cumhuriyeti" | "Somali" | "Somalia" | "Somalian liittotasavalta" | "Somalie" | "Somalija" | "Somalië" | "Somália" | "Somálska federatívna republika" | "Somálsko" | "Somálská demokratická republika" | "Soomaaliya" | "Szomáli Szövetségi Köztársaság" | "Szomália" | "aṣ-Ṣūmāl" | "Сомали" | "Федеративная Республика Сомали" | "الصومال" | "جمهورية الصومال الفيدرالية" | "جمهوری فدرال سومالی" | "سومالی" | "صومالیہ" | "وفاقی جمہوریہ صومالیہ" | "ソマリア" | "ソマリア連邦共和国" | "索马里" | "索马里共和国" | "소말리아 연방 공화국" | "소말리아" -> Some Somalia
  | "Aforika Borwa" | "Afrika Borwa" | "Afrika Dzonga" | "Afrika-Borwa" | "Afrique du Sud" | "Afurika Tshipembe" | "Dél-afrikai Köztársaság" | "Etelä-Afrikan tasavalta" | "Etelä-Afrikka" | "Güney Afrika Cumhuriyeti" | "Güney Afrika" | "IRiphabhulikhi yeNingizimu Afrika" | "IRiphabliki yaseMzantsi Afrika" | "IRiphabliki yaseNingizimu Afrika" | "IRiphabliki yeSewula Afrika" | "Jihoafrická republika" | "Juhoafrická republika" | "Južnoafrička Republika" | "Lõuna-Aafrika Vabariik" | "Mzantsi Afrika" | "Ningizimu Afrika" | "Południowa Afryka" | "RSA" | "Rephaboliki ya Aforika Borwa" | "Rephaboliki ya Afrika Borwa" | "Rephaboliki ya Afrika-Borwa" | "Repubblica del Sud Africa" | "Republic of South Africa" | "Republiek Zuid-Afrika" | "Republiek van Suid-Afrika" | "Republik Suafrika" | "Republik Südafrika" | "Republika Južna Afrika" | "Republika Południowej Afryki" | "Republiken Sydafrika" | "República da África do Sul" | "República de Sudáfrica" | "Riphabliki ra Afrika Dzonga" | "Riphabuḽiki ya Afurika Tshipembe" | "République d'Afrique du Sud" | "Sewula Afrika" | "South Africa" | "Suafrika" | "Sud Africa" | "Sudáfrica" | "Suid-Afrika" | "Sydafrika" | "Südafrika" | "Zuid-Afrika" | "África do Sul" | "Южно-Африканская Республика" | "آفریقای جنوبی" | "جمهورية جنوب أفريقيا" | "جمهوری آفریقای جنوبی" | "جمہوریہ جنوبی افریقا" | "جنوب أفريقيا" | "جنوبی افریقا" | "南アフリカ" | "南アフリカ共和国" | "南非" | "南非共和国" | "남아프리카 공화국" | "남아프리카" -> Some South_Africa
  | "Déli-Georgia és Déli-Sandwich-szigetek" | "Etelä-Georgia ja Eteläiset Sandwichsaaret" | "Georgia Południowa i Sandwich Południowy" | "Georgia ar Su hag Inizi Sandwich ar Su" | "Georgia del Sud e Isole Sandwich Meridionali" | "Georgia del Sud e isole Sandwich del Sud" | "Georgia del Sur y las Islas Sandwich del Sur" | "Geórgia do Sul e Sandwich do Sul" | "Géorgie du Sud et les îles Sandwich du Sud" | "Géorgie du Sud-et-les Îles Sandwich du Sud" | "Güney Georgia ve Güney Sandwich Adaları" | "Ilhas Geórgia do Sul e Sandwich do Sul" | "Islas Georgias del Sur y Sandwich del Sur" | "Jižní Georgie a Jižní Sandwichovy ostrovy" | "Južna Džordžija i Južna Sendvička Ostrva" | "Južna Džordžija i Otoci Južni Sendvič" | "Južna Džordžija" | "Južna Georgija i otočje Južni Sandwich" | "Južná Georgia a Južné Sandwichove ostrovy" | "Lõuna-Georgia ja Lõuna-Sandwichi saared" | "South Georgia and the South Sandwich Islands" | "South Georgia" | "Sydgeorgien" | "Südgeorgien und die Südlichen Sandwichinseln" | "Zuid-Georgia en Zuidelijke Sandwicheilanden" | "Zuid-Georgië en de Zuidelijke Sandwich-eilanden" | "Южная Георгия и Южные Сандвичевы острова" | "جزایر جورجیای جنوبی و ساندویچ جنوبی" | "جنوبی جارجیا و جزائر جنوبی سینڈوچ" | "جنوبی جارجیا" | "جورجيا الجنوبية وجزر ساندوتش الجنوبية" | "جورجيا الجنوبية" | "サウスジョージア・サウスサンドウィッチ諸島" | "南ジョージア島・南サンドイッチ諸島" | "南乔治亚" | "南乔治亚岛和南桑威奇群岛" -> Some South_Georgia
  | "Corea del Sud" | "Corea del Sur" | "Coreia do Sul" | "Corée du Sud" | "Dél-Korea" | "Etelä-Korea" | "Güney Kore" | "Jižní Korea" | "Južna Koreja" | "Južná Kórea" | "Kore Cumhuriyeti" | "Korea Południowa" | "Korea Vabariik" | "Korea ar Su" | "Korea, Republic of" | "Koreai Köztársaság" | "Korean tasavalta" | "Korejská republika" | "Kórejská republika" | "Lõuna-Korea" | "Repubblica di Corea" | "Republic of Korea" | "Republiek Korea" | "Republik Korea" | "Republika Korei" | "Republika Koreja" | "Republiken Korea" | "República da Coreia" | "República de Corea" | "République de Corée" | "South Korea" | "Sydkorea" | "Südkorea" | "Zuid-Korea" | "Республика Корея" | "Южная Корея" | "جمهورية كوريا" | "جمهوری کره" | "جمہوریہ کوریا" | "جنوبی کوریا" | "كوريا الجنوبية" | "کرهٔ جنوبی" | "大韓民国" | "大韩民国" | "韓国" | "韩国" | "남조선" | "남한" | "대한민국" | "한국" -> Some South_Korea
  | "Dél-Szudán" | "Dél-szudáni Köztársaság" | "Etelä-Sudan" | "Etelä-Sudanin tasavalta" | "Güney Sudan Cumhuriyeti" | "Güney Sudan" | "Jihosúdánská republika" | "Jižní Súdán" | "Juhosudánska republika" | "Južni Sudan" | "Južný Sudán" | "Lõuna-Sudaan" | "Lõuna-Sudaani Vabariik" | "Repubblica del Sudan del Sud" | "Republic of South Sudan" | "Republiek Zuid-Soedan" | "Republik Soudan ar Su" | "Republik Südsudan" | "Republika Južni Sudan" | "Republiken Sydsudan" | "República de Sudán del Sur" | "República do Sudão do Sul" | "République du Soudan du Sud" | "Soudan ar Su" | "Soudan du Sud" | "South Sudan" | "Sudan del sud" | "Sudán del Sur" | "Sudão do Sul" | "Sydsudan" | "Südsudan" | "Zuid-Soedan" | "Республика Южный Судан" | "Южный Судан" | "جمهورية جنوب السودان" | "جمهوری سودان جنوبی" | "جمہوریہ جنوبی سوڈان" | "جنوب السودان" | "جنوبی سوڈان" | "سودان جنوبی" | "南スーダン" | "南スーダン共和国" | "南苏丹" | "南苏丹共和国" | "남수단 공화국" | "남수단" -> Some South_Sudan
  | "Espagne" | "Espanha" | "Espanja" | "Espanjan kuningaskunta" | "España" | "Hispaania Kuningriik" | "Hispaania" | "Hiszpania" | "Kingdom of Spain" | "Koninkrijk Spanje" | "Konungariket Spanien" | "Kraljevina Španija" | "Kraljevina Španjolska" | "Królestwo Hiszpanii" | "Königreich Spanien" | "Regno di Spagna" | "Reino de Espanha" | "Reino de España" | "Rouantelezh Spagn" | "Royaume d'Espagne" | "Spagn" | "Spagna" | "Spain" | "Spanien" | "Spanje" | "Spanyol Királyság" | "Spanyolország" | "İspanya Krallığı" | "İspanya" | "Španielske kráľovstvo" | "Španielsko" | "Španija" | "Španjolska" | "Španělsko" | "Španělské království" | "Испания" | "Королевство Испания" | "إسبانيا" | "اسپانیا" | "مملكة إسبانيا" | "مملکتِ ہسپانیہ" | "پادشاهی اسپانیا" | "ہسپانیہ" | "スペイン" | "西班牙" | "西班牙王国" | "스페인" | "에스파냐 왕국" -> Some Spain
  | "Democratic Socialist Republic of Sri Lanka" | "Democratische Socialistische Republiek Sri Lanka" | "Demokratische Sozialistische Republik Sri Lanka" | "Demokratiska socialistiska republiken Sri Lanka" | "Demokratska Socijalistička Republika Šri Lanka" | "Demokratska Socijalističke Republike Šri Lanke" | "Demokratyczno-Socjalistyczna Republika Sri Lanki" | "Repubblica democratica socialista dello Sri Lanka" | "Republik Demokratel ha Sokialour Sri Lanka" | "República Democrática Socialista de Sri Lanka" | "República Democrática Socialista do Sri Lanka" | "République démocratique socialiste du Sri Lanka" | "Sri Lanka Demokraatlik Sotsialistlik Vabariik" | "Sri Lanka Demokratik Sosyalist Cumhuriyeti" | "Sri Lanka" | "Sri Lankan demokraattinen sosialistinen tasavalta" | "Srí Lanka" | "Srí Lanka-i Demokratikus Szocialista Köztársaság" | "Srílanská demokratická socialistická republika" | "ilaṅkai" | "Šri Lanka" | "Демократическая Социалистическая Республика Шри-Ланка" | "Шри-Ланка" | "جمهورية سريلانكا الديمقراطية الشعبية" | "جمهوری دموکراتیک سوسیالیستی سری‌لانکا" | "جمہوری و اشتراکی جمہوریہ سری لنکا" | "سريلانكا" | "سری لنکا" | "سری‌لانکا" | "இலங்கை சனநாயக சோசலிசக் குடியரசு" | "இலங்கை" | "ශ්‍රී ලංකා ප්‍රජාතාන්ත්‍රික සමාජවාදී ජනරජය" | "ශ්‍රී ලංකාව" | "スリランカ" | "スリランカ民主社会主義共和国" | "斯里兰卡" | "斯里兰卡民主社会主义共和国" | "스리랑카 민주 사회주의 공화국" | "스리랑카" -> Some Sri_Lanka
  | "Jumhūrīyat as-Sūdān" | "Repubblica del Sudan" | "Republic of the Sudan" | "Republiek Soedan" | "Republik Soudan" | "Republik Sudan" | "Republika Sudan" | "Republiken Sudan" | "República de Sudán" | "República do Sudão" | "République du Soudan" | "Soedan" | "Soudan" | "Sudaan" | "Sudaani Vabariik" | "Sudan Cumhuriyeti" | "Sudanin tasavalta" | "Sudán" | "Sudánska republika" | "Sudão" | "Szudán" | "Szudáni Köztársaság" | "Súdán" | "Súdánská republika" | "Республика Судан" | "Судан" | "السودان" | "جمهورية السودان" | "جمهوری سودان" | "جمہوریہ سودان" | "سودان" | "スーダン" | "スーダン共和国" | "苏丹" | "苏丹共和国" | "수단 공화국" | "수단" -> Some Sudan
  | "Repubblica del Suriname" | "Republic of Suriname" | "Republiek Suriname" | "Republik Surinam" | "Republik Suriname" | "Republika Surinam" | "Republika Surinamu" | "Republiken Surinam" | "República de Suriname" | "República do Suriname" | "République du Suriname" | "Sarnam" | "Sranangron" | "Surinam Cumhuriyeti" | "Surinam" | "Suriname Köztársaság" | "Suriname Vabariik" | "Suriname" | "Surinamen tasavalta" | "Surinamská republika" | "Республика Суринам" | "Суринам" | "جمهورية سورينام" | "جمهوری سورینام" | "جمہوریہ سرینام" | "سرینام" | "سورينام" | "سورینام" | "スリナム" | "スリナム共和国" | "苏里南" | "苏里南共和国" | "수리남 공화국" | "수리남" -> Some Suriname
  | "Huippuvuoret" | "Ilhas Svalbard e Jan Mayen" | "Islas Svalbard y Jan Mayen" | "Jan Mayen Svalbard" | "Spitzbergen und Jan Mayen" | "Svalbard a Jan Mayen" | "Svalbard and Jan Mayen Islands" | "Svalbard and Jan Mayen" | "Svalbard e Jan Mayen" | "Svalbard en Jan Mayen" | "Svalbard et Jan Mayen" | "Svalbard ha Jan Mayen" | "Svalbard i Jan Majen" | "Svalbard i Jan Mayen" | "Svalbard och Jan Mayen" | "Svalbard og Jan Mayen" | "Svalbard ve Jan Mayen" | "Svalbard és Jan Mayen" | "Svalbard" | "Špicberky a Jan Mayen" | "Свальбарда ог Ян-Майен" | "Шпицберген и Ян-Майен" | "سفالبارد ويان ماين" | "سوالبارد و یان ماین" | "سوالبارڈ اور جان میئن" | "スヴァールバル諸島およびヤンマイエン島" | "スヴァールバル諸島・ヤンマイエン島" | "斯瓦尔巴特" | "스발바르 얀마옌 제도" -> Some Svalbard_And_Jan_Mayen
  | "Kingdom of Sweden" | "Koninkrijk Zweden" | "Konungariket Sverige" | "Kraljevina Švedska" | "Królestwo Szwecji" | "Königreich Schweden" | "Regno di Svezia" | "Reino da Suécia" | "Reino de Suecia" | "Rootsi Kuningriik" | "Rootsi" | "Rouantelezh Sveden" | "Royaume de Suède" | "Ruotsi" | "Ruotsin kuningaskunta" | "Schweden" | "Suecia" | "Suède" | "Suécia" | "Sveden" | "Sverige" | "Svezia" | "Svéd Királyság" | "Svédország" | "Sweden" | "Szwecja" | "Zweden" | "İsveç Krallığı" | "İsveç" | "Švedska" | "Švédske kráľovstvo" | "Švédsko" | "Švédské království" | "Королевство Швеция" | "Швеция" | "السويد" | "سوئد" | "سویڈن" | "مملكة السويد" | "مملکتِ سویڈن" | "پادشاهی سوئد" | "スウェーデン" | "スウェーデン王国" | "瑞典" | "瑞典王国" | "스웨덴 왕국" | "스웨덴" -> Some Sweden
  | "Confederación Suiza" | "Confederazione Svizzera" | "Confederazione svizzera" | "Confederaziun svizra" | "Confederação Suíça" | "Confédération suisse" | "Kengevredad Suis" | "Konfederacja Szwajcarska" | "Schweiz" | "Schweizerische Eidgenossenschaft" | "Schweiziska edsförbundet" | "Suis" | "Suisse" | "Suiza" | "Suíça" | "Sveitsi" | "Sveitsin valaliitto" | "Svizra" | "Svizzera" | "Svájc" | "Swiss Confederation" | "Switzerland" | "Szwajcaria" | "Zwitserland" | "Zwitserse Confederatie" | "İsviçre Konfederasyonu" | "İsviçre" | "Švajcarska Konfederacija" | "Švajcarska" | "Švajčiarska konfederácia" | "Švajčiarsko" | "Šveits" | "Šveitsi Konföderatsioon" | "Švicarska" | "Švýcarsko" | "Švýcarská konfederace" | "švicarska Konfederacija" | "Швейцария" | "Швейцарская Конфедерация" | "الاتحاد السويسري" | "سوئیس متحدہ" | "سوئیس" | "سويسرا" | "سویٹذرلینڈ" | "کنفدراسیون سوئیس" | "スイス" | "スイス連邦" | "瑞士" | "瑞士联邦" | "스위스 연방" | "스위스" -> Some Switzerland
  | "Al-Jumhūrīyah Al-ʻArabīyah As-Sūrīyah" | "Arabische Republik Syrien" | "Repubblica araba siriana" | "Republik Arab Siriat" | "República Árabe Siria" | "República Árabe Síria" | "République arabe syrienne" | "Siria" | "Sirija" | "Sirijska Arapska Republika" | "Suriye Arap Cumhuriyeti" | "Suriye" | "Syria" | "Syrian Arab Republic" | "Syrie" | "Syrien" | "Syrische Arabische Republiek" | "Syriska arabiska republiken" | "Syrië" | "Syrská arabská republika" | "Syryjska Republika Arabska" | "Syyria" | "Syyrian arabitasavalta" | "Szíria" | "Szíriai Arab Köztársaság" | "Síria" | "Süüria Araabia Vabariik" | "Süüria" | "Sýria" | "Sýrie" | "Sýrska arabská republika" | "Сирийская Арабская Республика" | "Сирия" | "الجمهورية العربية السورية" | "جمهوری عربی سوریه" | "سوريا" | "سوریه" | "سوریہ" | "عرب جمہوریہ سوریہ" | "シリア" | "シリア・アラブ共和国" | "叙利亚" | "叙利亚阿拉伯共和国" | "시리아 아랍 공화국" | "시리아" -> Some Syria
  | "Chinese Taipei" | "Ilha Formosa" | "Kiinan tasavalta" | "Kínai Köztársaság" | "Repubblica cinese (Taiwan)" | "Republic of China" | "Republiek China (Taiwan)" | "Republik China (Taiwan)" | "Republik Sina (Taiwan)" | "Republika Chińska (Tajwan)" | "Republika Kina (Tajvan)" | "Republika Kina" | "Republiken Kina" | "República da China" | "República de China en Taiwán" | "République de Chine (Taïwan)" | "Taiwan" | "Taiwani" | "Taiwán" | "Tajvan" | "Tajwan" | "Tayvan" | "Taïwan" | "Tchaj-wan" | "Táiwān" | "Zhōnghuá Mínguó" | "çin Cumhuriyeti (Tayvan)" | "Čínska republika" | "Čínská republika" | "Китайская Республика" | "Тайвань" | "تائیوان" | "تايوان" | "تایوان" | "جمهورية الصين (تايوان)" | "جمهوری چین" | "جمہوریہ چین (تائیوان)" | "中華民国" | "中華民國" | "台湾" | "台灣" | "대만" | "중화민국" -> Some Taiwan
  | "Repubblica del Tajikistan" | "Republic of Tajikistan" | "Republik Tadjikistan" | "Republik Tadschikistan" | "Republika Tadżykistanu" | "Republika Tadžikistan" | "Republika Tádžikistán" | "Republiken Tadzjikistan" | "República de Tayikistán" | "República do Tajiquistão" | "République du Tadjikistan" | "Tacikistan Cumhuriyeti" | "Tacikistan" | "Tadjikistan" | "Tadschikistan" | "Tadzjikistan" | "Tadżykistan" | "Tadžikistan" | "Tadžikistani Vabariik" | "Tadžikistanin tasavalta" | "Tagikistan" | "Tajikistan" | "Tajiquistão" | "Tayikistán" | "Tađikistan" | "Taǆická republika" | "Taǆikistan" | "Toçikiston" | "Tádžikistán" | "Çumhuriyi Toçikiston" | "Республика Таджикистан" | "Таджикистан" | "Тоҷикистон" | "Ҷумҳурии Тоҷикистон" | "تاجکستان" | "تاجیکِستان" | "جمهورية طاجيكستان" | "جمهوری تاجیکستان" | "جمہوریہ تاجکستان" | "طاجيكستان" | "タジキスタン" | "タジキスタン共和国" | "塔吉克斯坦" | "塔吉克斯坦共和国" | "타지키스탄 공화국" | "타지키스탄" -> Some Tajikistan
  | "Förenade republiken Tanzania" | "Jamhuri ya Muungano wa Tanzania" | "Repubblica Unita di Tanzania" | "Republik Unanet Tanzania" | "República Unida da Tanzânia" | "República Unida de Tanzania" | "République unie de Tanzanie" | "Sjednocená tanzanská republika" | "Tansaania Ühendvabariik" | "Tansaania" | "Tansania" | "Tansanian yhdistynyt tasavalta" | "Tanzania" | "Tanzania, United Republic of" | "Tanzanie" | "Tanzanija" | "Tanzanya Birleşik Cumhuriyeti" | "Tanzanya" | "Tanzánia" | "Tanzánijská zjednotená republika" | "Tanzânia" | "Ujedinjena Republika Tanzanija" | "United Republic of Tanzania" | "Vereinigte Republik Tansania" | "Verenigde Republiek Tanzania" | "Zjednoczona Republika Tanzanii" | "Объединенная Республика Танзания" | "Танзания" | "تانزانیا" | "تنزانيا" | "تنزانیہ" | "جمهورية تنزانيا الاتحادية" | "جمهوری متحد تانزانیا" | "متحدہ جمہوریہ تنزانیہ" | "タンザニア" | "タンザニア連合共和国" | "坦桑尼亚" | "坦桑尼亚联合共和国" | "탄자니아 연합 공화국" | "탄자니아" -> Some Tanzania
  | "Kingdom of Thailand" | "Koninkrijk Thailand" | "Konungariket Thailand" | "Kraljevina Tajland" | "Królestwo Tajlandii" | "Königreich Thailand" | "Prathet" | "Ratcha Anachak Thai" | "Regno di Thailandia" | "Reino da Tailândia" | "Reino de Tailandia" | "Rouantelezh Thailand" | "Royaume de Thaïlande" | "Tai Kuningriik" | "Tai" | "Tailandia" | "Tailândia" | "Tajland" | "Tajlandia" | "Tayland Krallığı" | "Tayland" | "Thai" | "Thaiföld" | "Thaiföldi Királyság" | "Thailand" | "Thaimaa" | "Thaimaan kuningaskunta" | "Thajsko" | "Thajské království" | "Thajské kráľovstvo" | "Thaïlande" | "Королевство Таиланд" | "Таиланд" | "تايلند" | "تایلند" | "تھائی لینڈ" | "مملكة تايلند" | "مملکتِ تھائی لینڈ" | "پادشاهی تایلند" | "ประเทศไทย" | "ราชอาณาจักรไทย" | "タイ" | "タイ王国" | "泰国" | "泰王国" | "타이 왕국" | "태국" -> Some Thailand
  | "Democratic Republic of Timor-Leste" | "Democratische Republiek Oost-Timor" | "Demokratická republika Východní Timor" | "Demokratische Republik Timor-Leste" | "Demokratiska republiken Östtimor" | "Demokratska Republika Istočni Timor" | "Demokratska Republika Timor-Leste" | "Demokratyczna Republika Timoru Wschodniego" | "Doğu Timor Demokratik Cumhuriyeti" | "Doğu Timor" | "East Timor" | "Ida-Timor" | "Istočni Timor" | "Itä-Timor" | "Itä-Timorin demokraattinen tasavalta" | "Kelet-Timor" | "Kelet-timori Demokratikus Köztársaság" | "Oost-Timor" | "Osttimor" | "Repubblica Democratica di Timor Est" | "Republik demakratel Timor ar Reter" | "República Democrática de Timor-Leste" | "Repúblika Demokrátika Timór-Leste" | "République démocratique du Timor oriental" | "Timor Est" | "Timor Lorosae" | "Timor Oriental" | "Timor Wschodni" | "Timor ar Reter" | "Timor oriental" | "Timor" | "Timor-Leste Demokraatlik Vabariik" | "Timor-Leste" | "Timór Lorosa'e" | "Timór-Leste" | "Východní Timor" | "Východný Timor" | "Východotimorská demokratická republika" | "Östtimor" | "Восточный Тимор" | "Демократическая Республика Тимор -Лешти" | "تيمور الشرقية" | "تیمور شرقی" | "جمهورية تيمور الشرقية الديمقراطية" | "جمهوری دموکراتیک تیمور شرقی" | "جمہوری جمہوریہ مشرقی تیمور" | "مشرقی تیمور" | "东帝汶" | "东帝汶民主共和国" | "東ティモール" | "東ティモール民主共和国" | "동티모르 민주 공화국" | "동티모르" -> Some Timor_Leste
  | "Repubblica del Togo" | "Republiek Togo" | "Republik Togo" | "Republik Togoat" | "Republika Togijska" | "Republika Togo" | "Republiken Togo" | "República de Togo" | "República do Togo" | "République Togolaise" | "République togolaise" | "Togo Cumhuriyeti" | "Togo Vabariik" | "Togo" | "Togolese Republic" | "Togolese Republika" | "Togolese" | "Togon tasavalta" | "Togská republika" | "Togói Köztársaság" | "Того Республика" | "Того" | "توغو" | "توگو" | "جمهورية توغو" | "جمهوری توگو" | "جمہوریہ ٹوگو" | "ٹوگو" | "トーゴ" | "トーゴ共和国" | "多哥" | "多哥共和国" | "토고 공화국" | "토고" -> Some Togo
  | "Islas Tokelau" | "Isole Tokelau" | "Tokelau" | "Tokelau-szigetek" | "Tokelauské ostrovy" | "Tokelauöarna" | "Îles Tokelau" | "Токелау" | "توكيلاو" | "توکلائو" | "ٹوکیلاؤ" | "トケラウ" | "トケラウ諸島" | "托克劳" | "토켈라우" -> Some Tokelau
  | "Kingdom of Tonga" | "Koninkrijk Tonga" | "Konungariket Tonga" | "Kraljevina Tonga" | "Království Tonga" | "Królestwo Tonga" | "Königreich Tonga" | "Regno di Tonga" | "Reino de Tonga" | "Rouantelezh Tonga" | "Royaume des Tonga" | "Tonga Krallığı" | "Tonga Kuningriik" | "Tonga" | "Tongai Királyság" | "Tongan kuningaskunta" | "Tongské kráľovstvo" | "Королевство Тонга" | "Тонга" | "تونغا" | "تونگا" | "مملكة تونغا" | "مملکتِ ٹونگا" | "ٹونگا" | "پادشاهی تونگا" | "トンガ" | "トンガ王国" | "汤加" | "汤加王国" | "통가 왕국" | "통가" -> Some Tonga
  | "Repubblica di Trinidad e Tobago" | "Republic of Trinidad and Tobago" | "Republiek Trinidad en Tobago" | "Republik Trinidad ha Tobago" | "Republik Trinidad und Tobago" | "Republika Trinidad a Tobaga" | "Republika Trinidad a Tobago" | "Republika Trinidad i Tobago" | "Republiken Trinidad och Tobago" | "República de Trinidad e Tobago" | "República de Trinidad y Tobago" | "République de Trinité-et-Tobago" | "Trinidad a Tobago" | "Trinidad and Tobago" | "Trinidad e Tobago" | "Trinidad en Tobago" | "Trinidad ha Tobago" | "Trinidad i Tobago" | "Trinidad ja Tobago" | "Trinidad och Tobago" | "Trinidad und Tobago" | "Trinidad ve Tobago Cumhuriyeti" | "Trinidad ve Tobago" | "Trinidad y Tobago" | "Trinidad és Tobago Köztársaság" | "Trinidad és Tobago" | "Trinidade e Tobago" | "Trinidadi ja Tobago Vabariik" | "Trinidadin ja Tobagon tasavalta" | "Trinité-et-Tobago" | "Trynidad i Tobago" | "Республика Тринидад и Тобаго" | "Тринидад и Тобаго" | "ترينيداد وتوباغو" | "ترینیداد و توباگو" | "جمهورية ترينيداد وتوباغو" | "جمهوری ترینیداد و توباگو" | "جمہوریہ ٹرینیڈاڈ و ٹوباگو" | "ٹرینیڈاڈ و ٹوباگو" | "トリニダード・トバゴ" | "トリニダード・トバゴ共和国" | "特立尼达和多巴哥" | "特立尼达和多巴哥共和国" | "트리니다드 토바고 공화국" | "트리니다드 토바고" -> Some Trinidad_And_Tobago
  | "Repubblica tunisina" | "Republic of Tunisia" | "Republiek Tunesië" | "Republik Tunizian" | "Republika Tunezyjska" | "Republika Tunis" | "Republiken Tunisien" | "República da Tunísia" | "República de Túnez" | "République tunisienne" | "Tuneesia Vabariik" | "Tuneesia" | "Tunesien" | "Tunesische Republik" | "Tunesië" | "Tunezja" | "Tunis" | "Tunisia" | "Tunisian tasavalta" | "Tunisie" | "Tunisien" | "Tuniski Republika" | "Tunisko" | "Tuniská republika" | "Tunizia" | "Tunus Cumhuriyeti" | "Tunus" | "Tunézia" | "Tunéziai Köztársaság" | "Tunísia" | "Túnez" | "al-Jumhūriyyah at-Tūnisiyyah" | "Тунис" | "Тунисской Республики" | "الجمهورية التونسية" | "تونس" | "جمهوری تونس" | "جمہوریہ تونس" | "チュニジア" | "チュニジア共和国" | "突尼斯" | "突尼斯共和国" | "튀니지 공화국" | "튀니지" -> Some Tunisia
  | "Repubblica di Turchia" | "Republic of Turkey" | "Republiek Turkije" | "Republik Turkia" | "Republik Türkei" | "Republika Turcji" | "Republika Turska" | "Republiken Turkiet" | "República da Turquia" | "República de Turquía" | "République de Turquie" | "Turchia" | "Turcja" | "Turecko" | "Turecká republika" | "Turkia" | "Turkiet" | "Turkije" | "Turkin tasavalta" | "Turkiye" | "Turkki" | "Turquia" | "Turquie" | "Turquía" | "Turska" | "Török Köztársaság" | "Törökország" | "Türgi Vabariik" | "Türgi" | "Türkei" | "Türkiye Cumhuriyeti" | "Türkiye" | "Республика Турции" | "Турция" | "الجمهورية التركية" | "تركيا" | "ترکی" | "ترکیه" | "جمهوری ترکیه" | "جمہوریہ ترکی" | "トルコ" | "トルコ共和国" | "土耳其" | "土耳其共和国" | "터키 공화국" | "터키" -> Some Turkiye
  | "Republik Turkmenistan" | "Republika Turkmenistanu" | "Turcomenistão" | "Turkmenistan" | "Turkmenistán" | "Turkménistan" | "Turkménsko" | "Turquemenistão" | "Türkmenistan" | "Türkmenisztán" | "Türkmén Köztársaság" | "Туркменистан" | "Туркмения" | "تركمانستان" | "ترکمانستان" | "ترکمنستان" | "جمهوری خلق ترکمنستان" | "トルクメニスタン" | "土库曼斯坦" | "투르크메니스탄" -> Some Turkmenistan
  | "Ilhas Turks e Caicos" | "Inizi Turks ha Caicos" | "Islas Turcas y Caicos" | "Islas Turks y Caicos" | "Isole Turks e Caicos" | "Ostrovy Turks a Caicos" | "Ostrva Terks i Kejkos" | "Otoci Turks i Caicos" | "Turks a Caicos" | "Turks and Caicos Islands" | "Turks e Caicos" | "Turks i Caicos" | "Turks ja Caicos" | "Turks und Caicos Inseln" | "Turks ve Caicos Adaları" | "Turks- och Caicosöarna" | "Turks- és Caicos-szigetek" | "Turks-en Caicoseilanden" | "Turks-ja Caicossaaret" | "Turks-und Caicosinseln" | "Turksi ja Caicose saared" | "Îles Turques et Caïques" | "Îles Turques-et-Caïques" | "Теркс и Кайкос острова" | "Теркс и Кайкос" | "جزائر کیکس و ترکیہ" | "جزایر تورکس و کایکوس" | "جزر توركس وكايكوس" | "タークス・カイコス諸島" | "特克斯和凯科斯群岛" | "터크스 케이커스 제도" -> Some Turks_And_Caicos_Islands
  | "Tuvalu" | "Тувалу" | "توفالو" | "تووالو" | "ツバル" | "图瓦卢" | "투발루" -> Some Tuvalu
  | "Jamhuri ya Uganda" | "Oeganda" | "Ouganda" | "Repubblica di Uganda" | "Republic of Uganda" | "Republiek Uganda" | "Republik Ouganda" | "Republik Uganda" | "Republika Uganda" | "Republika Ugandy" | "Republiken Uganda" | "República de Uganda" | "República do Uganda" | "République de l'Ouganda" | "Uganda Cumhuriyeti" | "Uganda Vabariik" | "Uganda" | "Ugandai Köztársaság" | "Ugandan tasavalta" | "Ugandská republika" | "Республика Уганда" | "Уганда" | "أوغندا" | "اوگاندا" | "جمهورية أوغندا" | "جمهوری اوگاندا" | "جمہوریہ یوگنڈا" | "یوگنڈا" | "ウガンダ" | "ウガンダ共和国" | "乌干达" | "乌干达共和国" | "우간다 공화국" | "우간다" -> Some Uganda
  | "Oekraïne" | "Ucraina" | "Ucrania" | "Ucrânia" | "Ukraina" | "Ukraine" | "Ukrajina" | "Ukrajna" | "Ukrayina" | "Ukrayna" | "Украина" | "Україна" | "أوكرانيا" | "اوکراین" | "یوکرین" | "ウクライナ" | "乌克兰" | "우크라이나" -> Some Ukraine
  | "Araabia Ühendemiraadid" | "Arabiemiraatit" | "Birleşik Arap Emirlikleri" | "Egyesült Arab Emírségek" | "Emirados Árabes Unidos" | "Emirates" | "Emirati Arabi Uniti" | "Emiratos Árabes Unidos" | "Emirelezhioù Arab Unanet" | "Förenade Arabemiraten" | "Spojené arabské emiráty" | "UAE" | "Ujedinjeni Arapski Emirati" | "United Arab Emirates" | "Vereinigte Arabische Emirate" | "Verenigde Arabische Emiraten" | "Yhdistyneet arabiemiirikunnat" | "Zjednoczone Emiraty Arabskie" | "Émirats arabes unis" | "Объединенные Арабские Эмираты" | "Объединённые Арабские Эмираты" | "الإمارات العربية المتحدة" | "الإمارات" | "امارات متحده عربی" | "امارات" | "متحدہ عرب امارات" | "アラブ首長国連邦" | "阿拉伯联合酋长国" | "아랍 토후국 연방" | "아랍에미리트" -> Some United_Arab_Emirates
  | "Birleşik Krallık" | "Büyük Britanya ve Kuzey İrlanda Birleşik Krallığı" | "Egyesült Királyság" | "Förenade konungariket Storbritannien och Nordirland" | "Great Britain" | "Ison-Britannian ja Pohjois-Irlannin yhdistynyt kuningaskunta" | "Nagy-Britannia és Észak-Írország Egyesült Királysága" | "Regno Unito di Gran Bretagna e Irlanda del Nord" | "Regno Unito" | "Reino Unido da Grã-Bretanha e Irlanda do Norte" | "Reino Unido de Gran Bretaña e Irlanda del Norte" | "Reino Unido" | "Rouantelezh-Unanet Breizh-Veur ha Norzhiwerzhon" | "Rouantelezh-Unanet" | "Royaume-Uni de Grande-Bretagne et d'Irlande du Nord" | "Royaume-Uni" | "Spojené království Velké Británie a Severního Irska" | "Spojené království" | "Spojené kráľovstvo Veľkej Británie a SevernéhoÌrska" | "Storbritannien" | "Suurbritannia ja Põhja-Iiri Ühendkuningriik" | "Suurbritannia" | "UK" | "Ujedinjeno Kraljevstvo Velike Britanije i Severne Irske" | "Ujedinjeno Kraljevstvo Velike Britanije i Sjeverne Irske" | "Ujedinjeno Kraljevstvo" | "United Kingdom of Great Britain and Northern Ireland" | "United Kingdom" | "Vereinigtes Königreich Großbritannien und Nordirland" | "Vereinigtes Königreich" | "Verenigd Koninkrijk van Groot-Brittannië en Noord-Ierland" | "Verenigd Koninkrijk" | "Veľká Británia (Spojené kráľovstvo)" | "Yhdistynyt kuningaskunta" | "Zjednoczone Królestwo Wielkiej Brytanii i Irlandii Północnej" | "Zjednoczone Królestwo" | "Великобритания" | "Соединенное Королевство Великобритании и Северной Ирландии" | "المملكة المتحدة لبريطانيا العظمى وايرلندا الشمالية" | "المملكة المتحدة" | "انگلیس" | "مملکتِ متحدہ برطانیہ عظمی و شمالی آئرلینڈ" | "مملکتِ متحدہ" | "پادشاهی متحد بریتانیای کبیر و ایرلند شمالی" | "イギリス" | "グレートブリテン及び北アイルランド連合王国" | "大不列颠及北爱尔兰联合王国" | "英国" | "그레이트브리튼 북아일랜드 연합 왕국" | "영국" -> Some United_Kingdom
  | "Ameerika Ühendriigid" | "Amerika Birleşik Devletleri" | "Amerikai Egyesült Államok" | "Amerikan yhdysvallat" | "Amerikas förenta stater" | "Estados Unidos da América" | "Estados Unidos de América" | "Estados Unidos" | "Les états-unis d'Amérique" | "SAD" | "Sjedinjene Američke Države" | "Sjedinjene Države Amerike" | "Spojené státy americké" | "Spojené státy" | "Spojené štáty Americké" | "Spojené štáty americké" | "Stadoù-Unanet Amerika" | "Stadoù-Unanet" | "Stany Zjednoczone Ameryki" | "Stany Zjednoczone" | "Stati Uniti d'America" | "USA" | "United States of America" | "United States" | "Vereinigte Staaten von Amerika" | "Vereinigte Staaten" | "Verenigde Staten van Amerika" | "Verenigde Staten" | "Yhdysvallat" | "États-Unis" | "Соединенные Штаты Америки" | "Соединённые Штаты Америки" | "الولايات المتحدة الامريكية" | "الولايات المتحدة" | "ایالات متحده آمریکا" | "ریاستہائے متحدہ امریکا" | "ریاستہائے متحدہ" | "アメリカ" | "アメリカ合衆国" | "美利坚合众国" | "美国" | "미국" | "아메리카 합중국" -> Some United_States
  | "Amerika Birleşik Devletleri Küçük Dış Adaları" | "Az Amerikai Egyesült Államok lakatlan külbirtokai" | "Dalekie Wyspy Mniejsze Stanów Zjednoczonych" | "Estados Unidos Ilhas Menores Distantes" | "Estados Unidos Islas menores alejadas de" | "Förenta staternas mindre öar i Oceanien och Västindien" | "Ilhas Menores Distantes dos Estados Unidos" | "Inizi Minor A-bell Stadoù-Unanet" | "Islas Ultramarinas Menores de Estados Unidos" | "Isole minori esterne degli Stati Uniti d'America" | "Kleine afgelegen eilanden van de Verenigde Staten" | "Kleinere Inselbesitzungen der Vereinigten Staaten" | "Mala udaljena ostrva SAD-a" | "Mala udaljena ostrva Sjedinjenih Američkih Država" | "Mali udaljeni otoci SAD-a" | "Menšie odľahlé ostrovy Spjoených štátov" | "Menšie odľahlé ostrovy USA" | "Menší odlehlé ostrovy Spojených států amerických" | "Menší odlehlé ostrovy USA" | "Stati Uniti Isole Minori" | "USA, kleinere ausgelagerte Inseln" | "United States Minor Outlying Islands" | "Yhdysvaltain asumattomat saaret" | "Îles mineures éloignées des États-Unis" | "Ühendriikide hajasaared" | "Ühendriikide väikesed hajasaared" | "Внешние малые острова США" | "امریکی چھوٹے بیرونی جزائر" | "جزایر کوچک حاشیه‌ای ایالات متحده آمریکا" | "جزر الولايات المتحدة الصغيرة النائية" | "合衆国領有小離島" | "米領小離島" | "美国本土外小岛屿" | "미국령 군소 제도" -> Some United_States_Minor_Outlying_Islands
  | "ABD Virjin Adaları" | "Americké Panenské ostrovy" | "Amerika Birleşik Devletleri Virjin Adaları" | "Amerikaanse Maagdeneilanden" | "Amerikai Virgin-szigetek" | "Amerikanische Jungferninseln" | "Amerikanska Jungfruöarna" | "Američka Devičanska Ostrva" | "Američki Djevičanski Otoci" | "Devičanska Ostrva Amerike" | "Djevičanski Otoci SAD" | "Ilhas Virgens dos Estados Unidos" | "Inizi Gwerc'h ar Stadoù-Unanet" | "Islas Vírgenes de los Estados Unidos" | "Isole Vergini americane" | "Isole Vergini degli Stati Uniti" | "Maagdeneilanden van de Verenigde Staten" | "Neitsisaared, USA" | "United States Virgin Islands" | "Virgin Islands of the United States" | "Virgin Islands, U.S." | "Wyspy Dziewicze Stanów Zjednoczonych" | "Yhdysvaltain Neitsytsaaret" | "Îles Vierges des États-Unis" | "Ühendriikide Neitsisaared" | "Виргинские Острова" | "Виргинские острова Соединенных Штатов" | "امریکی جزائر ورجن" | "جزایر ویرجین ایالات متحده آمریکا" | "جزر العذراء الامريكية" | "アメリカ領ヴァージン諸島" | "米領ヴァージン諸島" | "美属维尔京群岛" | "미국령 버진아일랜드" -> Some United_States_Virgin_Islands
  | "Istočna Republika Urugvaj" | "Oosterse Republiek Uruguay" | "Oriental Republic of Uruguay" | "Orijentalna Republika Urugvaj" | "Repubblica Orientale dell'Uruguay" | "Republik Reter Uruguay" | "Republik Östlich des Uruguay" | "Republiken Uruguay" | "República Oriental del Uruguay" | "República Oriental do Uruguai" | "République orientale de l'Uruguay" | "Uruguai" | "Uruguaj" | "Uruguajská východná republika" | "Uruguay Doğu Cumhuriyeti" | "Uruguay Idavabariik" | "Uruguay" | "Uruguayi Keleti Köztársaság" | "Uruguayn itäinen tasavalta" | "Uruguayská východní republika" | "Urugvaj" | "Urugwaj" | "Wschodnia Republika Urugwaju" | "Восточной Республики Уругвай" | "Уругвай" | "اروگوئه" | "الأوروغواي" | "جمهورية الأوروغواي الشرقية" | "جمهوری اروگوئه" | "جمہوریہ شرقیہ یوراگوئے" | "یوراگوئے" | "ウルグアイ" | "ウルグアイ東方共和国" | "乌拉圭" | "乌拉圭东岸共和国" | "우루과이 동방 공화국" | "우루과이" -> Some Uruguay
  | "O'zbekiston Respublikasi" | "Oezbekistan" | "Ouzbekistan" | "Ouzbékistan" | "O‘zbekiston Respublikasi" | "O‘zbekiston" | "Repubblica di Uzbekistan" | "Republic of Uzbekistan" | "Republiek Oezbekistan" | "Republik Ouzbekistan" | "Republik Usbekistan" | "Republika Uzbekistan" | "Republika Uzbekistanu" | "Republika Uzbekistán" | "Republiken Uzbekistan" | "República de Uzbekistán" | "República do Usbequistão" | "République d'Ouzbékistan" | "Usbekistan" | "Usbekistani Vabariik" | "Uzbecká republika" | "Uzbekistan" | "Uzbekistanin tasavalta" | "Uzbekistán" | "Uzbequistão" | "Üzbegisztán" | "Üzbég Köztársaság" | "özbekistan Cumhuriyeti" | "özbekistan" | "Ўзбекистон Республикаси" | "Республика Узбекистан" | "Узбекистан" | "أوزباكستان" | "ازبکستان" | "جمهورية أوزباكستان" | "جمهوری ازبکستان" | "جمہوریہ ازبکستان" | "ウズベキスタン" | "ウズベキスタン共和国" | "乌兹别克斯坦" | "乌兹别克斯坦共和国" | "우즈베키스탄 공화국" | "우즈베키스탄" -> Some Uzbekistan
  | "Repubblica di Vanuatu" | "Republic of Vanuatu" | "Republiek Vanuatu" | "Republik Vanuatu" | "Republika Vanuatu" | "Republiken Vanuatu" | "República de Vanuatu" | "Ripablik blong Vanuatu" | "République de Vanuatu" | "Vanuatská republika" | "Vanuatu Cumhuriyeti" | "Vanuatu Vabariik" | "Vanuatu" | "Vanuatui Köztársaság" | "Vanuatun tasavalta" | "Вануату" | "Республика Вануату" | "جمهورية فانواتو" | "جمهوری وانواتو" | "جمہوریہ وانواتو" | "فانواتو" | "وانواتو" | "バヌアツ" | "バヌアツ共和国" | "瓦努阿图" | "瓦努阿图共和国" | "바누아투 공화국" | "바누아투" -> Some Vanuatu
  | "Cidade do Vaticano" | "Città del Vaticano" | "Cité du Vatican" | "Ciudad del Vaticano" | "Holy See (Vatican City State)" | "Městský stát Vatikán" | "Państwo Watykańskie" | "Riez Keoded ar Vatikan" | "Staat Vatikanstadt" | "Stato della Città del Vaticano" | "Status Civitatis Vaticanæ" | "Sveta Stolica" | "Svätá stolica (Vatikánsky mestský štát" | "Vaticaanstad" | "Vatican City State" | "Vatican City" | "Vatican" | "Vaticano" | "Vaticanæ" | "Vatikaani" | "Vatikaanin kaupunkivaltio" | "Vatikan şehir Devleti" | "Vatikan" | "Vatikani Linnriik" | "Vatikanstadt" | "Vatikanstaten" | "Vatikán Állam" | "Vatikán" | "Watykan" | "Ватикан" | "Город-государство Ватикан" | "دولة مدينة الفاتيكان" | "دولت‌شهر واتیکان" | "مدينة الفاتيكان" | "واتیکان" | "ویٹیکن سٹی" | "バチカン" | "バチカン市国" | "梵蒂冈" | "梵蒂冈城国" | "바티칸 시국" | "바티칸" -> Some Vatican_City
  | "BOLIVARIJANSKA Republika Venezuela" | "Bolivarcı Venezuela Cumhuriyeti" | "Bolivariaanse Republiek Venezuela" | "Bolivarian Republic of Venezuela" | "Bolivarianska republiken Venezuela" | "Bolivarische Republik Venezuela" | "Bolivarska Republika Venecuela" | "Boliwariańska Republika Wenezueli" | "Bolívarská republika Venezuela" | "Repubblica Bolivariana del Venezuela" | "Republik Volivarian Venezuela" | "República Bolivariana da Venezuela" | "República Bolivariana de Venezuela" | "République bolivarienne du Venezuela" | "Venecuela" | "Venezuela Bolívari Vabariik" | "Venezuela" | "Venezuela, Bolivarian Republic of" | "Venezuelai Bolivári Köztársaság" | "Venezuelan bolivariaainen tasavalta" | "Venezuelská bolívarovská republika" | "Wenezuela" | "Боливарианская Республика Венесуэла" | "Венесуэла" | "جمهورية فنزويلا البوليفارية" | "جمهوری بولیواری ونزوئلا" | "جمہوریہ وینیزویلا" | "فنزويلا" | "ونزوئلا" | "وینیزویلا" | "ベネズエラ" | "ベネズエラ・ボリバル共和国" | "委内瑞拉" | "委内瑞拉玻利瓦尔共和国" | "베네수엘라 볼리바르 공화국" | "베네수엘라" -> Some Venezuela
  | "Cộng hòa Xã hội chủ nghĩa Việt Nam" | "Cộng hòa xã hội chủ nghĩa Việt Nam" | "Repubblica socialista del Vietnam" | "Republik Sokialour Viêt Nam" | "República Socialista de Vietnam" | "República Socialista do Vietname" | "République socialiste du Viêt Nam" | "Socialist Republic of Vietnam" | "Socialistische Republiek Vietnam" | "Socialistiska republiken Vietnam" | "Socijalistička Republika Vijetnam" | "Socjalistyczna Republika Wietnamu" | "Sozialistische Republik Vietnam" | "Viet Nam" | "Vietnam Sosyalist Cumhuriyeti" | "Vietnam" | "Vietname" | "Vietnami Sotsialistlik Vabariik" | "Vietnamin sosialistinen tasavalta" | "Vietnamská socialistická republika" | "Vietnám" | "Vietnámi Szocialista Köztársaság" | "Vijetnam" | "Viêt Nam" | "Việt Nam" | "Wietnam" | "Вьетнам" | "Социалистическая Республика Вьетнам" | "اشتراکی جمہوریہ ویتنام" | "جمهورية فيتنام الاشتراكية" | "جمهوری سوسیالیستی ویتنام" | "فيتنام" | "ویتنام" | "ベトナム" | "ベトナム社会主義共和国" | "越南" | "越南社会主义共和国" | "베트남 사회주의 공화국" | "베트남" -> Some Vietnam
  | "Gebiet der Wallis und Futuna" | "Grondgebied van de Wallis en Futuna" | "Teritorija ostrva Valis i Futuna" | "Teritoriju Wallis i Futuna" | "Teritorium ostrovů Wallis a Futuna" | "Teritórium ostrovov Wallis a Futuna" | "Territoire des îles Wallis et Futuna" | "Territoriet Wallis- och Futunaöarna" | "Territorio de las Islas Wallis y Futuna" | "Territorio delle Isole Wallis e Futuna" | "Territory of the Wallis and Futuna Islands" | "Território das Ilhas Wallis e Futuna" | "Terytorium Wysp Wallis i Futuna" | "Tiriad Inizi Wallis ha Futuna" | "Valis i Futuna ostrva" | "Wallis a Futuna" | "Wallis and Futuna" | "Wallis e Futuna" | "Wallis en Futuna" | "Wallis et Futuna" | "Wallis ha Futuna" | "Wallis i Fortuna" | "Wallis i Futuna" | "Wallis ja Futuna" | "Wallis und Futuna" | "Wallis ve Futuna Adaları Bölgesi" | "Wallis y Futuna" | "Wallis és Futuna" | "Wallis- och Futunaöarna" | "Wallis-et-Futuna" | "Wallise ja Futuna ala" | "Wallisin ja Futunan yhteisö" | "Территория Уоллис и Футуна острова" | "Уоллис и Футуна" | "إقليم جزر واليس وفوتونا" | "جزایر والیس و فوتونا" | "سر زمینِ والس و فتونہ جزائر" | "والس و فتونہ" | "واليس وفوتونا" | "والیس و فوتونا" | "ウォリス・フツナ" | "ワリス・フテュナ諸島" | "瓦利斯和富图纳群岛" | "왈리스 퓌튀나" -> Some Wallis_And_Futuna
  | "Demokratische Arabische Republik Sahara" | "Länsi-Sahara" | "Lääne-Sahara" | "Nyugat-Szahara" | "Repubblica Araba Saharawi Democratica" | "Republik Arab Saharaoui Demokratel" | "República Árabe Saharaui Democrática" | "République arabe sahraouie démocratique" | "Saara Ocidental" | "Sahara Occidental" | "Sahara Occidentale" | "Sahara Zachodnia" | "Sahara ar C'hornôg" | "Saharska Arapska Demokratska Republika" | "Saharyjska Arabska Republika Demokratyczna" | "Sahra Demokratik Arap Cumhuriyeti" | "Sahrawi Arab Democratic Republic" | "Sahrawi Arab Demokratska Republika" | "Sahrawi Arabische Democratische Republiek" | "Sahrawi Арабская Демократическая Республика" | "Taneẓroft Tutrimt" | "Västsahara" | "Westelijke Sahara" | "Western Sahara" | "Westsahara" | "Zapadna Sahara" | "Západná Sahara" | "Západní Sahara" | "Западная Сахара" | "الجمهورية العربية الصحراوية الديمقراطية" | "الصحراء الغربية" | "صحراوی عرب عوامی جمہوریہ" | "صحرای غربی" | "مغربی صحارا" | "西サハラ" | "西撒哈拉" | "阿拉伯撒哈拉民主共和国" | "사하라 아랍 민주 공화국" | "서사하라" -> Some Western_Sahara
  | "Iémen" | "Jeemen" | "Jeemeni Vabariik" | "Jemen" | "Jemeni Köztársaság" | "Jemenin tasavalta" | "Jemenská republika" | "Repubblica dello Yemen" | "Republiek Jemen" | "Republik Jemen" | "Republik Yemen" | "Republika Jemen" | "Republika Jemeńska" | "Republiken Jemen" | "República de Yemen" | "República do Iêmen" | "République du Yémen" | "Yemen Cumhuriyeti" | "Yemen" | "Yemeni Republic" | "Yémen" | "al-Jumhūriyyah al-Yamaniyyah" | "Йемен" | "Йеменская Республика" | "الجمهورية اليمنية" | "اليمن" | "جمهوری یمن" | "جمہوریہ یمن" | "یمن" | "イエメン" | "イエメン共和国" | "也门" | "也门共和国" | "예멘 공화국" | "예멘" -> Some Yemen
  | "Repubblica di Zambia" | "Republic of Zambia" | "Republiek Zambia" | "Republik Sambia" | "Republik Zambia" | "Republika Zambii" | "Republika Zambija" | "Republiken Zambia" | "República da Zâmbia" | "República de Zambia" | "République de Zambie" | "Sambia Vabariik" | "Sambia" | "Sambian tasavalta" | "Zambia" | "Zambiai Köztársaság" | "Zambie" | "Zambija" | "Zambijská republika" | "Zambiya Cumhuriyeti" | "Zambiya" | "Zâmbia" | "Замбия" | "Республика Замбия" | "جمهورية زامبيا" | "جمهوری زامبیا" | "جمہوریہ زیمبیا" | "زامبيا" | "زامبیا" | "زیمبیا" | "ザンビア" | "ザンビア共和国" | "赞比亚" | "赞比亚共和国" | "잠비아 공화국" | "잠비아" -> Some Zambia
  | "Repubblica dello Zimbabwe" | "Republic of Zimbabwe" | "Republiek Zimbabwe" | "Republik Simbabwe" | "Republik Zimbabwe" | "Republika Zimbabve" | "Republika Zimbabwe" | "Republiken Zimbabwe" | "República de Zimbabue" | "República do Zimbabwe" | "République du Zimbabwe" | "Simbabwe" | "Zimbabue" | "Zimbabve Cumhuriyeti" | "Zimbabve" | "Zimbabwe Vabariik" | "Zimbabwe" | "Zimbabwei Köztársaság" | "Zimbabwen tasavalta" | "Zimbabwianska republika" | "Zimbabwská republika" | "Зимбабве" | "Республика Зимбабве" | "جمهورية زيمبابوي" | "جمهوری زیمبابوه" | "جمہوریہ زمبابوے" | "زمبابوے" | "زيمبابوي" | "زیمبابوه" | "ジンバブエ" | "ジンバブエ共和国" | "津巴布韦" | "津巴布韦共和国" | "짐바브웨 공화국" | "짐바브웨" -> Some Zimbabwe
  | _ -> None


let of_iso_string_base str =
  match String.uppercase_ascii str with
  | "ABW" -> Some Aruba
  | "AFG" -> Some Afghanistan
  | "AGO" -> Some Angola
  | "AIA" -> Some Anguilla
  | "ALA" -> Some Aland_Islands
  | "ALB" -> Some Albania
  | "AND" -> Some Andorra
  | "ARE" -> Some United_Arab_Emirates
  | "ARG" -> Some Argentina
  | "ARM" -> Some Armenia
  | "ASM" -> Some American_Samoa
  | "ATA" -> Some Antarctica
  | "ATF" -> Some French_Southern_And_Antarctic_Lands
  | "ATG" -> Some Antigua_And_Barbuda
  | "AUS" -> Some Australia
  | "AUT" -> Some Austria
  | "AZE" -> Some Azerbaijan
  | "BDI" -> Some Burundi
  | "BEL" -> Some Belgium
  | "BEN" -> Some Benin
  | "BES" -> Some Caribbean_Netherlands
  | "BFA" -> Some Burkina_Faso
  | "BGD" -> Some Bangladesh
  | "BGR" -> Some Bulgaria
  | "BHR" -> Some Bahrain
  | "BHS" -> Some Bahamas
  | "BIH" -> Some Bosnia_And_Herzegovina
  | "BLM" -> Some Saint_Barthelemy
  | "BLR" -> Some Belarus
  | "BLZ" -> Some Belize
  | "BMU" -> Some Bermuda
  | "BOL" -> Some Bolivia
  | "BRA" -> Some Brazil
  | "BRB" -> Some Barbados
  | "BRN" -> Some Brunei
  | "BTN" -> Some Bhutan
  | "BVT" -> Some Bouvet_Island
  | "BWA" -> Some Botswana
  | "CAF" -> Some Central_African_Republic
  | "CAN" -> Some Canada
  | "CCK" -> Some Cocos_Keeling_Islands
  | "CHE" -> Some Switzerland
  | "CHL" -> Some Chile
  | "CHN" -> Some China
  | "CIV" -> Some Ivory_Coast
  | "CMR" -> Some Cameroon
  | "COD" -> Some Democratic_Republic_Of_Congo
  | "COG" -> Some Congo
  | "COK" -> Some Cook_Islands
  | "COL" -> Some Colombia
  | "COM" -> Some Comoros
  | "CPV" -> Some Cape_Verde
  | "CRI" -> Some Costa_Rica
  | "CUB" -> Some Cuba
  | "CUW" -> Some Curacao
  | "CXR" -> Some Christmas_Island
  | "CYM" -> Some Cayman_Islands
  | "CYP" -> Some Cyprus
  | "CZE" -> Some Czechia
  | "DEU" -> Some Germany
  | "DJI" -> Some Djibouti
  | "DMA" -> Some Dominica
  | "DNK" -> Some Denmark
  | "DOM" -> Some Dominican_Republic
  | "DZA" -> Some Algeria
  | "ECU" -> Some Ecuador
  | "EGY" -> Some Egypt
  | "ERI" -> Some Eritrea
  | "ESH" -> Some Western_Sahara
  | "ESP" -> Some Spain
  | "EST" -> Some Estonia
  | "ETH" -> Some Ethiopia
  | "FIN" -> Some Finland
  | "FJI" -> Some Fiji
  | "FLK" -> Some Falkland_Islands
  | "FRA" -> Some France
  | "FRO" -> Some Faroe_Islands
  | "FSM" -> Some Micronesia
  | "GAB" -> Some Gabon
  | "GBR" -> Some United_Kingdom
  | "GEO" -> Some Georgia
  | "GGY" -> Some Guernsey
  | "GHA" -> Some Ghana
  | "GIB" -> Some Gibraltar
  | "GIN" -> Some Guinea
  | "GLP" -> Some Guadeloupe
  | "GMB" -> Some Gambia
  | "GNB" -> Some Guinea_Bissau
  | "GNQ" -> Some Equatorial_Guinea
  | "GRC" -> Some Greece
  | "GRD" -> Some Grenada
  | "GRL" -> Some Greenland
  | "GTM" -> Some Guatemala
  | "GUF" -> Some French_Guiana
  | "GUM" -> Some Guam
  | "GUY" -> Some Guyana
  | "HKG" -> Some Hong_Kong
  | "HMD" -> Some Heard_Island_And_Mcdonald_Islands
  | "HND" -> Some Honduras
  | "HRV" -> Some Croatia
  | "HTI" -> Some Haiti
  | "HUN" -> Some Hungary
  | "IDN" -> Some Indonesia
  | "IMN" -> Some Isle_Of_Man
  | "IND" -> Some India
  | "IOT" -> Some British_Indian_Ocean_Territory
  | "IRL" -> Some Ireland
  | "IRN" -> Some Iran
  | "IRQ" -> Some Iraq
  | "ISL" -> Some Iceland
  | "ISR" -> Some Israel
  | "ITA" -> Some Italy
  | "JAM" -> Some Jamaica
  | "JEY" -> Some Jersey
  | "JOR" -> Some Jordan
  | "JPN" -> Some Japan
  | "KAZ" -> Some Kazakhstan
  | "KEN" -> Some Kenya
  | "KGZ" -> Some Kyrgyzstan
  | "KHM" -> Some Cambodia
  | "KIR" -> Some Kiribati
  | "KNA" -> Some Saint_Kitts_And_Nevis
  | "KOR" -> Some South_Korea
  | "KWT" -> Some Kuwait
  | "LAO" -> Some Laos
  | "LBN" -> Some Lebanon
  | "LBR" -> Some Liberia
  | "LBY" -> Some Libya
  | "LCA" -> Some Saint_Lucia
  | "LIE" -> Some Liechtenstein
  | "LKA" -> Some Sri_Lanka
  | "LSO" -> Some Lesotho
  | "LTU" -> Some Lithuania
  | "LUX" -> Some Luxembourg
  | "LVA" -> Some Latvia
  | "MAC" -> Some Macau
  | "MAF" -> Some Saint_Martin
  | "MAR" -> Some Morocco
  | "MCO" -> Some Monaco
  | "MDA" -> Some Moldova
  | "MDG" -> Some Madagascar
  | "MDV" -> Some Maldives
  | "MEX" -> Some Mexico
  | "MHL" -> Some Marshall_Islands
  | "MKD" -> Some North_Macedonia
  | "MLI" -> Some Mali
  | "MLT" -> Some Malta
  | "MMR" -> Some Myanmar
  | "MNE" -> Some Montenegro
  | "MNG" -> Some Mongolia
  | "MNP" -> Some Northern_Mariana_Islands
  | "MOZ" -> Some Mozambique
  | "MRT" -> Some Mauritania
  | "MSR" -> Some Montserrat
  | "MTQ" -> Some Martinique
  | "MUS" -> Some Mauritius
  | "MWI" -> Some Malawi
  | "MYS" -> Some Malaysia
  | "MYT" -> Some Mayotte
  | "NAM" -> Some Namibia
  | "NCL" -> Some New_Caledonia
  | "NER" -> Some Niger
  | "NFK" -> Some Norfolk_Island
  | "NGA" -> Some Nigeria
  | "NIC" -> Some Nicaragua
  | "NIU" -> Some Niue
  | "NLD" -> Some Netherlands
  | "NOR" -> Some Norway
  | "NPL" -> Some Nepal
  | "NRU" -> Some Nauru
  | "NZL" -> Some New_Zealand
  | "OMN" -> Some Oman
  | "PAK" -> Some Pakistan
  | "PAN" -> Some Panama
  | "PCN" -> Some Pitcairn_Islands
  | "PER" -> Some Peru
  | "PHL" -> Some Philippines
  | "PLW" -> Some Palau
  | "PNG" -> Some Papua_New_Guinea
  | "POL" -> Some Poland
  | "PRI" -> Some Puerto_Rico
  | "PRK" -> Some North_Korea
  | "PRT" -> Some Portugal
  | "PRY" -> Some Paraguay
  | "PSE" -> Some Palestine
  | "PYF" -> Some French_Polynesia
  | "QAT" -> Some Qatar
  | "REU" -> Some Reunion
  | "ROU" -> Some Romania
  | "RUS" -> Some Russia
  | "RWA" -> Some Rwanda
  | "SAU" -> Some Saudi_Arabia
  | "SDN" -> Some Sudan
  | "SEN" -> Some Senegal
  | "SGP" -> Some Singapore
  | "SGS" -> Some South_Georgia
  | "SHN" -> Some Saint_Helena_Ascension_And_Tristan_Da_Cunha
  | "SJM" -> Some Svalbard_And_Jan_Mayen
  | "SLB" -> Some Solomon_Islands
  | "SLE" -> Some Sierra_Leone
  | "SLV" -> Some El_Salvador
  | "SMR" -> Some San_Marino
  | "SOM" -> Some Somalia
  | "SPM" -> Some Saint_Pierre_And_Miquelon
  | "SRB" -> Some Serbia
  | "SSD" -> Some South_Sudan
  | "STP" -> Some Sao_Tome_And_Principe
  | "SUR" -> Some Suriname
  | "SVK" -> Some Slovakia
  | "SVN" -> Some Slovenia
  | "SWE" -> Some Sweden
  | "SWZ" -> Some Eswatini
  | "SXM" -> Some Sint_Maarten
  | "SYC" -> Some Seychelles
  | "SYR" -> Some Syria
  | "TCA" -> Some Turks_And_Caicos_Islands
  | "TCD" -> Some Chad
  | "TGO" -> Some Togo
  | "THA" -> Some Thailand
  | "TJK" -> Some Tajikistan
  | "TKL" -> Some Tokelau
  | "TKM" -> Some Turkmenistan
  | "TLS" -> Some Timor_Leste
  | "TON" -> Some Tonga
  | "TTO" -> Some Trinidad_And_Tobago
  | "TUN" -> Some Tunisia
  | "TUR" -> Some Turkiye
  | "TUV" -> Some Tuvalu
  | "TWN" -> Some Taiwan
  | "TZA" -> Some Tanzania
  | "UGA" -> Some Uganda
  | "UKR" -> Some Ukraine
  | "UMI" -> Some United_States_Minor_Outlying_Islands
  | "UNK" -> Some Kosovo
  | "URY" -> Some Uruguay
  | "USA" -> Some United_States
  | "UZB" -> Some Uzbekistan
  | "VAT" -> Some Vatican_City
  | "VCT" -> Some Saint_Vincent_And_The_Grenadines
  | "VEN" -> Some Venezuela
  | "VGB" -> Some British_Virgin_Islands
  | "VIR" -> Some United_States_Virgin_Islands
  | "VNM" -> Some Vietnam
  | "VUT" -> Some Vanuatu
  | "WLF" -> Some Wallis_And_Futuna
  | "WSM" -> Some Samoa
  | "YEM" -> Some Yemen
  | "ZAF" -> Some South_Africa
  | "ZMB" -> Some Zambia
  | "ZWE" -> Some Zimbabwe
  | _ -> None


let of_string_exn s =
  match of_string_base s with
  | Some country -> country
  | None -> invalid_arg (Printf.sprintf "Country.of_string_exn: invalid string format '%s'" s)

let of_iso_string_exn s =
  match of_iso_string_base s with
  | Some country -> country
  | None -> invalid_arg (Printf.sprintf "Country.of_iso_string_exn: invalid ISO string format '%s'" s)

let of_string s =
  match of_string_base s with
  | Some country -> Ok country
  | None -> Error (Printf.sprintf "Invalid country string: '%s'" s)

let of_iso_string s =
  match of_iso_string_base s with
  | Some country -> Ok country
  | None -> Error (Printf.sprintf "Invalid ISO country string: '%s'" s)

