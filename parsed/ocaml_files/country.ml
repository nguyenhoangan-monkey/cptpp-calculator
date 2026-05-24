type t =
  | Afghanistan
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
  | Curaao
  | Cyprus
  | Czechia
  | Denmark
  | Djibouti
  | Dominica
  | Dominican_Republic
  | Dr_Congo
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
  | Guineabissau
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
  | Land_Islands
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
  | Romania
  | Runion
  | Russia
  | Rwanda
  | Saint_Barthlemy
  | Saint_Helena_Ascension_And_Tristan_Da_Cunha
  | Saint_Kitts_And_Nevis
  | Saint_Lucia
  | Saint_Martin
  | Saint_Pierre_And_Miquelon
  | Saint_Vincent_And_The_Grenadines
  | Samoa
  | San_Marino
  | Saudi_Arabia
  | Senegal
  | Serbia
  | Seychelles
  | Sierra_Leone
  | Singapore
  | Sint_Maarten
  | Slovakia
  | Slovenia
  | So_Tom_And_Prncipe
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
  | Timorleste
  | Togo
  | Tokelau
  | Tonga
  | Trinidad_And_Tobago
  | Trkiye
  | Tunisia
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


let of_string = function
  | "Aruba" | "Аруба" | "آروبا" | "أروبا" | "اروبا" | "アルバ" | "阿鲁巴" | "아루바" -> Some Aruba
  | "Afeganistão" | "Afganistan" | "Afganistán" | "Afganisztán" | "Afghanistan" | "Afghánistán" | "Afġānistān" | "Avganistan" | "Owganystan" | "Афганистан" | "أفغانستان" | "افغانستان" | "アフガニスタン" | "阿富汗" | "아프가니스탄" -> Some Afghanistan
  | "Angola" | "República de Angola" | "ʁɛpublika de an'ɡɔla" | "Ангола" | "آنگولا" | "انگولہ" | "جمهورية أنغولا" | "アンゴラ" | "安哥拉" | "앙골라" -> Some Angola
  | "Anguilla" | "Angvila" | "Ангилья" | "آنگویلا" | "أنغويلا" | "اینگویلا" | "アンギラ" | "安圭拉" | "앵귈라" -> Some Anguilla
  | "Aaland" | "Ahvenamaa" | "Ahvenanmaa" | "Aland" | "Alandia" | "Alandy" | "Alândia" | "Isole Aland" | "Olandska Ostrva" | "Wyspy Alandzkie" | "Åland Islands" | "Åland" | "Åland-szigetek" | "Ålandeilanden" | "Ålandski otoci" | "Ålandy" | "Аландские острова" | "جزائر اولند" | "جزایر الند" | "جزر أولاند" | "オーランド" | "奥兰群岛" | "올란드 제도" -> Some Land_Islands
  | "Albaania" | "Albania" | "Albanie" | "Albanien" | "Albanija" | "Albanië" | "Albánia" | "Albánie" | "Albánsko" | "Albânia" | "Arnavutluk" | "Shqipnia" | "Shqipëri" | "Shqipëria" | "Албания" | "آلبانی" | "ألبانيا" | "البانیا" | "アルバニア" | "阿尔巴尼亚" | "알바니아" -> Some Albania
  | "Andora" | "Andorra" | "Andorre" | "Principality of Andorra" | "Principat d'Andorra" | "Андорра" | "آندورا" | "أندورا" | "انڈورا" | "アンドラ" | "安道尔" | "안도라" -> Some Andorra
  | "Araabia Ühendemiraadid" | "Arabiemiraatit" | "Birleşik Arap Emirlikleri" | "Egyesült Arab Emírségek" | "Emirados Árabes Unidos" | "Emirates" | "Emirati Arabi Uniti" | "Emiratos Árabes Unidos" | "Emirelezhioù Arab Unanet" | "Förenade Arabemiraten" | "Spojené arabské emiráty" | "UAE" | "Ujedinjeni Arapski Emirati" | "United Arab Emirates" | "Vereinigte Arabische Emirate" | "Verenigde Arabische Emiraten" | "Zjednoczone Emiraty Arabskie" | "Émirats arabes unis" | "Объединённые Арабские Эмираты" | "الإمارات" | "امارات" | "متحدہ عرب امارات" | "阿拉伯联合酋长国" | "아랍에미리트" -> Some United_Arab_Emirates
  | "Arc'hantina" | "Argentiina" | "Argentina" | "Argentine Republic" | "Argentine" | "Argentinien" | "Argentinië" | "Argentyna" | "Argentína" | "Arjantin" | "República Argentina" | "Аргентина" | "آرژانتین" | "ارجنٹائن" | "الأرجنتين" | "アルゼンチン" | "阿根廷" | "아르헨티나" -> Some Argentina
  | "Armeenia" | "Armenia" | "Armenien" | "Armenija" | "Armenië" | "Arménia" | "Arménie" | "Arménsko" | "Ermenistan" | "Hayastan" | "Jermenija" | "Republic of Armenia" | "Örményország" | "Армения" | "Հայաստան" | "Հայաստանի Հանրապետություն" | "آرمینیا" | "أرمينيا" | "ارمنستان" | "アルメニア" | "亚美尼亚" | "아르메니아" -> Some Armenia
  | "Ameerika Samoa" | "Amelika Sāmoa" | "American Samoa" | "Americká Samoa" | "Amerika Sāmoa" | "Amerikaans Samoa" | "Amerikan Samoa" | "Amerikan Samoası" | "Amerikanisch-Samoa" | "Amerikanska Samoa" | "Američka Samoa" | "Samoa Americana" | "Samoa Americane" | "Samoa Amerikan" | "Samoa Amerykańskie" | "Samoa américaines" | "Szamoa" | "Sāmoa Amelika" | "Американское Самоа" | "امریکی سمووا" | "ساموآی آمریکا" | "ساموا الأمريكية" | "アメリカ領サモア" | "美属萨摩亚" | "아메리칸사모아" -> Some American_Samoa
  | "Antarctica" | "Antarctique" | "Antarktida" | "Antarktik" | "Antarktika" | "Antarktis" | "Antarktisz" | "Antarktyka" | "Antarktída" | "Antartide" | "Antártida" | "Etelämanner" | "Антарктида" | "أنتارتيكا" | "انٹارکٹکا" | "جنوبگان" | "南极洲" | "南極大陸" | "남극" -> Some Antarctica
  | "Douaroù Aostral hag Antarktikel Frañs" | "Francia déli és antarktiszi területek" | "Francouzská jižní a antarktická území" | "Francuske južne i antarktičke zemlje" | "Francuski južni i antarktički teritoriji" | "Francuskie Terytoria Południowe i Antarktyczne" | "Francúzske juŽné a antarktické územia" | "Franse Gebieden in de zuidelijke Indische Oceaan" | "Franska södra territorierna" | "Fransız Güney ve Antarktika Toprakları" | "Französische Süd- und Antarktisgebiete" | "French Southern Territories" | "French Southern and Antarctic Lands" | "Prantsuse Lõunaalad" | "Ranskan eteläiset ja antarktiset alueet" | "Terras Austrais e Antárticas Francesas" | "Terres australes et antarctiques françaises" | "Territori Francesi del Sud" | "Tierras Australes y Antárticas Francesas" | "Французские Южные и Антарктические территории" | "أراض فرنسية جنوبية وأنتارتيكية" | "سرزمین جنوبی فرانسیسیہ و انٹارکٹیکا" | "سرزمین‌های جنوبی و جنوبگانی فرانسه" | "フランス領南方・南極地域" | "法国南部和南极土地" | "프랑스령 남부와 남극 지역" -> Some French_Southern_And_Antarctic_Lands
  | "Antigua a Barbuda" | "Antigua and Barbuda" | "Antigua e Barbuda" | "Antigua en Barbuda" | "Antigua ha Barbuda" | "Antigua i Barbuda" | "Antigua ja Barbuda" | "Antigua och Barbuda" | "Antigua und Barbuda" | "Antigua ve Barbuda" | "Antigua y Barbuda" | "Antigua és Barbuda" | "Antigua-et-Barbuda" | "Antigva i Barbuda" | "Antígua e Barbuda" | "Антигуа и Барбуда" | "آنتیگوا و باربودا" | "أنتيغوا وباربودا" | "اینٹیگوا و باربوڈا" | "アンティグア・バーブーダ" | "安提瓜和巴布达" | "앤티가 바부다" -> Some Antigua_And_Barbuda
  | "Aostralia" | "Austraalia" | "Australia" | "Australie" | "Australien" | "Australija" | "Australië" | "Austrália" | "Austrálie" | "Ausztrália" | "Avustralya" | "Австралия" | "آسٹریلیا" | "أستراليا" | "استرالیا" | "オーストラリア" | "澳大利亚" | "호주" -> Some Australia
  | "Aostria" | "Austria" | "Austrija" | "Ausztria" | "Autriche" | "Avusturya" | "Itävalta" | "Oesterreich" | "Oostenrijk" | "Osterreich" | "Rakousko" | "Rakúsko" | "Áustria" | "Österreich" | "Österrike" | "Австрия" | "آسٹریا" | "اتریش" | "النمسا" | "オーストリア" | "奥地利" | "오스트리아" -> Some Austria
  | "Aserbaidschan" | "Aserbaidžaan" | "Azerbaidjan" | "Azerbaidzan" | "Azerbaijan" | "Azerbaiyán" | "Azerbajdzjan" | "Azerbajdzsán" | "Azerbajdžan" | "AzerbajǇan" | "Azerbaycan" | "Azerbaïdjan" | "Azerbeidzjan" | "Azerbeijão" | "Azerbejdżan" | "Azerbejdžan" | "Azərbaycan Respublikası" | "Azərbaycan" | "Republic of Azerbaijan" | "Ázerbájdžán" | "Азербайджан" | "آذربائیجان" | "أذربيجان" | "جمهوری آذربایجان" | "アゼルバイジャン" | "阿塞拜疆" | "아제르바이잔" -> Some Azerbaijan
  | "Burundi" | "Republic of Burundi" | "Republika y'Uburundi" | "République du Burundi" | "Uburundi" | "Бурунди" | "برونڈی" | "بوروندي" | "بوروندی" | "ブルンジ" | "布隆迪" | "부룬디" -> Some Burundi
  | "Belgia" | "Belgicko" | "Belgie" | "Belgien" | "Belgija" | "Belgio" | "Belgique" | "Belgium" | "België" | "Belçika" | "Bélgica" | "Kingdom of Belgium" | "Koninkrijk België" | "Königreich Belgien" | "Royaume de Belgique" | "Бельгия" | "بلجئیم" | "بلجيكا" | "بلژیک" | "ベルギー" | "比利时" | "벨기에" -> Some Belgium
  | "Benin" | "Benín" | "Bénin" | "Republic of Benin" | "République du Bénin" | "Бенин" | "بنين" | "بنین" | "بینن" | "ベナン" | "贝宁" | "베냉" -> Some Benin
  | "Burkina Faso" | "Burkina" | "Буркина-Фасо" | "برکینا فاسو" | "بوركينا فاسو" | "بورکینافاسو" | "ブルキナファソ" | "布基纳法索" | "부르키나파소" -> Some Burkina_Faso
  | "Banglades" | "Bangladesch" | "Bangladesh" | "Bangladesz" | "Bangladeş" | "Bangladeš" | "Bangladéš" | "Gônôprôjatôntri Bangladesh" | "People's Republic of Bangladesh" | "Бангладеш" | "بنغلاديش" | "بنگلادش" | "بنگلہ دیش" | "বাংলাদেশ" | "バングラデシュ" | "孟加拉国" | "방글라데시" -> Some Bangladesh
  | "Bugarska" | "Bulgaaria" | "Bulgaria" | "Bulgarie" | "Bulgarien" | "Bulgarije" | "Bulgaristan" | "Bulgária" | "Bulharsko" | "Bułgaria" | "Republic of Bulgaria" | "Болгария" | "България" | "Република България" | "بلغارستان" | "بلغاريا" | "بلغاریہ" | "ブルガリア" | "保加利亚" | "불가리아" -> Some Bulgaria
  | "Bahrain" | "Bahrajn" | "Bahrein" | "Bahreyn" | "Bahreïn" | "Kingdom of Bahrain" | "Mamlakat al-Baḥrayn" | "Бахрейн" | "البحرين" | "بحرین" | "バーレーン" | "巴林" | "바레인" -> Some Bahrain
  | "Bahama" | "Bahama-szigetek" | "Bahamalar" | "Bahamas" | "Bahamasaaret" | "Bahama’s" | "Bahami" | "Bahamy" | "Commonwealth of the Bahamas" | "Багамские Острова" | "البهاما" | "باهاما" | "بہاماس" | "バハマ" | "巴哈马" | "바하마" -> Some Bahamas
  | "Bosna a Hercegovina" | "Bosna i Hercegovina" | "Bosna-Hersek" | "Bosnia and Herzegovina" | "Bosnia ed Erzegovina" | "Bosnia ja Hertsegoviina" | "Bosnia ja Hertsegovina" | "Bosnia y Herzegovina" | "Bosnia-Herzegovina" | "Bosnia-ha-Herzegovina" | "Bosnie-Herzégovine" | "Bosnien och Hercegovina" | "Bosnien und Herzegowina" | "Bosnië en Herzegovina" | "Bosznia-Hercegovina" | "Bośnia i Hercegowina" | "Bósnia e Herzegovina" | "Боснa и Херцеговина" | "Босна и Херцеговина" | "Босния и Герцеговина" | "البوسنة والهرسك" | "بوسنی و هرزگوین" | "بوسنیا و ہرزیگووینا" | "ボスニア・ヘルツェゴビナ" | "波斯尼亚和黑塞哥维那" | "보스니아 헤르체고비나" -> Some Bosnia_And_Herzegovina
  | "Antille Francesi" | "Collectivity of Saint Barthélemy" | "Collectivité de Saint-Barthélemy" | "Saint Barthélemy" | "Saint-Barthélemy" | "San Bartolomé" | "St. Barthelemy" | "Svatý Bartoloměj" | "Svätý Bartolomej" | "São Bartolomeu" | "kolektivitet Sveti Bartolomej" | "Сен-Бартелеми" | "سان بارتليمي" | "سن بارتلمی" | "سینٹ بارتھیملے" | "サン・バルテルミー島" | "圣巴泰勒米" | "생바르텔레미" -> Some Saint_Barthlemy
  | "Saint Helena" | "Saint Helena, Ascension and Tristan da Cunha" | "Saint Helena, Ascension ha Tristan da Cunha" | "Saint Helena, Ascension ja Tristan da Cunha" | "Sainte-Hélène, Ascension et Tristan da Cunha" | "Sankta Helena" | "Sant'Elena, Ascensione e Tristan da Cunha" | "Santa Elena, Ascensión y Tristán de Acuña" | "Santa Helena, Ascensão e Tristão da Cunha" | "Sint-Helena, Ascension en Tristan da Cunha" | "St. Helena, Ascension and Tristan da Cunha" | "St. Helena, Ascension und Tristan da Cunha" | "Svatá Helena, Ascension a Tristan da Cunha" | "Sveta Helena" | "Sveta Jelena" | "Svätá Helena (zámorské územie)" | "Szent Ilona-sziget" | "Wyspa Świętej Heleny, Wyspa Wniebowstąpienia i Tristan da Cunha" | "Острова Святой Елены, Вознесения и Тристан-да-Кунья" | "سانت هيلينا وأسينشين وتريستان دا كونا" | "سنت هلن" | "سینٹ ہلینا، اسینشن و ترسٹان دا کونیا" | "セントヘレナ" | "圣赫勒拿、阿森松和特里斯坦-达库尼亚" | "세인트헬레나" -> Some Saint_Helena_Ascension_And_Tristan_Da_Cunha
  | "Belarus" | "Belorusija" | "Białoruś" | "Bielaruś" | "Bielorrusia" | "Bielorusko" | "Bielorussia" | "Bielorússia" | "Biélorussie" | "Bjelorusija" | "Bělorusko" | "Fehéroroszország" | "Republic of Belarus" | "Valgevene" | "Valko-Venäjä" | "Wit-Rusland" | "Белару́сь" | "Беларусь" | "Белоруссия" | "Республика Белоруссия" | "بلاروس" | "بيلاروسيا" | "بیلاروس" | "ベラルーシ" | "白俄罗斯" | "벨라루스" -> Some Belarus
  | "Belice" | "Belize" | "Белиз" | "بليز" | "بلیز" | "بیلیز" | "ベリーズ" | "伯利兹" | "벨리즈" -> Some Belize
  | "Bermuda" | "Bermudas" | "Bermudes" | "Bermudi" | "Bermudy" | "Somers Isles" | "The Bermudas" | "The Islands of Bermuda" | "Бермудские Острова" | "برمودا" | "バミューダ" | "百慕大" | "버뮤다" -> Some Bermuda
  | "Boliivia" | "Bolivia" | "Bolivia, Plurinational State of" | "Bolivie" | "Bolivien" | "Bolivija" | "Bolivya" | "Boliwia" | "Bolívia" | "Bolívie" | "Buliwya Mamallaqta" | "Buliwya" | "Estado Plurinacional de Bolivia" | "Plurinational State of Bolivia" | "Tetã Volívia" | "Volívia" | "Wuliwya Suyu" | "Wuliwya" | "Боливия" | "بوليفيا" | "بولیوی" | "بولیویا" | "ボリビア" | "玻利维亚" | "볼리비아" -> Some Bolivia
  | "Antyle Holenderskie" | "BES諸島" | "Bonaire Sint Eustatius and Saba" | "Bonaire" | "Bonaire, Sint Eustatius a Saba" | "Bonaire, Sint Eustatius ha Saba" | "Bonaire, Sint Eustatius i Saba" | "Bonaire, Sint Eustatius ja Saba" | "Boneiru, Sint Eustatius y Saba" | "Caribbean Netherlands" | "Caribe Neerlandés" | "Caribisch Nederland" | "Karayip Hollandası" | "Karibische Niederlande" | "Karibiska Nederländerna" | "Karibské Nizozemsko" | "Karipska Holandija" | "Paesi Bassi caraibici" | "Pays-Bas caribéens" | "Países Baixos Caribenhos" | "Карибские Нидерланды" | "الجزر الكاريبية الهولندية" | "جزایر کارائیب هلند" | "کیریبین نیدرلینڈز" | "荷蘭加勒比區" | "카리브 네덜란드" -> Some Caribbean_Netherlands
  | "Brasiilia" | "Brasil" | "Brasile" | "Brasilia" | "Brasilien" | "Brazil" | "Brazilië" | "Brazylia" | "Brazília" | "Brazílie" | "Brezilya" | "Brésil" | "Federative Republic of Brazil" | "República Federativa do Brasil" | "Бразилия" | "البرازيل" | "برازیل" | "برزیل" | "ブラジル" | "巴西" | "브라질" -> Some Brazil
  | "Barbade" | "Barbados" | "Барбадос" | "باربادوس" | "بارباڈوس" | "バルバドス" | "巴巴多斯" | "바베이도스" -> Some Barbados
  | "Brunei Darussalam" | "Brunei" | "Brunej" | "Nation of Brunei" | "Negara Brunei Darussalam" | "the Abode of Peace" | "Бруней" | "برونئی" | "برونائی" | "بروناي" | "ブルネイ" | "文莱" | "브루나이" -> Some Brunei
  | "Bhoutan" | "Bhutan" | "Bhután" | "Bhútán" | "Butan" | "Bután" | "Butão" | "Kingdom of Bhutan" | "Бутан" | "بوتان" | "بھوٹان" | "འབྲུག་ཡུལ་" | "ブータン" | "不丹" | "부탄" -> Some Bhutan
  | "Bouvet Adası" | "Bouvet Island" | "Bouvet'nsaari" | "Bouvet-sziget" | "Bouvet-øya" | "Bouveteiland" | "Bouvetinsel" | "Bouvetov ostrov" | "Bouvetön" | "Bouvetøya" | "Bouvetův ostrov" | "Bouvet’ saar" | "Buve" | "Enez Bouvet" | "Ilha Bouvet" | "Isla Bouvet" | "Isola Bouvet" | "Otok Bouvet" | "Wyspa Bouveta" | "Île Bouvet" | "Остров Буве" | "جزر بوفيه" | "جزیرهٔ بووه" | "جزیرہ بووہ" | "ブーベ島" | "布维岛" | "부베 섬" -> Some Bouvet_Island
  | "Bocvana" | "Botsvana" | "Botswana" | "Lefatshe la Botswana" | "Republic of Botswana" | "Ботсвана" | "بوتسوانا" | "بوٹسوانا" | "ボツワナ" | "博茨瓦纳" | "보츠와나" -> Some Botswana
  | "Bêafrîka" | "Centraal-Afrikaanse Republiek" | "Central African Republic" | "Centralafrikanska republiken" | "Centralnoafrička Republika" | "Kesk-Aafrika Vabariik" | "Keski-Afrikan tasavalta" | "Közép-afrikai Köztársaság" | "Orta Afrika Cumhuriyeti" | "Repubblica Centrafricana" | "Republik Kreizafrikan" | "Republika Środkowoafrykańska" | "República Centro-Africana" | "República Centroafricana" | "République centrafricaine" | "Srednjoafrička Republika" | "Stredoafrická republika" | "Středoafrická republika" | "Zentralafrikanische Republik" | "Центральноафриканская Республика" | "جمهورية أفريقيا الوسطى" | "جمهوری آفریقای مرکزی" | "وسطی افریقی جمہوریہ" | "中央アフリカ" | "中非共和国" | "중앙아프리카 공화국" -> Some Central_African_Republic
  | "Canada" | "Canadá" | "Kanada" | "Канада" | "كندا" | "کانادا" | "کینیڈا" | "カナダ" | "加拿大" | "캐나다" -> Some Canada
  | "Cocos (Keeling) Adaları" | "Cocos (Keeling) Islands" | "Cocos Islands" | "Cocoseilanden" | "Ilhas Cocos (Keeling)" | "Inizi Cocos (Keeling)" | "Islas Cocos o Islas Keeling" | "Isole Cocos e Keeling" | "Keeling Islands" | "Kokosinseln" | "Kokosova Ostrva" | "Kokosovi Otoci" | "Kokosové ostrovy" | "Kokosöarna" | "Kookossaared" | "Kookossaaret" | "Kókusz-szigetek" | "Wyspy Kokosowe" | "Îles Cocos" | "Кокосовые острова" | "جزائر کوکوس" | "جزایر کوکوس" | "جزر كوكوس" | "ココス諸島" | "科科斯" | "코코스 제도" -> Some Cocos_Keeling_Islands
  | "Schweiz" | "Suis" | "Suisse" | "Suiza" | "Suíça" | "Sveitsi" | "Svizra" | "Svizzera" | "Svájc" | "Swiss Confederation" | "Switzerland" | "Szwajcaria" | "Zwitserland" | "İsviçre" | "Švajcarska" | "Švajčiarsko" | "Šveits" | "Švicarska" | "Švýcarsko" | "Швейцария" | "سوئیس" | "سويسرا" | "سویٹذرلینڈ" | "スイス" | "瑞士" | "스위스" -> Some Switzerland
  | "Chile" | "Chili" | "Cile" | "Republic of Chile" | "República de Chile" | "Tšiili" | "Čile" | "şili" | "Чили" | "تشيلي" | "شیلی" | "چلی" | "チリ" | "智利" | "칠레" -> Some Chile
  | "China" | "Chine" | "Chiny" | "Cina" | "Hiina" | "Kiina" | "Kina" | "Kína" | "People's Republic of China" | "Sina" | "Zhongguo" | "Zhonghua" | "Zhōngguó" | "Zhōnghuá Rénmín Gònghéguó" | "çin" | "Čína" | "Китай" | "الصين" | "چین" | "中华人民共和国" | "中国" | "중국" -> Some China
  | "Aod an Olifant" | "Costa d'Avorio" | "Costa de Marfil" | "Costa do Marfim" | "Cote d'Ivoire" | "Côte d'Ivoire" | "Elefántcsontpart" | "Elevandiluurannik" | "Elfenbenskusten" | "Fildişi Sahili" | "Ivoorkust" | "Ivory Coast" | "Norsunluurannikko" | "Obala Bjelokosti" | "Obala Slonovače" | "Pobržie Slonoviny" | "Pobřeží slonoviny" | "Republic of Côte d'Ivoire" | "République de Côte d'Ivoire" | "WybrzeŻe Kości Słoniowej" | "Кот-д’Ивуар" | "آئیوری کوسٹ" | "ساحل العاج" | "ساحل عاج" | "コートジボワール" | "科特迪瓦" | "코트디부아르" -> Some Ivory_Coast
  | "Camarões" | "Cameroon" | "Cameroun" | "Camerun" | "Camerún" | "Kameroen" | "Kameroun" | "Kamerun" | "Republic of Cameroon" | "République du Cameroun" | "WybrzeŻe Kości Słoniowej" | "Камерун" | "الكاميرون" | "کامِرون" | "کیمرون" | "カメルーン" | "喀麦隆" | "카메룬" -> Some Cameroon
  | "Congo (DRC)" | "Congo (Rep. Dem.)" | "Congo (Rép. dém.)" | "Congo, the Democratic Republic of the" | "Congo-Kinshasa" | "DR Congo" | "DR Kongo" | "DRC" | "Democratic Republic of Congo" | "Demokratyczna Republika Konga" | "Ditunga dia Kongu wa Mungalaata" | "Jamhuri ya Kidemokrasia ya Kongo" | "Kongo (Dem. Rep.)" | "Kongo DV" | "Kongo Demokratik Cumhuriyeti" | "Kongo" | "Kongo, Demokratska Republika" | "Kongo-Kinshasa" | "Kongon demokraattinen tasavalta" | "Kongói Demokratikus Köztársaság" | "RD Congo" | "Repubilika ya Kongo Demokratiki" | "Republiki ya Kongó Demokratiki" | "República Democrática do Congo" | "Демократическая Республика Конго" | "الكونغو" | "کانگو" | "کنگو دموکراتیک" | "コンゴ民主共和国" | "民主刚果" | "콩고 민주 공화국" -> Some Dr_Congo
  | "Congo" | "Congo-Brazzaville" | "Kongo Cumhuriyeti" | "Kongo Vabariik" | "Kongo" | "Kongo, Republika" | "Kongo-Brazzaville" | "Kongói Köztársaság" | "Repubilika ya Kongo" | "Republíki ya Kongó" | "République du Congo" | "Республика Конго" | "جمهورية الكونغو" | "جمهوری کُنگو" | "جمہوریہ کانگو" | "コンゴ共和国" | "刚果" | "콩고" -> Some Congo
  | "Cook Adaları" | "Cook Islands" | "Cook-szigetek" | "Cookeilanden" | "Cooki saared" | "Cookinsaaret" | "Cookinseln" | "Cookove ostrovy" | "Cookovo Otočje" | "Cookovy ostrovy" | "Cooköarna" | "Ilhas Cook" | "Inizi Cook" | "Islas Cook" | "Isole Cook" | "Kukova Ostrva" | "Kūki 'Āirani" | "Wyspy Cooka" | "Îles Cook" | "Острова Кука" | "جزائر کک" | "جزایر کوک" | "جزر كوك" | "クック諸島" | "库克群岛" | "쿡 제도" -> Some Cook_Islands
  | "Colombia" | "Colombie" | "Colômbia" | "Kolombia" | "Kolombiya" | "Kolumbia" | "Kolumbie" | "Kolumbien" | "Kolumbija" | "Republic of Colombia" | "República de Colombia" | "Колумбия" | "كولومبيا" | "کلمبیا" | "کولمبیا" | "コロンビア" | "哥伦比亚" | "콜롬비아" -> Some Colombia
  | "Comoras" | "Comore" | "Comore-szigetek" | "Comoren" | "Comores" | "Comoros" | "Komoorid" | "Komoren" | "Komorerna" | "Komorez" | "Komori" | "Komorit" | "Komorlar" | "Komory" | "Udzima wa Komori" | "Union des Comores" | "Union of the Comoros" | "al-Ittiḥād al-Qumurī" | "Коморы" | "اتحاد قُمُر" | "القمری" | "جزر القمر" | "コモロ" | "科摩罗" | "코모로" -> Some Comoros
  | "Cabo Verde" | "Cape Verde" | "Capo Verde" | "Kaapverdië" | "Kab Glas" | "Kap Verde" | "Kapverdy" | "Republic of Cabo Verde" | "Republika Zielonego Przylądka" | "República de Cabo Verde" | "Roheneemesaared" | "Yeşil Burun" | "Zelenortska Ostrva" | "Zelenortska Republika" | "Zöld-foki Köztársaság" | "Îles du Cap-Vert" | "Кабо-Верде" | "دماغهٔ سبز" | "كابو فيردي" | "کیپ ورڈی" | "カーボベルデ" | "佛得角" | "카보베르데" -> Some Cape_Verde
  | "Costa Rica" | "Kosta Rika" | "Kostarika" | "Kostaryka" | "Republic of Costa Rica" | "República de Costa Rica" | "Коста-Рика" | "كوستاريكا" | "کاستاریکا" | "کوسٹاریکا" | "コスタリカ" | "哥斯达黎加" | "코스타리카" -> Some Costa_Rica
  | "Cuba" | "Kuba" | "Kuuba" | "Küba" | "Republic of Cuba" | "República de Cuba" | "Куба" | "كوبا" | "کوبا" | "کیوبا" | "キューバ" | "古巴" | "쿠바" -> Some Cuba
  | "Country of Curaçao" | "Curacao" | "Curazao" | "Curaçao" | "Kurasao" | "Kòrsou" | "Land Curaçao" | "Pais Kòrsou" | "ilha da Curação" | "Кюрасао" | "كوراساو" | "کوراسائو" | "کیوراساؤ" | "キュラソー" | "库拉索" | "퀴라소" -> Some Curaao
  | "Božićni otok" | "Božićno Ostrvo" | "Christmas Adası" | "Christmas Island" | "Christmaseiland" | "Enez Christmas" | "Ilha do Natal" | "Isla de Navidad" | "Isola di Natale" | "Joulusaari" | "Julön" | "Jõulusaar" | "Karácsony-sziget" | "Territory of Christmas Island" | "Vianočnú ostrov" | "Vánoční ostrov" | "Weihnachtsinsel" | "Wyspa Bożego Narodzenia" | "Île Christmas" | "Остров Рождества" | "جزيرة كريسماس" | "جزیرهٔ کریسمس" | "جزیرہ کرسمس" | "クリスマス島" | "圣诞岛" | "크리스마스 섬" -> Some Christmas_Island
  | "Cayman Adaları" | "Cayman Islands" | "Caymaneilanden" | "Caymansaaret" | "Caymanöarna" | "Ilhas Caimão" | "Inizi Cayman" | "Islas Caimán" | "Isole Cayman" | "Kaimaninseln" | "Kaimanisaared" | "Kajmanie ostrovy" | "Kajmanska Ostrva" | "Kajmanski otoci" | "Kajmanské ostrovy" | "Kajmany" | "Kajmán-szigetek" | "Îles Caïmans" | "Каймановы острова" | "جزائر کیمین" | "جزایر کیمن" | "جزر كايمان" | "ケイマン諸島" | "开曼群岛" | "케이맨 제도" -> Some Cayman_Islands
  | "Chipre" | "Chypre" | "Cipar" | "Cipro" | "Ciprus" | "Cypern" | "Cypr" | "Cyprus" | "Kipar" | "Kiprenez" | "Kypr" | "Kypros" | "Küpros" | "Kýpros" | "Kıbrıs Cumhuriyeti" | "Kıbrıs" | "Republic of Cyprus" | "Zypern" | "Κυπριακή Δημοκρατία" | "Κύπρος" | "Кипр" | "قبرص" | "قِبرِس" | "キプロス" | "塞浦路斯" | "키프로스" -> Some Cyprus
  | "Cechia" | "Chequia" | "Chéquia" | "Csehország" | "Czechia" | "Czechy" | "Tchekia" | "Tchéquie" | "Tjeckien" | "Tschechien" | "Tsjechië" | "Tšehhi" | "Tšekki" | "çekya" | "Česko" | "Česká republika" | "Češka" | "Чехия" | "التشيك" | "جمهوری چک" | "چيک" | "チェコ" | "捷克" | "체코" -> Some Czechia
  | "Alamagn" | "Alemanha" | "Alemania" | "Allemagne" | "Almanya" | "Bundesrepublik Deutschland" | "Deutschland" | "Duitsland" | "Federal Republic of Germany" | "Germania" | "Germany" | "Nemačka" | "Nemecko" | "Niemcy" | "Njemačka" | "Németország" | "Německo" | "Saksa" | "Saksamaa" | "Tyskland" | "Германия" | "آلمان" | "ألمانيا" | "جرمنی" | "ドイツ" | "德国" | "독일" -> Some Germany
  | "Cibuti" | "Dijibouti" | "Djibouti" | "Dschibuti" | "Dzsibuti" | "Dżibuti" | "Džibuti" | "Džibutsko" | "Gabuuti" | "Gabuutih Ummuuno" | "Gibuti" | "Jabuuti" | "Jamhuuriyadda Jabuuti" | "Republic of Djibouti" | "République de Djibouti" | "ǅibutsko" | "Джибути" | "جبوتی" | "جيبوتي" | "جیبوتی" | "ジブチ" | "吉布提" | "지부티" -> Some Djibouti
  | "Commonwealth of Dominica" | "Dominica" | "Dominika" | "Dominikai Közösség" | "Dominique" | "Wai‘tu kubuli" | "Доминика" | "دومينيكا" | "دومینیکا" | "ڈومینیکا" | "ドミニカ国" | "多米尼加" | "도미니카 공화국" -> Some Dominica
  | "Danemark" | "Dania" | "Danimarca" | "Danimarka" | "Danmark" | "Danska" | "Denemarken" | "Denmark" | "Dinamarca" | "Dánia" | "Dánsko" | "Dänemark" | "Kingdom of Denmark" | "Kongeriget Danmark" | "Taani" | "Tanska" | "Дания" | "الدنمارك" | "دانمارک" | "ڈنمارک" | "デンマーク" | "丹麦" | "덴마크" -> Some Denmark
  | "Dominicaanse Republiek" | "Dominican Republic" | "Dominik Cumhuriyeti" | "Dominikaani Vabariik" | "Dominikaaninen tasavalta" | "Dominikai Köztársaság" | "Dominikana" | "Dominikanische Republik" | "Dominikanska Republika" | "Dominikanska republiken" | "Dominikánska republika" | "Dominikánská republika" | "Repubblica Dominicana" | "Republik Dominikan" | "República Dominicana" | "République dominicaine" | "Доминиканская Республика" | "جمهورية الدومينيكان" | "جمهوری دومینیکن" | "ڈومینیکن" | "ドミニカ共和国" | "多明尼加" | "도미니카 공화국" -> Some Dominican_Republic
  | "Algeria" | "Algerien" | "Algeriet" | "Algerije" | "Algieria" | "Algéria" | "Algérie" | "Aljeria" | "Alžeeria" | "Alžir" | "Alžírsko" | "Argelia" | "Argélia" | "Cezayir" | "Dzayer" | "Алжир" | "الجزائر" | "الجزایر" | "アルジェリア" | "阿尔及利亚" | "알제리" -> Some Algeria
  | "Ecuador" | "Ekvador" | "Ekvádor" | "Ekwador" | "Equador" | "Republic of Ecuador" | "República del Ecuador" | "Équateur" | "Эквадор" | "الإكوادور" | "اکوادور" | "ایکواڈور" | "エクアドル" | "厄瓜多尔" | "에콰도르" -> Some Ecuador
  | "Arab Republic of Egypt" | "Egipat" | "Egipt" | "Egipto" | "Egiptus" | "Egito" | "Egitto" | "Egyiptom" | "Egypt" | "Egypte" | "Egypten" | "Egypti" | "Mısır" | "Ägypten" | "Égypte" | "Египет" | "مصر" | "エジプト" | "埃及" | "이집트" -> Some Egypt
  | "Dawlat Iritriyá" | "Eritre" | "Eritrea" | "Eritreia" | "Eritreja" | "Erytrea" | "Iritriyā" | "State of Eritrea" | "Érythrée" | "ʾErtrā" | "Эритрея" | "إريتريا" | "ارتریا" | "اریتره" | "ሃገረ ኤርትራ" | "ኤርትራ" | "エリトリア" | "厄立特里亚" | "에리트레아" -> Some Eritrea
  | "Länsi-Sahara" | "Lääne-Sahara" | "Nyugat-Szahara" | "Saara Ocidental" | "Sahara Occidental" | "Sahara Occidentale" | "Sahara Zachodnia" | "Sahara ar C'hornôg" | "Sahra Demokratik Arap Cumhuriyeti" | "Taneẓroft Tutrimt" | "Västsahara" | "Westelijke Sahara" | "Western Sahara" | "Westsahara" | "Zapadna Sahara" | "Západná Sahara" | "Západní Sahara" | "Западная Сахара" | "الصحراء الغربية" | "صحرای غربی" | "مغربی صحارا" | "西サハラ" | "西撒哈拉" | "서사하라" -> Some Western_Sahara
  | "Espagne" | "Espanha" | "Espanja" | "España" | "Hispaania" | "Hiszpania" | "Kingdom of Spain" | "Reino de España" | "Spagn" | "Spagna" | "Spain" | "Spanien" | "Spanje" | "Spanyolország" | "İspanya" | "Španielsko" | "Španija" | "Španjolska" | "Španělsko" | "Испания" | "إسبانيا" | "اسپانیا" | "ہسپانیہ" | "スペイン" | "西班牙" | "스페인" -> Some Spain
  | "Eesti Vabariik" | "Eesti" | "Estland" | "Estonia" | "Estonie" | "Estonija" | "Estonsko" | "Estonya" | "Estónia" | "Estónsko" | "Republic of Estonia" | "Viro" | "Észtország" | "Эстония" | "إستونيا" | "اسٹونیا" | "اِستونی" | "エストニア" | "爱沙尼亚" | "에스토니아" -> Some Estonia
  | "Ethiopia" | "Ethiopië" | "Etioopia" | "Etiopia" | "Etiopie" | "Etiopien" | "Etiopija" | "Etiopía" | "Etiyopya" | "Etiópia" | "Federal Democratic Republic of Ethiopia" | "Äthiopien" | "Éthiopie" | "ʾĪtyōṗṗyā" | "Эфиопия" | "إثيوبيا" | "اِتیوپی" | "ایتھوپیا" | "ኢትዮጵያ" | "የኢትዮጵያ ፌዴራላዊ ዲሞክራሲያዊ ሪፐብሊክ" | "エチオピア" | "埃塞俄比亚" | "에티오피아" -> Some Ethiopia
  | "Finland" | "Finlande" | "Finlandia" | "Finlandiya" | "Finlândia" | "Finnland" | "Finnország" | "Finska" | "Finsko" | "Fínsko" | "Republic of Finland" | "Republiken Finland" | "Soome" | "Suomen tasavalta" | "Suomi" | "Финляндия" | "فن لینڈ" | "فنلاند" | "فنلندا" | "フィンランド" | "芬兰" | "핀란드" -> Some Finland
  | "Fidji" | "Fidschi" | "Fidzsi-szigetek" | "Fidżi" | "Fidži" | "Figi" | "Fiji" | "Fijī Gaṇarājya" | "Fiyi" | "Fiđi" | "Fiǆi" | "Matanitu ko Viti" | "Republic of Fiji" | "Viti" | "Фиджи" | "فجی" | "فيجي" | "فیجی" | "फिजी" | "フィジー" | "斐济" | "피지" -> Some Fiji
  | "Falkandinsaaret" | "Falkland (Malvina) Adaları" | "Falkland Islands (Malvinas)" | "Falkland Islands" | "Falkland-szigetek" | "Falklandeilanden" | "Falklandi saared" | "Falklandinseln" | "Falklandski Otoci" | "Falklandsöarna" | "Falklandy" | "Folklandska ostrva" | "Ilhas Malvinas" | "Inizi Maloù" | "Islas Malvinas" | "Isole Falkland o Isole Malvine" | "Îles Malouines" | "Фолклендские острова" | "جزائر فاکلینڈ" | "جزایر فالکلند" | "جزر فوكلاند" | "フォークランド諸島" | "福克兰群岛" | "포클랜드 제도" -> Some Falkland_Islands
  | "France" | "Francia" | "Franciaország" | "Francie" | "Francja" | "Francuska" | "Francúzsko" | "Frankreich" | "Frankrijk" | "Frankrike" | "Fransa" | "França" | "Frañs" | "French Republic" | "Prantsusmaa" | "Ranska" | "République française" | "Франция" | "فرانس" | "فرانسه" | "فرنسا" | "フランス" | "法国" | "프랑스" -> Some France
  | "Faeroe Islands" | "Faerské ostrovy" | "Faeröer" | "Faroe Adaları" | "Faroe Islands" | "Farska Ostrva" | "Farski Otoci" | "Feröer" | "Färsaaret" | "Färöarna" | "Färöer-Inseln" | "Fääri saared" | "Færøerne" | "Føroyar" | "Ilhas Faroé" | "Inizi Faero" | "Islas Faroe" | "Isole Far Oer" | "Wyspy Owcze" | "Îles Féroé" | "Фарерские острова" | "جزائر فارو" | "جزایر فاروئه" | "جزر فارو" | "フェロー諸島" | "法罗群岛" | "페로 제도" -> Some Faroe_Islands
  | "Federated States of Micronesia" | "Micronesia" | "Micronesia, Federated States of" | "Micronesië" | "Micronésia" | "Micronésie" | "Mikroneesia" | "Mikronesia" | "Mikronesien" | "Mikronesiska federationen" | "Mikronezia" | "Mikronezija" | "Mikronezja" | "Mikronezya" | "Mikronésie" | "Mikronézia" | "Mikronéziai Szövetségi Államok" | "Федеративные Штаты Микронезии" | "مائکرونیشیا" | "ميكرونيسيا" | "میکرونزی" | "ミクロネシア" | "密克罗尼西亚" | "미크로네시아" -> Some Micronesia
  | "Gabon" | "Gabonese Republic" | "Gabun" | "Gabão" | "Gabón" | "République Gabonaise" | "Габон" | "الغابون" | "گابن" | "گیبون" | "ガボン" | "加蓬" | "가봉" -> Some Gabon
  | "Birleşik Krallık" | "Egyesült Királyság" | "Great Britain" | "Regno Unito" | "Reino Unido" | "Rouantelezh-Unanet" | "Royaume-Uni" | "Spojené království" | "Storbritannien" | "Suurbritannia" | "UK" | "Ujedinjeno Kraljevstvo" | "United Kingdom" | "Vereinigtes Königreich" | "Verenigd Koninkrijk" | "Veľká Británia (Spojené kráľovstvo)" | "Yhdistynyt kuningaskunta" | "Zjednoczone Królestwo" | "Великобритания" | "المملكة المتحدة" | "انگلیس" | "مملکتِ متحدہ" | "イギリス" | "英国" | "영국" -> Some United_Kingdom
  | "Georgia" | "Georgien" | "Georgië" | "Geórgia" | "Gruusia" | "Gruzie" | "Gruzija" | "Gruzja" | "Gruzínsko" | "Grúzia" | "Géorgie" | "Gürcistan" | "Jorjia" | "Sakartvelo" | "Грузия" | "جارجیا" | "جورجيا" | "گرجستان" | "საქართველო" | "ジョージア" | "格鲁吉亚" | "조지아" -> Some Georgia
  | "Bailiwick of Guernsey" | "Bailliage de Guernesey" | "Dgèrnésiais" | "Gernzi" | "Guernesey" | "Guernsey" | "Gwernenez" | "Гернси" | "غيرنزي" | "گرنزی" | "ガーンジー" | "根西岛" | "건지 섬" -> Some Guernsey
  | "Gana" | "Ghana" | "Ghána" | "Гана" | "غانا" | "غنا" | "گھانا" | "ガーナ" | "加纳" | "가나" -> Some Ghana
  | "Cebelitarık" | "Gibilterra" | "Gibraltar" | "Gibraltár" | "Jibraltar" | "Гибралтар" | "جبل الطارق" | "جبل طارق" | "ジブラルタル" | "直布罗陀" | "지브롤터" -> Some Gibraltar
  | "Gine" | "Ginea" | "Guinea" | "Guinee" | "Guiné" | "Guinée" | "Gvineja" | "Gwinea" | "Republic of Guinea" | "République de Guinée" | "Гвинея" | "غينيا" | "پاپوآ گینه نو" | "گنی" | "ギニア" | "几内亚" | "기니" -> Some Guinea
  | "Guadalupe" | "Guadeloupa" | "Guadeloupe" | "Gvadalupa" | "Gvadelup" | "Gwadeloup" | "Gwadelupa" | "Gwadloup" | "Гваделупа" | "غوادلوب" | "گوادلوپ" | "گواڈیلوپ" | "グアドループ" | "瓜德罗普岛" | "과들루프" -> Some Guadeloupe
  | "Gambia" | "Gambie" | "Gambija" | "Gambiya" | "Gâmbia" | "Republic of the Gambia" | "Гамбия" | "غامبيا" | "گامبیا" | "گیمبیا" | "ガンビア" | "冈比亚" | "감비아" -> Some Gambia
  | "Bissau-Guinea" | "Gine-Bissau" | "Ginea-Bissau" | "Guinea-Bissau" | "Guinea-Bisáu" | "Guinee-Bissau" | "Guiné-Bissau" | "Guinée-Bissau" | "Gvineja Bisao" | "Gvineja Bisau" | "Gwinea Bissau" | "Republic of Guinea-Bissau" | "República da Guiné-Bissau" | "Гвинея-Бисау" | "غينيا بيساو" | "گنی بساؤ" | "گینه بیسائو" | "ギニアビサウ" | "几内亚比绍" | "기니비사우" -> Some Guineabissau
  | "Egyenlítői-Guinea" | "Ekvator Ginesi" | "Ekvatoriaal-Guinea" | "Ekvatorialguinea" | "Ekvatorijalna Gvineja" | "Equatoriaal-Guinea" | "Equatorial Guinea" | "Ginea ar C'heheder" | "Guinea Ecuatorial" | "Guinea Equatoriale" | "Guiné Equatorial" | "Guinée équatoriale" | "Gwinea Równikowa" | "Päiväntasaajan Guinea" | "Republic of Equatorial Guinea" | "República da Guiné Equatorial" | "República de Guinea Ecuatorial" | "Rovníková Guinea" | "République de Guinée équatoriale" | "Äquatorialguinea" | "Экваториальная Гвинея" | "استوائی گنی" | "غينيا الاستوائية" | "گینه استوایی" | "赤道ギニア" | "赤道几内亚" | "적도 기니" -> Some Equatorial_Guinea
  | "Elláda" | "Grecia" | "Grecja" | "Greece" | "Grekland" | "Gres" | "Greécko" | "Griechenland" | "Griekenland" | "Grèce" | "Grécia" | "Grčka" | "Görögország" | "Hellenic Republic" | "Kreeka" | "Kreikka" | "Yunanistan" | "Řecko" | "Ελλάδα" | "Ελληνική Δημοκρατία" | "Греция" | "اليونان" | "یونان" | "ギリシャ" | "希腊" | "그리스" -> Some Greece
  | "Granada" | "Grenada" | "Grenade" | "Гренада" | "غرينادا" | "گرنادا" | "گریناڈا" | "グレナダ" | "格林纳达" | "그레나다" -> Some Grenada
  | "Greenland" | "Grenland" | "Grenlandia" | "Greunland" | "Groenland" | "Groenlandia" | "Gronelândia" | "Groönlanti" | "Grónsko" | "Grönland" | "Gröönimaa" | "Grønland" | "Kalaallit Nunaat" | "Гренландия" | "جرينلاند" | "گرین لینڈ" | "گرینلند" | "グリーンランド" | "格陵兰" | "그린란드" -> Some Greenland
  | "Guatemala" | "Gvatemala" | "Gwatemala" | "Гватемала" | "غواتيمالا" | "گواتِمالا" | "گواتیمالا" | "グアテマラ" | "危地马拉" | "과테말라" -> Some Guatemala
  | "Francia Guyana" | "Francouzská Guyana" | "Francuska Gvajana" | "Frans-Guyana" | "Franska Guyana" | "Fransız Guyanası" | "Französisch-Guayana" | "French Guiana" | "Guayana Francesa" | "Guiana Francesa" | "Guiana" | "Gujana Francuska" | "Guyana francese" | "Guyana" | "Guyane française" | "Guyane" | "Gwiana C'hall" | "Prantsuse Guajaana" | "Ranskan Guayana" | "Французская Гвиана" | "غويانا" | "فرانسیسی گیانا" | "گویان فرانسه" | "フランス領ギアナ" | "法属圭亚那" | "프랑스령 기아나" -> Some French_Guiana
  | "Guam" | "Guåhån" | "Gvam" | "Гуам" | "غوام" | "گوآم" | "گوام" | "グアム" | "关岛" | "괌" -> Some Guam
  | "Co-operative Republic of Guyana" | "Guayana" | "Guiana" | "Gujana" | "Guyana" | "Gvajana" | "Гайана" | "غيانا" | "گویان" | "گیانا" | "ガイアナ" | "圭亚那" | "가이아나" -> Some Guyana
  | "Hong Kong" | "Hongkong" | "Гонконг" | "هونغ كونغ" | "هُنگ کُنگ" | "ہانگ کانگ" | "香港" | "홍콩" -> Some Hong_Kong
  | "Heard Adası ve McDonald Adaları" | "Heard Island and McDonald Islands" | "Heard ja McDonald" | "Heard ja McDonaldinsaaret" | "Heard und die McDonaldinseln" | "Heard- och McDonaldöarna" | "Heard-en McDonaldeilanden" | "Heard-sziget és McDonald-szigetek" | "Heardov ostrov" | "Heardův ostrov a McDonaldovy ostrovy" | "Herdovo ostrvo i Makdonaldova ostrva" | "Ilha Heard e Ilhas McDonald" | "Inizi Heard ha McDonald" | "Islas Heard y McDonald" | "Isole Heard e McDonald" | "Otok Heard i otočje McDonald" | "Wyspy Heard i McDonalda" | "Îles Heard-et-MacDonald" | "Остров Херд и острова Макдональд" | "جزيرة هيرد وجزر ماكدونالد" | "جزیره هرد و جزایر مک‌دونالد" | "جزیرہ ہرڈ و جزائر مکڈونلڈ" | "ハード島とマクドナルド諸島" | "赫德岛和麦当劳群岛" | "허드 맥도널드 제도" -> Some Heard_Island_And_Mcdonald_Islands
  | "Honduras" | "Republic of Honduras" | "República de Honduras" | "Гондурас" | "هندوراس" | "هُندوراس" | "ہونڈوراس" | "ホンジュラス" | "洪都拉斯" | "온두라스" -> Some Honduras
  | "Chorvatsko" | "Chorvátsko" | "Chorwacja" | "Croacia" | "Croatia" | "Croatie" | "Croazia" | "Croácia" | "Horvaatia" | "Horvátország" | "Hrvatska" | "Hırvatistan" | "Kroatia" | "Kroatien" | "Kroatië" | "Republic of Croatia" | "Republika Hrvatska" | "Хорватия" | "كرواتيا" | "کرویئشا" | "کرُواسی" | "クロアチア" | "克罗地亚" | "크로아티아" -> Some Croatia
  | "Ayiti" | "Haiti" | "Haití" | "Haïti" | "Repiblik Ayiti" | "Republic of Haiti" | "République d'Haïti" | "Гаити" | "هائیتی" | "هايتي" | "ہیٹی" | "ハイチ" | "海地" | "아이티" -> Some Haiti
  | "Hongarije" | "Hongrie" | "Hungaria" | "Hungary" | "Hungria" | "Hungría" | "Macaristan" | "Magyarország" | "Maďarsko" | "Mađarska" | "Ungari" | "Ungarn" | "Ungern" | "Ungheria" | "Unkari" | "Węgry" | "Венгрия" | "المجر" | "مجارستان" | "ハンガリー" | "匈牙利" | "헝가리" -> Some Hungary
  | "Endonezya" | "Indoneesia" | "Indonesia" | "Indonesien" | "Indonesië" | "Indonezia" | "Indonezija" | "Indonezja" | "Indonésia" | "Indonésie" | "Indonézia" | "Republic of Indonesia" | "Republik Indonesia" | "Индонезия" | "إندونيسيا" | "اندونزی" | "انڈونیشیا" | "インドネシア" | "印度尼西亚" | "인도네시아" -> Some Indonesia
  | "Ellan Vannin" | "Enez Vanav" | "Ilha de Man" | "Insel Man" | "Isla de Man" | "Isle of Man" | "Isola di Man" | "Man Adası" | "Man" | "Mani saar" | "Mann" | "Mannin" | "Mansaari" | "Men Ostrvo" | "Ostrov Man" | "Otok Man" | "Wyspa Man" | "Île de Man" | "Остров Мэн" | "آئل آف مین" | "جزيرة مان" | "جزیرهٔ مَن" | "マン島" | "马恩岛" | "맨섬" -> Some Isle_Of_Man
  | "Bharat Ganrajya" | "Bhārat" | "Hindistan" | "Inde" | "India" | "Indie" | "Indien" | "Indija" | "Intia" | "Republic of India" | "Índia" | "Индия" | "الهند" | "بھارت" | "هند" | "भारत" | "இந்தியா" | "インド" | "印度" | "인도" -> Some India
  | "Brit Indiai-óceáni Terület" | "Britanska Teritorija Indijskog Okeana" | "Britanski Indijskooceanski teritorij" | "Britanya Hint Okyanusu Toprakları" | "Briti India ookeani ala" | "Britisches Territorium im Indischen Ozean" | "British Indian Ocean Territory" | "Britse Gebieden in de Indische Oceaan" | "Britské indickooceánske územie" | "Britské indickooceánské území" | "Brittiläinen Intian valtameren alue" | "Brittiska territoriet i Indiska Oceanen" | "Brytyjskie Terytorium Oceanu Indyjskiego" | "Territoire britannique de l'océan Indien" | "Territorio Británico del Océano Índico" | "Territorio britannico dell'oceano indiano" | "Território Britânico do Oceano Índico" | "Tiriad breizhveurat Meurvor Indez" | "Британская территория в Индийском океане" | "إقليم المحيط الهندي البريطاني" | "برطانوی بحرہند خطہ" | "قلمرو بریتانیا در اقیانوس هند" | "イギリス領インド洋地域" | "英属印度洋领地" | "인도" -> Some British_Indian_Ocean_Territory
  | "Ierland" | "Iirimaa" | "Ireland" | "Irland" | "Irlanda" | "Irlande" | "Irlandia" | "Irlanti" | "Irska" | "Irsko" | "Iwerzhon" | "Poblacht na hÉireann" | "Republic of Ireland" | "Éire" | "Írország" | "Írsko" | "İrlanda" | "Ирландия" | "أيرلندا" | "ایرلند" | "جزیرہ آئرلینڈ" | "アイルランド" | "爱尔兰" | "아일랜드" -> Some Ireland
  | "Iraan" | "Iran" | "Iran, Islamic Republic of" | "Irán" | "Irão" | "Islamic Republic of Iran" | "Jomhuri-ye Eslāmi-ye Irān" | "Írán" | "İran" | "Иран" | "إيران" | "ایران" | "イラン" | "伊朗" | "이란" -> Some Iran
  | "Iraak" | "Irak" | "Iraq" | "Iraque" | "Irák" | "Jumhūriyyat al-‘Irāq" | "Republic of Iraq" | "Ирак" | "العراق" | "عراق" | "کۆماری" | "ܩܘܼܛܢܵܐ" | "イラク" | "伊拉克" | "이라크" -> Some Iraq
  | "IJsland" | "Iceland" | "Island" | "Islanda" | "Islande" | "Islandia" | "Islanti" | "Islândia" | "Izland" | "Lýðveldið Ísland" | "Republic of Iceland" | "Ísland" | "İzlanda" | "Исландия" | "آئس لینڈ" | "آيسلندا" | "ایسلند" | "アイスランド" | "冰岛" | "아이슬란드" -> Some Iceland
  | "Iisrael" | "Israel" | "Israele" | "Israël" | "Izrael" | "Medīnat Yisrā'el" | "State of Israel" | "İsrail" | "Израиль" | "ישראל" | "إسرائيل" | "اسرائیل" | "فلسطين اشغالی" | "イスラエル" | "以色列" | "이스라엘" -> Some Israel
  | "Itaalia" | "Italia" | "Italian Republic" | "Italie" | "Italien" | "Italija" | "Italië" | "Italy" | "Itália" | "Itálie" | "Olaszország" | "Repubblica italiana" | "Taliansko" | "Włochy" | "İtalya" | "Италия" | "إيطاليا" | "اطالیہ" | "ایتالیا" | "イタリア" | "意大利" | "이탈리아" -> Some Italy
  | "Giamaica" | "Jamaica" | "Jamaika" | "Jamajka" | "Jamaïque" | "Ямайка" | "جامائیکا" | "جامايكا" | "جمیکا" | "ジャマイカ" | "牙买加" | "자메이카" -> Some Jamaica
  | "Bailiwick of Jersey" | "Bailliage de Jersey" | "Bailliage dé Jèrri" | "Džerzi" | "Isola di Jersey" | "Jersey" | "Jerzenez" | "Jèrri" | "Джерси" | "جرزی" | "جيرزي" | "ジャージー" | "泽西岛" | "저지 섬" -> Some Jersey
  | "Giordania" | "Hashemite Kingdom of Jordan" | "Jordaania" | "Jordan" | "Jordania" | "Jordanie" | "Jordanien" | "Jordanië" | "Jordánia" | "Jordánsko" | "Jordânia" | "al-Mamlakah al-Urdunīyah al-Hāshimīyah" | "ürdün" | "Иордания" | "اردن" | "الأردن" | "ヨルダン" | "约旦" | "요르단" -> Some Jordan
  | "Giappone" | "Jaapan" | "Japan" | "Japani" | "Japon" | "Japonia" | "Japonsko" | "Japonya" | "Japán" | "Japão" | "Japón" | "Nihon" | "Nippon" | "Япония" | "اليابان" | "جاپان" | "ژاپن" | "日本" | "일본" -> Some Japan
  | "Cazaquistão" | "Kasachstan" | "Kasahstan" | "Kazachstan" | "Kazachstán" | "Kazahstan" | "Kazahsztán" | "Kazajistán" | "Kazakhstan" | "Kazakistan" | "Kazakstan" | "Qazaqstan Respublïkası" | "Qazaqstan" | "Republic of Kazakhstan" | "Respublika Kazakhstan" | "Казахстан" | "Республика Казахстан" | "Қазақстан Республикасы" | "Қазақстан" | "قازقستان" | "قزاقستان" | "كازاخستان" | "カザフスタン" | "哈萨克斯坦" | "카자흐스탄" -> Some Kazakhstan
  | "Jamhuri ya Kenya" | "Keenia" | "Kenia" | "Kenija" | "Kenya" | "Keňa" | "Quénia" | "Republic of Kenya" | "Кения" | "كينيا" | "کنیا" | "کینیا" | "ケニア" | "肯尼亚" | "케냐" -> Some Kenya
  | "Kirghizistan" | "Kirgisia" | "Kirgisistan" | "Kirgistan" | "Kirgizistan" | "Kirgizisztán" | "Kirgizië" | "Kirgizsko" | "Kirgizstan" | "Kirguizistán" | "Kyrgyz Republic" | "Kyrgyz Respublikasy" | "Kyrgyzstan" | "Kyrgyzstán" | "Kõrgõzstan" | "Kırgızistan" | "Quirguistão" | "Киргизия" | "Кыргыз Республикасы" | "Кыргызстан" | "قرقیزستان" | "قيرغيزستان" | "کرغیزستان" | "キルギス" | "吉尔吉斯斯坦" | "키르기스스탄" -> Some Kyrgyzstan
  | "Cambodge" | "Cambodia" | "Cambodja" | "Cambogia" | "Camboja" | "Camboya" | "Kambodja" | "Kambodscha" | "Kambodzsa" | "Kambodża" | "Kambodža" | "Kamboçya" | "Kamboǆa" | "Kingdom of Cambodia" | "Kâmpŭchéa" | "Камбоджа" | "كمبوديا" | "کامبوج" | "کمبوڈیا" | "カンボジア" | "柬埔寨" | "캄보디아" -> Some Cambodia
  | "Kiribati" | "Republic of Kiribati" | "Ribaberiki Kiribati" | "Кирибати" | "كيريباتي" | "کیریباتی" | "キリバス" | "基里巴斯" | "키리바시" -> Some Kiribati
  | "Federation of Saint Christopher and Nevis" | "Saint Kitts and Nevis" | "Saint Kitts e Nevis" | "Saint Kitts en Nevis" | "Saint Kitts ha Nevis" | "Saint Kitts i Nevis" | "Saint Kitts ja Nevis" | "Saint Kitts och Nevis" | "Saint Kitts ve Nevis" | "Saint Kitts és Nevis" | "Saint-Christophe-et-Niévès" | "San Cristóbal y Nieves" | "St. Kitts und Nevis" | "Svatý Kryštof a Nevis" | "Sveti Kits i Nevis" | "Sveti Kristof i Nevis" | "Svätý Krištof a Nevis" | "São Cristóvão e Nevis" | "Сент-Китс и Невис" | "سانت كيتس ونيفيس" | "سنت کیتس و نویس" | "سینٹ کیٹز و ناویس" | "セントキッツ・ネーヴィス連邦" | "圣基茨和尼维斯" | "세인트키츠 네비스" -> Some Saint_Kitts_And_Nevis
  | "Corea del Sud" | "Corea del Sur" | "Coreia do Sul" | "Corée du Sud" | "Dél-Korea" | "Etelä-Korea" | "Güney Kore" | "Jižní Korea" | "Južna Koreja" | "Južná Kórea" | "Korea Południowa" | "Korea ar Su" | "Korea, Republic of" | "Lõuna-Korea" | "Republic of Korea" | "South Korea" | "Sydkorea" | "Südkorea" | "Zuid-Korea" | "Южная Корея" | "جنوبی کوریا" | "كوريا الجنوبية" | "کرهٔ جنوبی" | "韓国" | "韩国" | "남조선" | "남한" | "한국" -> Some South_Korea
  | "Kosova" | "Kosovo" | "Kosowo" | "Koszovó" | "Косово" | "Република Косово" | "Республика Косово" | "كوسوفو" | "کوزوو" | "کوسووہ" | "コソボ" | "科索沃" | "코소보" -> Some Kosovo
  | "Dawlat al-Kuwait" | "Koeweit" | "Koweit" | "Koweït" | "Kuvait" | "Kuvajt" | "Kuveit" | "Kuveyt" | "Kuwait" | "Kuwejt" | "State of Kuwait" | "Кувейт" | "الكويت" | "کویت" | "کُویت" | "クウェート" | "科威特" | "쿠웨이트" -> Some Kuwait
  | "Lao People's Democratic Republic" | "Lao" | "Laos" | "Laosz" | "Sathalanalat Paxathipatai Paxaxon Lao" | "Лаос" | "لاؤس" | "لائوس" | "لاوس" | "ສປປລາວ" | "ラオス" | "老挝" | "라오스" -> Some Laos
  | "Al-Jumhūrīyah Al-Libnānīyah" | "Lebanese Republic" | "Lebanon" | "Liban" | "Libano" | "Libanon" | "Liibanon" | "Líbano" | "Lübnan" | "Ливан" | "لبنان" | "レバノン" | "黎巴嫩" | "레바논" -> Some Lebanon
  | "Libeeria" | "Liberia" | "Liberija" | "Liberya" | "Libéria" | "Libérie" | "Republic of Liberia" | "Либерия" | "لائبیریا" | "ليبيريا" | "لیبـِریا" | "リベリア" | "利比里亚" | "라이베리아" -> Some Liberia
  | "Dawlat Libya" | "Libia" | "Libija" | "Libië" | "Libya" | "Libye" | "Libyen" | "Liibüa" | "Líbia" | "Líbya" | "State of Libya" | "Ливия" | "ليبيا" | "لیبی" | "لیبیا" | "リビア" | "利比亚" | "리비아" -> Some Libya
  | "Saint Lucia" | "Sainte-Lucie" | "Santa Lucia" | "Santa Lucía" | "Santa Lúcia" | "Santez-Lusia" | "St. Lucia" | "Svatá Lucie" | "Sveta Lucija" | "Svätá Lucia" | "Сент-Люсия" | "سانت لوسيا" | "سنت لوسیا" | "سینٹ لوسیا" | "セントルシア" | "圣卢西亚" | "세인트루시아" -> Some Saint_Lucia
  | "Fürstentum Liechtenstein" | "Lichtenštajnsko" | "Lichtenštejnsko" | "Liechenstein" | "Liechtenstein" | "Lihtenştayn" | "Lihtenštajn" | "Principality of Liechtenstein" | "Лихтенштейн" | "ليختنشتاين" | "لیختن‌اشتاین" | "لیختینستائن" | "リヒテンシュタイン" | "列支敦士登" | "리히텐슈타인" -> Some Liechtenstein
  | "Democratic Socialist Republic of Sri Lanka" | "Sri Lanka" | "Srí Lanka" | "ilaṅkai" | "Šri Lanka" | "Шри-Ланка" | "سريلانكا" | "سری لنکا" | "سری‌لانکا" | "இலங்கை" | "ශ්‍රී ලංකාව" | "スリランカ" | "斯里兰卡" | "스리랑카" -> Some Sri_Lanka
  | "Kingdom of Lesotho" | "Lesotho" | "Lesoto" | "Muso oa Lesotho" | "Лесото" | "لسوتو" | "ليسوتو" | "لیسوتھو" | "レソト" | "莱索托" | "레소토" -> Some Lesotho
  | "Leedu" | "Liettua" | "Lietuva" | "Lietuvos Respublika" | "Litauen" | "Lithuania" | "Litouwen" | "Lituania" | "Lituanie" | "Lituânia" | "Litva" | "Litvanija" | "Litvanya" | "Litvánia" | "Litwa" | "Republic of Lithuania" | "Литва" | "لتھووینیا" | "ليتوانيا" | "لیتوانیایی‌ها" | "リトアニア" | "立陶宛" | "리투아니아" -> Some Lithuania
  | "Grand Duchy of Luxembourg" | "Grand-Duché de Luxembourg" | "Groussherzogtum Lëtzebuerg" | "Großherzogtum Luxemburg" | "Lucembursko" | "Luksembourg" | "Luksemburg" | "Lussemburgo" | "Luxembourg" | "Luxemburg" | "Luxemburgo" | "Luxembursko" | "Lëtzebuerg" | "Lüksemburg" | "Люксембург" | "لوكسمبورغ" | "لوکزامبورگ" | "لکسمبرگ" | "ルクセンブルク" | "卢森堡" | "룩셈부르크" -> Some Luxembourg
  | "Latvia" | "Latvija" | "Latvijas Republika" | "Letland" | "Letonia" | "Letonija" | "Letonya" | "Lettland" | "Lettonia" | "Lettonie" | "Lettország" | "Letónia" | "Lotyšsko" | "Läti" | "Republic of Latvia" | "Łotwa" | "Латвия" | "لاتفيا" | "لتونی" | "لٹویا" | "ラトビア" | "拉脱维亚" | "라트비아" -> Some Latvia
  | "Macao Special Administrative Region of the People's Republic of China" | "Macao" | "Macau" | "Makao" | "Makau" | "Makaó" | "Região Administrativa Especial de Macau da República Popular da China" | "Макао" | "ماكاو" | "ماکائو" | "مکاؤ" | "マカオ" | "中華人民共和國澳門特別行政區" | "澳门" | "마카오" -> Some Macau
  | "Collectivity of Saint Martin" | "Collectivité de Saint-Martin" | "Saint Martin (French part)" | "Saint Martin" | "Saint-Martin" | "Svatý Martin (Francie)" | "Sveti Martin" | "São Martinho" | "Сен-Мартен" | "سانت مارتن" | "سن مارتن" | "سینٹ مارٹن" | "サン・マルタン" | "圣马丁" | "생마르탱" -> Some Saint_Martin
  | "Al-Mamlakah al-Maġribiyah" | "Fas" | "Kingdom of Morocco" | "Maroc" | "Marocco" | "Marocko" | "Marokko" | "Marokkó" | "Maroko" | "Marrocos" | "Marruecos" | "Morocco" | "Марокко" | "المغرب" | "مراکش" | "ⵍⵎⴰⵖⵔⵉⴱ" | "モロッコ" | "摩洛哥" | "모로코" -> Some Morocco
  | "Monaco" | "Monako" | "Mónaco" | "Principality of Monaco" | "Principato di Monaco" | "Principauté de Monaco" | "Монако" | "موناكو" | "موناکو" | "モナコ" | "摩纳哥" | "모나코" -> Some Monaco
  | "Moldavia" | "Moldavie" | "Moldavien" | "Moldavija" | "Moldavië" | "Moldavsko" | "Moldawien" | "Moldova" | "Moldova, Republic of" | "Moldávia" | "Mołdawia" | "Republic of Moldova" | "Republica Moldova" | "Молдавия" | "مالدووا" | "مولداوی" | "مولدوڤا" | "モルドバ" | "摩尔多瓦" | "몰도바" -> Some Moldova
  | "Madagascar" | "Madagasikara" | "Madagaskar" | "Madagaszkár" | "Madagáscar" | "Repoblikan'i Madagasikara" | "Republic of Madagascar" | "République de Madagascar" | "Мадагаскар" | "ماداگاسکار" | "مدغشقر" | "مڈغاسکر" | "マダガスカル" | "马达加斯加" | "마다가스카르" -> Some Madagascar
  | "Dhivehi Raajjeyge Jumhooriyya" | "Maldiivid" | "Maldivas" | "Maldive Islands" | "Maldive" | "Maldiven" | "Maldiverna" | "Maldives" | "Maldivez" | "Maldivi" | "Maldivler" | "Maldivy" | "Maldív-szigetek" | "Malediivit" | "Malediven" | "Maledivy" | "Malediwy" | "Republic of the Maldives" | "Мальдивы" | "المالديف" | "مالدیو" | "مالدیپ" | "ދިވެހިރާއްޖޭގެ" | "モルディブ" | "马尔代夫" | "몰디브" -> Some Maldives
  | "Estados Unidos Mexicanos" | "Mec'hiko" | "Mehhiko" | "Meksika" | "Meksiko" | "Meksyk" | "Messico" | "Mexicanos" | "Mexico" | "Mexiko" | "Mexikó" | "Mexique" | "México" | "United Mexican States" | "Мексика" | "المسكيك" | "مکزیک" | "میکسیکو" | "メキシコ" | "墨西哥" | "멕시코" -> Some Mexico
  | "Aolepān Aorōkin M̧ajeļ" | "Ilhas Marshall" | "Inizi Marshall" | "Islas Marshall" | "Isole Marshall" | "Marshall Adaları" | "Marshall Islands" | "Marshall-szigetek" | "Marshalleilanden" | "Marshalli Saared" | "Marshallinsaaret" | "Marshallinseln" | "Marshallove ostrovy" | "Marshallovy ostrovy" | "Marshallöarna" | "Maršalovi Otoci" | "Maršalska Ostrva" | "M̧ajeļ" | "Republic of the Marshall Islands" | "Wyspy Marshalla" | "Îles Marshall" | "Маршалловы Острова" | "جزائر مارشل" | "جزایر مارشال" | "جزر مارشال" | "マーシャル諸島" | "马绍尔群岛" | "마셜 제도" -> Some Marshall_Islands
  | "Kuzey Makedonya" | "Macedonia Północna" | "Macedonia del Nord" | "Macedonia del Norte" | "Macedonia" | "Macedonia, The Former Yugoslav Republic of" | "Macedónia do Norte" | "Macédoine du Nord" | "Makedonia an Norzh" | "Noord-Macedonië" | "Nordmakedonien" | "Nordmazedonien" | "North Macedonia" | "Pohjois-Makedonia" | "Põhja-Makedoonia" | "Republic of North Macedonia" | "Severna Makedonija" | "Severné Macedónsko" | "Severní Makedonie" | "Sjeverna Makedonija" | "The former Yugoslav Republic of Macedonia" | "Észak-Macedónia" | "Македонија" | "Република Северна Македонија" | "Северная Македония" | "شمال مقدونيا" | "شمالی مقدونیہ" | "مقدونیه شمالی" | "北マケドニア" | "北馬其頓" | "북마케도니아" -> Some North_Macedonia
  | "Mali" | "Republic of Mali" | "République du Mali" | "Мали" | "مالي" | "مالی" | "マリ" | "马里" | "말리" -> Some Mali
  | "Malta" | "Malte" | "Málta" | "Repubblika ta' Malta" | "Republic of Malta" | "Мальта" | "مالت" | "مالطا" | "مالٹا" | "マルタ" | "马耳他" | "몰타" -> Some Malta
  | "Birmania" | "Birmanie" | "Burma" | "Mianmar" | "Mijanmar" | "Mjanma" | "Mjanmar" | "Mjanmarsko" | "Myanmar" | "Pyidaunzu Thanmăda Myăma Nainngandaw" | "Republic of the Union of Myanmar" | "Мьянма" | "ميانمار" | "میانمار" | "မြန်မာ" | "ミャンマー" | "缅甸" | "미얀마" -> Some Myanmar
  | "Crna Gora" | "Czarnogóra" | "Karadağ" | "Montenegro" | "Montenegró" | "Monténégro" | "Černá Hora" | "Čierna Hora" | "Црна Гора" | "Черногория" | "الجبل الاسود" | "مونته‌نگرو" | "مونٹینیگرو" | "モンテネグロ" | "黑山" | "몬테네그로" -> Some Montenegro
  | "Mongolei" | "Mongolia" | "Mongolie" | "Mongoliet" | "Mongolija" | "Mongolië" | "Mongolsko" | "Mongoolia" | "Mongólia" | "Moğolistan" | "Монгол улс" | "Монголия" | "مغولستان" | "منغوليا" | "منگولیا" | "モンゴル" | "蒙古" | "몽골국" -> Some Mongolia
  | "Commonwealth of the Northern Mariana Islands" | "Inizi Mariana an Norzh" | "Islas Marianas del Norte" | "Isole Marianne Settentrionali" | "Kuzey Mariana Adaları" | "Marianas Setentrionais" | "Mariany Północne" | "Na Islas Mariånas" | "Noordelijke Marianeneilanden" | "Nordmarianerna" | "Northern Mariana Islands" | "Nördliche Marianen" | "Pohjois-Mariaanit" | "Põhja-Mariaanid" | "Sankattan Siha Na Islas Mariånas" | "Severna Marijanska Ostrva" | "Severné Mariány" | "Severní Mariany" | "Sjevernomarijanski otoci" | "Északi-Mariana-szigetek" | "Îles Mariannes du Nord" | "Северные Марианские острова" | "جزائر شمالی ماریانا" | "جزایر ماریانای شمالی" | "جزر ماريانا الشمالية" | "北マリアナ諸島" | "北马里亚纳群岛" | "북마리아나 제도" -> Some Northern_Mariana_Islands
  | "Mosambiik" | "Mosambik" | "Mozambico" | "Mozambik" | "Mozambique" | "Moçambique" | "Republic of Mozambique" | "República de Moçambique" | "Мозамбик" | "موزامبیک" | "موزمبيق" | "موزمبیق" | "モザンビーク" | "莫桑比克" | "모잠비크" -> Some Mozambique
  | "Islamic Republic of Mauritania" | "Maouritania" | "Mauretania" | "Mauretanien" | "Mauritaania" | "Mauritania" | "Mauritanie" | "Mauritanija" | "Mauritanië" | "Mauritánia" | "Mauritánie" | "Mauritânia" | "Moritanya" | "al-Jumhūriyyah al-ʾIslāmiyyah al-Mūrītāniyyah" | "Мавритания" | "موريتانيا" | "موریتانی" | "موریتانیہ" | "モーリタニア" | "毛里塔尼亚" | "모리타니" -> Some Mauritania
  | "Montserat" | "Montserrat" | "Монтсеррат" | "مانٹسریٹ" | "مونتسرات" | "モントセラト" | "蒙特塞拉特" | "몬트세랫" -> Some Montserrat
  | "Martinica" | "Martinik" | "Martinique" | "Martynika" | "Мартиника" | "مارتينيك" | "مارتینیک" | "مارٹینیک" | "マルティニーク" | "马提尼克" | "마르티니크" -> Some Martinique
  | "Maurice" | "Mauricijus" | "Mauricio" | "Mauricius" | "Mauritius" | "Maurício" | "Maurícius" | "Moris" | "Republic of Mauritius" | "République de Maurice" | "Île Maurice" | "Маврикий" | "موريشيوس" | "موریس" | "موریشس" | "モーリシャス" | "毛里求斯" | "모리셔스" -> Some Mauritius
  | "Malavi" | "Malawi" | "Malaŵi" | "Republic of Malawi" | "Малави" | "مالاوي" | "مالاوی" | "ملاوی" | "マラウイ" | "马拉维" | "말라위" -> Some Malawi
  | "Malaisia" | "Malaisie" | "Malajsie" | "Malajzia" | "Malasia" | "Malaysia" | "Maleisië" | "Malesia" | "Malezija" | "Malezja" | "Malezya" | "Malásia" | "Малайзия" | "مالزی" | "ماليزيا" | "ملائیشیا" | "مليسيا" | "マレーシア" | "马来西亚" | "말레이시아" -> Some Malaysia
  | "Department of Mayotte" | "Département de Mayotte" | "Majot" | "Majotta" | "Mayotte" | "Майотта" | "مايوت" | "مایوت" | "مایوٹ" | "マヨット" | "马约特" | "마요트" -> Some Mayotte
  | "Namibia" | "Namibie" | "Namibija" | "Namibië" | "Namibya" | "Namiibia" | "Namíbia" | "Republic of Namibia" | "Намибия" | "ناميبيا" | "نامیبیا" | "نمیبیا" | "ナミビア" | "纳米比亚" | "나미비아" -> Some Namibia
  | "Kaledonia-Nevez" | "Neukaledonien" | "New Caledonia" | "Nieuw-Caledonië" | "Nouvelle-Calédonie" | "Nova Caledónia" | "Nova Kaledonija" | "Nová Kaledonie" | "Nová Kaledónia" | "Nowa Kaledonia" | "Nueva Caledonia" | "Nuova Caledonia" | "Nya Kaledonien" | "Uus-Kaledoonia" | "Uusi-Kaledonia" | "Yeni Kaledonya" | "Új-Kaledónia" | "Новая Каледония" | "كاليدونيا الجديدة" | "نیو کیلیڈونیا" | "کالدونیای جدید" | "ニューカレドニア" | "新喀里多尼亚" | "누벨칼레도니" -> Some New_Caledonia
  | "Niger" | "Nijar" | "Nijer" | "Níger" | "Нигер" | "النيجر" | "نائجر" | "نیجر" | "ニジェール" | "尼日尔" | "니제르" -> Some Niger
  | "Enez Norfolk" | "Ilha Norfolk" | "Isla de Norfolk" | "Isola Norfolk" | "Norf'k Ailen" | "Norfolk Adası" | "Norfolk Island" | "Norfolk" | "Norfolk-sziget" | "Norfolkeiland" | "Norfolkinsaari" | "Norfolkinsel" | "Norfolkön" | "Ostrvo Norfok" | "Otok Norfolk" | "Teratri of Norf'k Ailen" | "Territory of Norfolk Island" | "Wyspa Norfolk" | "Île Norfolk" | "Норфолк" | "جزيرة نورفولك" | "جزیره نورفک" | "جزیرہ نورفک" | "ノーフォーク島" | "诺福克岛" | "노퍽 섬" -> Some Norfolk_Island
  | "Federal Republic of Nigeria" | "Naíjíríà" | "Nigeeria" | "Nigeria" | "Nigerija" | "Nigéria" | "Nigérie" | "Nijeriya" | "Nijerya" | "Нигерия" | "نائجیریا" | "نيجيريا" | "نیجریه" | "ナイジェリア" | "尼日利亚" | "나이지리아" -> Some Nigeria
  | "Nicaragua" | "Nicarágua" | "Nikaragua" | "Nikaragva" | "Republic of Nicaragua" | "República de Nicaragua" | "Никарагуа" | "نيكاراغوا" | "نکاراگوا" | "نیکاراگوئه" | "ニカラグア" | "尼加拉瓜" | "니카라과" -> Some Nicaragua
  | "Nijue" | "Niue" | "Niuē" | "Ниуэ" | "نييوي" | "نیووی" | "نیووے" | "ニウエ" | "纽埃" | "니우에" -> Some Niue
  | "Alankomaat" | "Holanda" | "Holandia" | "Holandija" | "Holansko" | "Holland" | "Hollanda" | "Hollandia" | "Izelvroioù" | "Nederland" | "Nederländerna" | "Netherlands" | "Niederlande" | "Nizozemska" | "Nizozemsko" | "Paesi Bassi" | "Pays-Bas" | "Países Bajos" | "The Netherlands" | "Нидерланды" | "نیدرلینڈز" | "هلند" | "هولندا" | "オランダ" | "荷兰" | "네덜란드" -> Some Netherlands
  | "Kingdom of Norway" | "Kongeriket Noreg" | "Kongeriket Norge" | "Noorwegen" | "Noreg" | "Norge" | "Norgga" | "Norja" | "Norra" | "Norsko" | "Noruega" | "Norvegia" | "Norveç" | "Norveška" | "Norvège" | "Norvégia" | "Norway" | "Norwegen" | "Norwegia" | "Nórsko" | "Норвегия" | "النرويج" | "ناروے" | "نروژ" | "ノルウェー" | "挪威" | "노르웨이" -> Some Norway
  | "Federal Democratic Republic of Nepal" | "Loktāntrik Ganatantra Nepāl" | "Nepal" | "Nepál" | "Népal" | "Непал" | "نيبال" | "نپال" | "نیپال" | "नेपाल" | "ネパール" | "尼泊尔" | "네팔" -> Some Nepal
  | "Naoero" | "Nauru" | "Pleasant Island" | "Republic of Nauru" | "Ripublik Naoero" | "Науру" | "نائورو" | "ناورو" | "ナウル" | "瑙鲁" | "나우루" -> Some Nauru
  | "Aotearoa" | "Neuseeland" | "New Zealand" | "Nieuw-Zeeland" | "Nouvelle-Zélande" | "Nova Zelândia" | "Novi Zeland" | "Nový Zéland" | "Nowa Zelandia" | "Nueva Zelanda" | "Nuova Zelanda" | "Nya Zeeland" | "Uus-Meremaa" | "Uusi-Seelanti" | "Yeni Zelanda" | "Zeland-Nevez" | "Új-Zéland" | "Новая Зеландия" | "نيوزيلندا" | "نیوزی لینڈ" | "نیوزیلند" | "ニュージーランド" | "新西兰" | "뉴질랜드" -> Some New_Zealand
  | "Omaan" | "Oman" | "Omán" | "Omã" | "Salṭanat ʻUmān" | "Sultanate of Oman" | "Umman" | "oman" | "Оман" | "عمان" | "オマーン" | "阿曼" | "오만" -> Some Oman
  | "Islamic Republic of Pakistan" | "Islāmī Jumhūriya'eh Pākistān" | "Pakistan" | "Pakistán" | "Pakisztán" | "Paquistão" | "Pákistán" | "Pākistān" | "Пакистан" | "باكستان" | "پاكستان" | "پاکستان" | "パキスタン" | "巴基斯坦" | "파키스탄" -> Some Pakistan
  | "Panama" | "Panamá" | "Republic of Panama" | "República de Panamá" | "Панама" | "بنما" | "پاناما" | "パナマ" | "巴拿马" | "파나마" -> Some Panama
  | "Ilhas Pitcairn" | "Inizi Pitcairn" | "Islas Pitcairn" | "Isole Pitcairn" | "Ostrva Pitkern" | "Pitcairn Adaları" | "Pitcairn Henderson Ducie and Oeno Islands" | "Pitcairn Islands" | "Pitcairn" | "Pitcairn-szigetek" | "Pitcairneilanden" | "Pitcairninseln" | "Pitcairnove ostrovy" | "Pitcairnovo otočje" | "Pitcairnovy ostrovy" | "Pitcairnöarna" | "Îles Pitcairn" | "Острова Питкэрн" | "جزائر پٹکیرن" | "جزایر پیت‌کرن" | "جزر بيتكيرن" | "ピトケアン諸島" | "皮特凯恩群岛" | "핏케언 제도" -> Some Pitcairn_Islands
  | "Perou" | "Peru" | "Peruu" | "Perù" | "Perú" | "Piruw" | "Pérou" | "Republic of Peru" | "República del Perú" | "Перу" | "بيرو" | "پرو" | "پیرو" | "ペルー" | "秘鲁" | "페루" -> Some Peru
  | "Filipiinid" | "Filipijnen" | "Filipinas" | "Filipinez" | "Filipini" | "Filipinler" | "Filipiny" | "Filippiinit" | "Filippine" | "Filippinerna" | "Filipíny" | "Fülöp-szigetek" | "Philippinen" | "Philippines" | "Pilipinas" | "Republic of the Philippines" | "Repúblika ng Pilipinas" | "Филиппины" | "الفلبين" | "فلپائن" | "فیلیپین" | "フィリピン" | "菲律宾" | "필리핀" -> Some Philippines
  | "Belau" | "Beluu er a Belau" | "Palaos (Palau)" | "Palau" | "Republic of Palau" | "Палау" | "بالاو" | "پالائو" | "پلاؤ" | "パラオ" | "帕劳" | "팔라우" -> Some Palau
  | "Independen Stet bilong Papua Niugini" | "Independent State of Papua New Guinea" | "Paapua Uus-Guinea" | "Papoea-Nieuw-Guinea" | "Papoua-Ginea Nevez" | "Papouasie-Nouvelle-Guinée" | "Papua New Guinea" | "Papua Niu Gini" | "Papua Niugini" | "Papua Nova Guiné" | "Papua Nova Gvineja" | "Papua Nuova Guinea" | "Papua Nya Guinea" | "Papua Yeni Gine" | "Papua-Neuguinea" | "Papua-Nová Guinea" | "Papua-Nowa Gwinea" | "Papua-Uusi-Guinea" | "Papúa Nueva Guinea" | "Pápua Új-Guinea" | "Папуа — Новая Гвинея" | "بابوا غينيا الجديدة" | "پاپوآ گینه نو" | "پاپوا نیو گنی" | "パプアニューギニア" | "巴布亚新几内亚" | "파푸아뉴기니" -> Some Papua_New_Guinea
  | "Lengyelország" | "Poland" | "Polen" | "Poljska" | "Pologne" | "Polonia" | "Polonya" | "Polska" | "Polsko" | "Polónia" | "Poola" | "Poľsko" | "Puola" | "Republic of Poland" | "Rzeczpospolita Polska" | "Польша" | "بولندا" | "لهستان" | "پولینڈ" | "ポーランド" | "波兰" | "폴란드" -> Some Poland
  | "Commonwealth of Puerto Rico" | "Estado Libre Asociado de Puerto Rico" | "Porto Rico" | "Porto Riko" | "Portoriko" | "Portoryko" | "Puerto Rico" | "Пуэрто-Рико" | "بويرتوريكو" | "پورتوریکو" | "پورٹو ریکو" | "プエルトリコ" | "波多黎各" | "푸에르토리코" -> Some Puerto_Rico
  | "Chosŏn Minjujuŭi Inmin Konghwaguk" | "Corea del Nord" | "Corea del Norte" | "Coreia do Norte" | "Corée du Nord" | "DPRK" | "Democratic People's Republic of Korea" | "Korea Północna" | "Korea an Norzh" | "Korea, Democratic People's Republic of" | "Kuzey Kore" | "Kórejská ľudovodemokratická republika (KĽR, Severná Kórea)" | "Noord-Korea" | "Nordkorea" | "North Korea" | "Pohjois-Korea" | "Põhja-Korea" | "Severna Koreja" | "Severní Korea" | "Sjeverna Koreja" | "Észak-Korea" | "Северная Корея" | "شمالی کوریا" | "كوريا الشمالية" | "کُره شمالی" | "北朝鮮" | "朝鲜" | "북조선" | "북한" | "조선" | "조선민주주의인민공화국" -> Some North_Korea
  | "Portekiz" | "Portogallo" | "Portugal" | "Portugali" | "Portugalia" | "Portugalsko" | "Portuguesa" | "Portuguese Republic" | "Portugália" | "República Portuguesa" | "Португалия" | "البرتغال" | "پرتغال" | "پرتگال" | "ポルトガル" | "葡萄牙" | "포르투갈" -> Some Portugal
  | "Paraguai" | "Paraguaj" | "Paraguay" | "Paraguái" | "Paragvaj" | "Paragwaj" | "Republic of Paraguay" | "República del Paraguay" | "Tetã Paraguái" | "Парагвай" | "باراغواي" | "پاراگوئه" | "پیراگوئے" | "パラグアイ" | "巴拉圭" | "파라과이" -> Some Paraguay
  | "Dawlat Filasṭin" | "Filistin" | "Palestiina" | "Palestijnse gebieden" | "Palestina" | "Palestine" | "Palestine, State of" | "Palestyna" | "Palestína" | "Palesztina" | "Palästina" | "State of Palestine" | "Палестина" | "فلسطين" | "فلسطین" | "パレスチナ" | "巴勒斯坦" | "팔레스타인" -> Some Palestine
  | "Francia Polinézia" | "Francouzská Polynésie" | "Francuska Polinezija" | "Francúzska Polynézia" | "Frans-Polynesië" | "Franska Polynesien" | "Fransız Polinezyası" | "Französisch-Polynesien" | "French Polynesia" | "Polinesia Francesa" | "Polinesia Francese" | "Polinezia C'hall" | "Polinezja Francuska" | "Polinésia Francesa" | "Polynésie française" | "Prantsuse Polüneesia" | "Pōrīnetia Farāni" | "Ranskan Polynesia" | "Французская Полинезия" | "بولينزيا الفرنسية" | "فرانسیسی پولینیشیا" | "پُلی‌نِزی فرانسه" | "フランス領ポリネシア" | "法属波利尼西亚" | "프랑스령 폴리네시아" -> Some French_Polynesia
  | "Catar" | "Dawlat Qaṭar" | "Katar" | "Qatar" | "State of Qatar" | "Катар" | "قطر" | "カタール" | "卡塔尔" | "카타르" -> Some Qatar
  | "La Réunion" | "Reinion" | "Reunion" | "Reunião" | "Reunión" | "Reünion" | "Riunione" | "Réunion" | "Реюньон" | "رئونیون" | "رے یونیوں" | "لا ريونيون" | "レユニオン" | "留尼旺岛" | "레위니옹" -> Some Runion
  | "Roemenië" | "Romania" | "Romanya" | "Románia" | "România" | "Roménia" | "Roumania" | "Roumanie" | "Rumania" | "Rumeenia" | "Rumunia" | "Rumunija" | "Rumunjska" | "Rumunsko" | "Rumänien" | "Румыния" | "رومانيا" | "رومانی" | "رومانیہ" | "ルーマニア" | "罗马尼亚" | "루마니아" -> Some Romania
  | "Oroszország" | "Rosja" | "Rusia" | "Rusija" | "Rusko" | "Rusland" | "Russia" | "Russian Federation" | "Russie" | "Russland" | "Rusya" | "Ryssland" | "Rússia" | "Venemaa" | "Venäjä" | "Российская Федерация" | "Россия" | "روس" | "روسيا" | "روسیه" | "ロシア" | "俄罗斯" | "러시아" -> Some Russia
  | "Republic of Rwanda" | "Repubulika y'u Rwanda" | "Ruanda" | "Rwanda" | "République du Rwanda" | "Руанда" | "رواندا" | "روانڈا" | "ルワンダ" | "卢旺达" | "르완다" -> Some Rwanda
  | "Al-Mamlakah al-‘Arabiyyah as-Su‘ūdiyyah" | "Arabia Saoudat" | "Arabia Saudita" | "Arabia Saudyjska" | "Arabia Saudí" | "Arabie Saoudite" | "Arábia Saudita" | "Kingdom of Saudi Arabia" | "SA" | "Saoedi-Arabië" | "Saudi Araabia" | "Saudi Arabia" | "Saudi-Arabia" | "Saudi-Arabien" | "Saudiarabien" | "Saudijska Arabija" | "Saudská Arábia" | "Saúdská Arábie" | "Suudi Arabistan" | "Szaúd-Arábia" | "Саудовская Аравия" | "السعودية" | "سعودی عرب" | "عربستان سعودی" | "サウジアラビア" | "沙特阿拉伯" | "사우디아라비아" -> Some Saudi_Arabia
  | "Jumhūrīyat as-Sūdān" | "Republic of the Sudan" | "Soedan" | "Soudan" | "Sudaan" | "Sudan" | "Sudán" | "Sudão" | "Szudán" | "Súdán" | "Судан" | "السودان" | "سودان" | "スーダン" | "苏丹" | "수단" -> Some Sudan
  | "Republic of Senegal" | "République du Sénégal" | "Senegal" | "Szenegál" | "Sénégal" | "Сенегал" | "السنغال" | "سنگال" | "سینیگال" | "セネガル" | "塞内加尔" | "세네갈" -> Some Senegal
  | "Republik Singapura" | "Singapore" | "Singapour" | "Singapur" | "Singapura" | "Szingapúr" | "Сингапур" | "سنغافورة" | "سنگاپور" | "சிங்கப்பூர்" | "シンガポール" | "新加坡" | "新加坡共和国" | "싱가포르" -> Some Singapore
  | "Déli-Georgia és Déli-Sandwich-szigetek" | "Etelä-Georgia ja Eteläiset Sandwichsaaret" | "Georgia Południowa i Sandwich Południowy" | "Georgia ar Su hag Inizi Sandwich ar Su" | "Georgia del Sud e Isole Sandwich Meridionali" | "Géorgie du Sud-et-les Îles Sandwich du Sud" | "Güney Georgia ve Güney Sandwich Adaları" | "Ilhas Geórgia do Sul e Sandwich do Sul" | "Islas Georgias del Sur y Sandwich del Sur" | "Jižní Georgie a Jižní Sandwichovy ostrovy" | "Južna Džordžija" | "Južna Georgija i otočje Južni Sandwich" | "Južná Georgia a Južné Sandwichove ostrovy" | "Lõuna-Georgia ja Lõuna-Sandwichi saared" | "South Georgia and the South Sandwich Islands" | "South Georgia" | "Sydgeorgien" | "Südgeorgien und die Südlichen Sandwichinseln" | "Zuid-Georgia en Zuidelijke Sandwicheilanden" | "Южная Георгия и Южные Сандвичевы острова" | "جزایر جورجیای جنوبی و ساندویچ جنوبی" | "جنوبی جارجیا" | "جورجيا الجنوبية" | "サウスジョージア・サウスサンドウィッチ諸島" | "南乔治亚" | "조지아" -> Some South_Georgia
  | "Huippuvuoret" | "Ilhas Svalbard e Jan Mayen" | "Islas Svalbard y Jan Mayen" | "Spitzbergen und Jan Mayen" | "Svalbard a Jan Mayen" | "Svalbard and Jan Mayen Islands" | "Svalbard and Jan Mayen" | "Svalbard e Jan Mayen" | "Svalbard en Jan Mayen" | "Svalbard et Jan Mayen" | "Svalbard ha Jan Mayen" | "Svalbard i Jan Majen" | "Svalbard i Jan Mayen" | "Svalbard och Jan Mayen" | "Svalbard og Jan Mayen" | "Svalbard ve Jan Mayen" | "Svalbard és Jan Mayen" | "Svalbard" | "Špicberky a Jan Mayen" | "Шпицберген и Ян-Майен" | "سفالبارد ويان ماين" | "سوالبارد و یان ماین" | "سوالبارڈ اور جان میئن" | "スヴァールバル諸島およびヤンマイエン島" | "斯瓦尔巴特" | "스발바르 얀마옌 제도" -> Some Svalbard_And_Jan_Mayen
  | "Ilhas Salomão" | "Inizi Salomon" | "Islas Salomón" | "Isole Salomone" | "Saalomoni Saared" | "Salamon-szigetek" | "Salomonen" | "Salomonove ostrovy" | "Salomonsaaret" | "Salomonseilanden" | "Salomonöarna" | "Solomon Adaları" | "Solomon Islands" | "Solomonova Ostrva" | "Solomonski Otoci" | "Wyspy Salomona" | "Îles Salomon" | "Šalamounovy ostrovy" | "Соломоновы Острова" | "جزائر سلیمان" | "جزایر سلیمان" | "جزر سليمان" | "ソロモン諸島" | "所罗门群岛" | "솔로몬 제도" -> Some Solomon_Islands
  | "Republic of Sierra Leone" | "Serra Leoa" | "Sierra Leone" | "Sijera Leone" | "Сьерра-Леоне" | "سيراليون" | "سیرالئون" | "سیرالیون" | "シエラレオネ" | "塞拉利昂" | "시에라리온" -> Some Sierra_Leone
  | "El Salvador" | "Republic of El Salvador" | "República de El Salvador" | "Salvador" | "Salvádor" | "Salwador" | "Сальвадор" | "السالوادور" | "السلفادور" | "ایل سیلواڈور" | "エルサルバドル" | "萨尔瓦多" | "엘살바도르" -> Some El_Salvador
  | "Repubblica di San Marino" | "Republic of San Marino" | "Saint-Marin" | "San Marino" | "San Maríno" | "Сан-Марино" | "سان مارينو" | "سان مارینو" | "サンマリノ" | "圣马力诺" | "산마리노" -> Some San_Marino
  | "Federal Republic of Somalia" | "Jamhuuriyadda Federaalka Soomaaliya" | "Jumhūriyyat aṣ-Ṣūmāl al-Fiderāliyya" | "Somaalia" | "Somali" | "Somalia" | "Somalie" | "Somalija" | "Somalië" | "Somália" | "Somálsko" | "Soomaaliya" | "Szomália" | "aṣ-Ṣūmāl" | "Сомали" | "الصومال" | "سومالی" | "صومالیہ" | "ソマリア" | "索马里" | "소말리아" -> Some Somalia
  | "Collectivité territoriale de Saint-Pierre-et-Miquelon" | "Saint Pierre a Miquelon" | "Saint Pierre and Miquelon" | "Saint Pierre en Miquelon" | "Saint Pierre ve Miquelon" | "Saint-Pierre a Miquelon" | "Saint-Pierre e Miquelon" | "Saint-Pierre i Miquelon" | "Saint-Pierre ja Miquelon" | "Saint-Pierre och Miquelon" | "Saint-Pierre és Miquelon" | "Saint-Pierre-et-Miquelon" | "San Pedro y Miquelón" | "Sant-Pêr-ha-Mikelon" | "Sent Pjer i Mikelon" | "St. Pierre und Miquelon" | "Sveti Petar i Mikelon" | "Сен-Пьер и Микелон" | "سان بيير وميكلون" | "سن-پیِر و میکلُن" | "سینٹ پیئر و میکیلون" | "サンピエール島及びミクロン島" | "圣皮埃尔和密克隆" | "생피에르 미클롱" -> Some Saint_Pierre_And_Miquelon
  | "Republic of Serbia" | "Republika Srbija" | "Serbia" | "Serbie" | "Serbien" | "Servië" | "Srbija" | "Srbsko" | "Szerbia" | "Sérvia" | "Sırbistan" | "Република Србија" | "Сербия" | "Србија" | "سربیا" | "صربستان" | "صيربيا" | "セルビア" | "塞尔维亚" | "세르비아" -> Some Serbia
  | "Dél-Szudán" | "Etelä-Sudan" | "Güney Sudan" | "Jižní Súdán" | "Južni Sudan" | "Južný Sudán" | "Lõuna-Sudaan" | "Soudan ar Su" | "Soudan du Sud" | "South Sudan" | "Sudan del sud" | "Sudan" | "Sudán del Sur" | "Sudão do Sul" | "Sydsudan" | "Südsudan" | "Zuid-Soedan" | "Южный Судан" | "جنوب السودان" | "جنوبی سوڈان" | "سودان جنوبی" | "南スーダン" | "南苏丹" | "남수단" -> Some South_Sudan
  | "Democratic Republic of São Tomé and Príncipe" | "República Democrática de São Tomé e Príncipe" | "Santo Tomé y Príncipe" | "Sao Tome and Principe" | "Sao Tome i Prinsipe" | "Sao Tomé en Principe" | "Svatý Tomáš a Princův ostrov" | "Sveti Toma i Princip" | "Svätý Tomáš a Princov ostrov" | "São Tomé and Príncipe" | "São Tomé e Príncipe" | "São Tomé et Príncipe" | "São Tomé ha Príncipe" | "São Tomé ja Príncipe" | "São Tomé och Príncipe" | "São Tomé und Príncipe" | "São Tomé ve Príncipe" | "São Tomé és Príncipe" | "São Téme ja Príncipe" | "Wyspy Świętego Tomasza i Książęca" | "Сан-Томе и Принсипи" | "ساؤ ٹومے و پرنسپے" | "سائوتومه و پرنسیپ" | "ساو تومي وبرينسيب" | "サントメ・プリンシペ" | "圣多美和普林西比" | "상투메 프린시페" -> Some So_Tom_And_Prncipe
  | "Republic of Suriname" | "Republiek Suriname" | "Sarnam" | "Sranangron" | "Surinam" | "Suriname" | "Суринам" | "سرینام" | "سورينام" | "سورینام" | "スリナム" | "苏里南" | "수리남" -> Some Suriname
  | "Eslovaquia" | "Eslováquia" | "Slovacchia" | "Slovak Republic" | "Slovakia" | "Slovakien" | "Slovakkia" | "Slovakya" | "Slovaquie" | "Slovačka" | "Slovensko" | "Slovenská republika" | "Slowakei" | "Slowakije" | "Szlovákia" | "Słowacja" | "Словакия" | "اِسلُواکی" | "سلوفاكيا" | "سلوواکیہ" | "スロバキア" | "斯洛伐克" | "슬로바키아" -> Some Slovakia
  | "Eslovenia" | "Eslovénia" | "Republic of Slovenia" | "Republika Slovenija" | "Sloveenia" | "Slovenia" | "Slovenien" | "Slovenija" | "Slovenië" | "Slovenya" | "Slovinsko" | "Slovénie" | "Slowenien" | "Szlovénia" | "Słowenia" | "Словения" | "اسلوونی" | "سلوفينيا" | "سلووینیا" | "スロベニア" | "斯洛文尼亚" | "슬로베니아" -> Some Slovenia
  | "Kingdom of Sweden" | "Konungariket Sverige" | "Rootsi" | "Ruotsi" | "Schweden" | "Suecia" | "Suède" | "Suécia" | "Sveden" | "Sverige" | "Svezia" | "Svédország" | "Sweden" | "Szwecja" | "Zweden" | "İsveç" | "Švedska" | "Švédsko" | "Швеция" | "السويد" | "سوئد" | "سویڈن" | "スウェーデン" | "瑞典" | "스웨덴" -> Some Sweden
  | "ESwatini" | "Essuatíni" | "Esuatini" | "Esvatini" | "Eswatini" | "Kingdom of Eswatini" | "Ngwane" | "Swatini" | "Swaziland" | "Szváziföld" | "Umbuso weSwatini" | "eSwatini" | "weSwatini" | "Свазиленд" | "إسواتيني" | "اسواتینی" | "سوازی لینڈ" | "エスワティニ" | "斯威士兰" | "에스와티니" -> Some Eswatini
  | "Saint-Martin" | "Sint Maarten (Dutch part)" | "Sint Maarten" | "Svatý Martin (Nizozemsko)" | "Sveti Martin" | "São Martinho" | "Синт-Мартен" | "سن مارتن" | "سنٹ مارٹن" | "سينت مارتن" | "シント・マールテン" | "圣马丁岛" | "신트마르턴" -> Some Sint_Maarten
  | "Repiblik Sesel" | "Republic of Seychelles" | "République des Seychelles" | "Sechelez" | "Seicheles" | "Seišellid" | "Sejšeli" | "Sesel" | "Seszele" | "Seychelle-szigetek" | "Seychellen" | "Seychellerna" | "Seychelles" | "Seychellit" | "Seychely" | "Seyşeller" | "Сейшельские Острова" | "سيشل" | "سیشل" | "سیچیلیس" | "セーシェル" | "塞舌尔" | "세이셸" -> Some Seychelles
  | "Al-Jumhūrīyah Al-ʻArabīyah As-Sūrīyah" | "Siria" | "Sirija" | "Suriye" | "Syria" | "Syrian Arab Republic" | "Syrie" | "Syrien" | "Syrië" | "Syyria" | "Szíria" | "Síria" | "Süüria" | "Sýria" | "Sýrie" | "Сирия" | "سوريا" | "سوریه" | "سوریہ" | "シリア" | "叙利亚" | "시리아" -> Some Syria
  | "Ilhas Turks e Caicos" | "Inizi Turks ha Caicos" | "Islas Turks y Caicos" | "Isole Turks e Caicos" | "Ostrva Terks i Kejkos" | "Otoci Turks i Caicos" | "Turks a Caicos" | "Turks and Caicos Islands" | "Turks i Caicos" | "Turks ja Caicos" | "Turks ve Caicos Adaları" | "Turks- och Caicosöarna" | "Turks- és Caicos-szigetek" | "Turks-en Caicoseilanden" | "Turks-ja Caicossaaret" | "Turks-und Caicosinseln" | "Îles Turques-et-Caïques" | "Теркс и Кайкос" | "جزائر کیکس و ترکیہ" | "جزایر تورکس و کایکوس" | "جزر توركس وكايكوس" | "タークス・カイコス諸島" | "特克斯和凯科斯群岛" | "터크스 케이커스 제도" -> Some Turks_And_Caicos_Islands
  | "Chad" | "Chade" | "Ciad" | "Csád" | "Czad" | "Republic of Chad" | "République du Tchad" | "Tchad" | "Tschad" | "Tsjaad" | "Tšaad" | "Tšad" | "çad" | "Čad" | "Чад" | "تشاد" | "چاد" | "چاڈ" | "チャド" | "乍得" | "차드" -> Some Chad
  | "République Togolaise" | "Togo" | "Togolese Republic" | "Togolese" | "Того" | "توغو" | "توگو" | "ٹوگو" | "トーゴ" | "多哥" | "토고" -> Some Togo
  | "Kingdom of Thailand" | "Prathet" | "Ratcha Anachak Thai" | "Tai" | "Tailandia" | "Tailândia" | "Tajland" | "Tajlandia" | "Tayland" | "Thai" | "Thaiföld" | "Thailand" | "Thaimaa" | "Thajsko" | "Thaïlande" | "Таиланд" | "تايلند" | "تایلند" | "تھائی لینڈ" | "ประเทศไทย" | "ราชอาณาจักรไทย" | "タイ" | "泰国" | "태국" -> Some Thailand
  | "Republic of Tajikistan" | "Tacikistan" | "Tadjikistan" | "Tadschikistan" | "Tadzjikistan" | "Tadżykistan" | "Tadžikistan" | "Tagikistan" | "Tajikistan" | "Tajiquistão" | "Tayikistán" | "Tađikistan" | "Taǆikistan" | "Toçikiston" | "Tádzsikisztán" | "Tádžikistán" | "Çumhuriyi Toçikiston" | "Таджикистан" | "Тоҷикистон" | "Ҷумҳурии Тоҷикистон" | "تاجکستان" | "تاجیکِستان" | "طاجيكستان" | "タジキスタン" | "塔吉克斯坦" | "타지키스탄" -> Some Tajikistan
  | "Islas Tokelau" | "Isole Tokelau" | "Tokelau" | "Tokelau-szigetek" | "Tokelauöarna" | "Токелау" | "توكيلاو" | "توکلائو" | "ٹوکیلاؤ" | "トケラウ" | "托克劳" | "토켈라우" -> Some Tokelau
  | "Turkmenistan" | "Turkmenistán" | "Turkménistan" | "Turkménsko" | "Turquemenistão" | "Türkmenistan" | "Türkmenisztán" | "Туркмения" | "تركمانستان" | "ترکمانستان" | "ترکمنستان" | "トルクメニスタン" | "土库曼斯坦" | "투르크메니스탄" -> Some Turkmenistan
  | "Democratic Republic of Timor-Leste" | "Doğu Timor" | "East Timor" | "Ida-Timor" | "Istočni Timor" | "Itä-Timor" | "Kelet-Timor" | "Oost-Timor" | "Osttimor" | "República Democrática de Timor-Leste" | "Repúblika Demokrátika Timór-Leste" | "Timor Est" | "Timor Lorosae" | "Timor Oriental" | "Timor Wschodni" | "Timor ar Reter" | "Timor oriental" | "Timor" | "Timor-Leste" | "Timór Lorosa'e" | "Timór-Leste" | "Východní Timor" | "Východný Timor" | "Östtimor" | "Восточный Тимор" | "تيمور الشرقية" | "تیمور شرقی" | "مشرقی تیمور" | "东帝汶" | "東ティモール" | "동티모르" -> Some Timorleste
  | "Tonga" | "Тонга" | "تونغا" | "تونگا" | "ٹونگا" | "トンガ" | "汤加" | "통가" -> Some Tonga
  | "Republic of Trinidad and Tobago" | "Trinidad a Tobago" | "Trinidad and Tobago" | "Trinidad e Tobago" | "Trinidad en Tobago" | "Trinidad ha Tobago" | "Trinidad i Tobago" | "Trinidad ja Tobago" | "Trinidad och Tobago" | "Trinidad und Tobago" | "Trinidad ve Tobago" | "Trinidad y Tobago" | "Trinidad és Tobago" | "Trinidade e Tobago" | "Trinité-et-Tobago" | "Trynidad i Tobago" | "Тринидад и Тобаго" | "ترينيداد وتوباغو" | "ترینیداد و توباگو" | "ٹرینیڈاڈ و ٹوباگو" | "トリニダード・トバゴ" | "特立尼达和多巴哥" | "트리니다드 토바고" -> Some Trinidad_And_Tobago
  | "Republic of Tunisia" | "Tuneesia" | "Tunesien" | "Tunesië" | "Tunezja" | "Tunis" | "Tunisia" | "Tunisie" | "Tunisien" | "Tunisko" | "Tunizia" | "Tunus" | "Tunézia" | "Tunísia" | "Túnez" | "al-Jumhūriyyah at-Tūnisiyyah" | "Тунис" | "تونس" | "チュニジア" | "突尼斯" | "튀니지" -> Some Tunisia
  | "Republic of Turkey" | "Turchia" | "Turcja" | "Turecko" | "Turkia" | "Turkiet" | "Turkije" | "Turkiye" | "Turkki" | "Turquia" | "Turquie" | "Turquía" | "Turska" | "Törökország" | "Türgi" | "Türkei" | "Türkiye Cumhuriyeti" | "Türkiye" | "Турция" | "تركيا" | "ترکی" | "ترکیه" | "トルコ" | "土耳其" | "터키" -> Some Trkiye
  | "Tuvalu" | "Тувалу" | "توفالو" | "تووالو" | "ツバル" | "图瓦卢" | "투발루" -> Some Tuvalu
  | "Chinese Taipei" | "Ilha Formosa" | "Republic of China" | "Taiwan" | "Taiwán" | "Tajvan" | "Tajwan" | "Tayvan" | "Taïwan" | "Tchaj-wan" | "Táiwān" | "Zhōnghuá Mínguó" | "Тайвань" | "تائیوان" | "تايوان" | "تایوان" | "中華民国" | "中華民國" | "台灣" | "대만" -> Some Taiwan
  | "Jamhuri ya Muungano wa Tanzania" | "Tansaania" | "Tansania" | "Tanzania" | "Tanzania, United Republic of" | "Tanzanie" | "Tanzanija" | "Tanzanya" | "Tanzánia" | "Tanzânia" | "Tádzsikisztán" | "United Republic of Tanzania" | "Танзания" | "تانزانیا" | "تنزانيا" | "تنزانیہ" | "タンザニア" | "坦桑尼亚" | "탄자니아" -> Some Tanzania
  | "Jamhuri ya Uganda" | "Oeganda" | "Ouganda" | "Republic of Uganda" | "Uganda" | "Уганда" | "أوغندا" | "اوگاندا" | "یوگنڈا" | "ウガンダ" | "乌干达" | "우간다" -> Some Uganda
  | "Oekraïne" | "Ucraina" | "Ucrania" | "Ucrânia" | "Ukraina" | "Ukraine" | "Ukrajina" | "Ukrajna" | "Ukrayina" | "Ukrayna" | "Украина" | "Україна" | "أوكرانيا" | "اوکراین" | "یوکرین" | "ウクライナ" | "乌克兰" | "우크라이나" -> Some Ukraine
  | "Amerika Birleşik Devletleri Küçük Dış Adaları" | "Az Amerikai Egyesült Államok lakatlan külbirtokai" | "Dalekie Wyspy Mniejsze Stanów Zjednoczonych" | "Förenta staternas mindre öar i Oceanien och Västindien" | "Ilhas Menores Distantes dos Estados Unidos" | "Inizi Minor A-bell Stadoù-Unanet" | "Islas Ultramarinas Menores de Estados Unidos" | "Isole minori esterne degli Stati Uniti d'America" | "Kleine afgelegen eilanden van de Verenigde Staten" | "Kleinere Inselbesitzungen der Vereinigten Staaten" | "Mala udaljena ostrva SAD-a" | "Mali udaljeni otoci SAD-a" | "Menšie odľahlé ostrovy USA" | "Menší odlehlé ostrovy USA" | "United States Minor Outlying Islands" | "Yhdysvaltain asumattomat saaret" | "Îles mineures éloignées des États-Unis" | "Ühendriikide hajasaared" | "Внешние малые острова США" | "امریکی چھوٹے بیرونی جزائر" | "جزایر کوچک حاشیه‌ای ایالات متحده آمریکا" | "جزر الولايات المتحدة الصغيرة النائية" | "合衆国領有小離島" | "美国本土外小岛屿" | "미국령 군소 제도" -> Some United_States_Minor_Outlying_Islands
  | "Oriental Republic of Uruguay" | "República Oriental del Uruguay" | "Uruguai" | "Uruguaj" | "Uruguay" | "Urugvaj" | "Urugwaj" | "Уругвай" | "اروگوئه" | "الأوروغواي" | "یوراگوئے" | "ウルグアイ" | "乌拉圭" | "우루과이" -> Some Uruguay
  | "Ameerika Ühendriigid" | "Amerika Birleşik Devletleri" | "Amerikai Egyesült Államok" | "Estados Unidos" | "SAD" | "Sjedinjene Američke Države" | "Spojené státy" | "Spojené štáty americké" | "Stadoù-Unanet" | "Stany Zjednoczone" | "Stati Uniti d'America" | "USA" | "United States of America" | "United States" | "Vereinigte Staaten" | "Verenigde Staten" | "Yhdysvallat" | "États-Unis" | "Соединённые Штаты Америки" | "الولايات المتحدة" | "ایالات متحده آمریکا" | "ریاستہائے متحدہ" | "アメリカ" | "美国" | "미국" -> Some United_States
  | "Oezbekistan" | "Ouzbekistan" | "Ouzbékistan" | "O‘zbekiston Respublikasi" | "O‘zbekiston" | "Republic of Uzbekistan" | "Usbekistan" | "Uzbekistan" | "Uzbekistán" | "Uzbequistão" | "Üzbegisztán" | "özbekistan" | "Ўзбекистон Республикаси" | "Узбекистан" | "أوزباكستان" | "ازبکستان" | "ウズベキスタン" | "乌兹别克斯坦" | "우즈베키스탄" -> Some Uzbekistan
  | "Cidade do Vaticano" | "Città del Vaticano" | "Cité du Vatican" | "Ciudad del Vaticano" | "Holy See (Vatican City State)" | "Stato della Città del Vaticano" | "Vaticaanstad" | "Vatican City State" | "Vatican City" | "Vatican" | "Vaticano" | "Vaticanæ" | "Vatikaani" | "Vatikan" | "Vatikanstadt" | "Vatikanstaten" | "Vatikán" | "Watykan" | "Ватикан" | "مدينة الفاتيكان" | "واتیکان" | "ویٹیکن سٹی" | "バチカン" | "梵蒂冈" | "바티칸" -> Some Vatican_City
  | "Saint Vincent and the Grenadines" | "Saint Vincent e Grenadine" | "Saint Vincent en de Grenadines" | "Saint Vincent i Grenadyny" | "Saint Vincent ja Grenadiinit" | "Saint Vincent och Grenadinerna" | "Saint Vincent ve Grenadinler" | "Saint Vincent és a Grenadine-szigetek" | "Saint Vincent" | "Saint-Vincent-et-les-Grenadines" | "San Vicente y Granadinas" | "Sant-Visant hag ar Grenadinez" | "St. Vincent und die Grenadinen" | "Svatý Vincenc a Grenadiny" | "Sveti Vincent i Grenadini" | "Sveti Vinsent i Grenadini" | "Svätý Vincent a Grenadíny" | "São Vincente e Granadinas" | "Сент-Винсент и Гренадины" | "سانت فينسنت والغرينادين" | "سنت وینسنت و گرنادین‌ها" | "سینٹ وینسینٹ و گریناڈائنز" | "セントビンセント・グレナディーン" | "圣文森特和格林纳丁斯" | "세인트빈센트 그레나딘" -> Some Saint_Vincent_And_The_Grenadines
  | "Bolivarian Republic of Venezuela" | "República Bolivariana de Venezuela" | "Venecuela" | "Venezuela" | "Venezuela, Bolivarian Republic of" | "Wenezuela" | "Венесуэла" | "فنزويلا" | "ونزوئلا" | "وینیزویلا" | "ベネズエラ" | "委内瑞拉" | "베네수엘라" -> Some Venezuela
  | "Brit Virgin-szigetek" | "Britanska Devičanska Ostrva" | "Britanski Djevičanski Otoci" | "Briti Neitsisaared" | "Britische Jungferninseln" | "British Virgin Islands" | "Britse Maagdeneilanden" | "Britské Panenské ostrovy" | "Brittiska Jungfruöarna" | "Brytyjskie Wyspy Dziewicze" | "Ilhas Virgens" | "Inizi Gwerc'h Breizhveurat" | "Islas Vírgenes del Reino Unido" | "Isole Vergini Britanniche" | "Neitsytsaaret" | "Panenské ostrovy" | "Virgin Islands, British" | "Virjin Adaları" | "Îles Vierges britanniques" | "Британские Виргинские острова" | "برطانوی جزائر ورجن" | "جزایر ویرجین بریتانیا" | "جزر العذراء" | "イギリス領ヴァージン諸島" | "英属维尔京群岛" | "영국령 버진아일랜드" -> Some British_Virgin_Islands
  | "ABD Virjin Adaları" | "Americké Panenské ostrovy" | "Amerikaanse Maagdeneilanden" | "Amerikai Virgin-szigetek" | "Amerikanische Jungferninseln" | "Amerikanska Jungfruöarna" | "Američka Devičanska Ostrva" | "Američki Djevičanski Otoci" | "Ilhas Virgens dos Estados Unidos" | "Inizi Gwerc'h ar Stadoù-Unanet" | "Islas Vírgenes de los Estados Unidos" | "Isole Vergini americane" | "Neitsisaared, USA" | "Neitsytsaaret" | "United States Virgin Islands" | "Virgin Islands, U.S." | "Wyspy Dziewicze Stanów Zjednoczonych" | "Îles Vierges des États-Unis" | "Виргинские Острова" | "امریکی جزائر ورجن" | "جزایر ویرجین ایالات متحده آمریکا" | "جزر العذراء الامريكية" | "アメリカ領ヴァージン諸島" | "美属维尔京群岛" | "미국령 버진아일랜드" -> Some United_States_Virgin_Islands
  | "Cộng hòa Xã hội chủ nghĩa Việt Nam" | "Socialist Republic of Vietnam" | "Viet Nam" | "Vietnam" | "Vietname" | "Vietnám" | "Vijetnam" | "Viêt Nam" | "Việt Nam" | "Wietnam" | "Вьетнам" | "فيتنام" | "ویتنام" | "ベトナム" | "越南" | "베트남" -> Some Vietnam
  | "Republic of Vanuatu" | "Ripablik blong Vanuatu" | "République de Vanuatu" | "Vanuatu" | "Вануату" | "فانواتو" | "وانواتو" | "バヌアツ" | "瓦努阿图" | "바누아투" -> Some Vanuatu
  | "Territoire des îles Wallis et Futuna" | "Territory of the Wallis and Futuna Islands" | "Valis i Futuna ostrva" | "Wallis a Futuna" | "Wallis and Futuna" | "Wallis e Futuna" | "Wallis en Futuna" | "Wallis et Futuna" | "Wallis ha Futuna" | "Wallis i Fortuna" | "Wallis i Futuna" | "Wallis ja Futuna" | "Wallis und Futuna" | "Wallis ve Futuna Adaları Bölgesi" | "Wallis y Futuna" | "Wallis és Futuna" | "Wallis- och Futunaöarna" | "Wallis-et-Futuna" | "Уоллис и Футуна" | "والس و فتونہ" | "واليس وفوتونا" | "والیس و فوتونا" | "ウォリス・フツナ" | "瓦利斯和富图纳群岛" | "왈리스 퓌튀나" -> Some Wallis_And_Futuna
  | "Bağımsız Samoa Devleti" | "Independent State of Samoa" | "Malo Saʻoloto Tutoʻatasi o Sāmoa" | "Samoa" | "Szamoa" | "Sāmoa" | "Самоа" | "ساموآ" | "ساموا" | "سامووا" | "サモア" | "萨摩亚" | "사모아" -> Some Samoa
  | "Iémen" | "Jeemen" | "Jemen" | "Yemen" | "Yemeni Republic" | "Yémen" | "al-Jumhūriyyah al-Yamaniyyah" | "Йемен" | "اليمن" | "یمن" | "イエメン" | "也门" | "예멘" -> Some Yemen
  | "Aforika Borwa" | "Afrika Borwa" | "Afrika Dzonga" | "Afrika-Borwa" | "Afrique du Sud" | "Afurika Tshipembe" | "Dél-afrikai Köztársaság" | "Etelä-Afrikka" | "Güney Afrika" | "Jihoafrická republika" | "Juhoafrická republika" | "Južnoafrička Republika" | "Lõuna-Aafrika Vabariik" | "Mzantsi Afrika" | "Ningizimu Afrika" | "Południowa Afryka" | "RSA" | "Republic of South Africa" | "Sewula Afrika" | "South Africa" | "Suafrika" | "Sud Africa" | "Sudáfrica" | "Suid-Afrika" | "Sydafrika" | "Südafrika" | "Zuid-Afrika" | "África do Sul" | "Южно-Африканская Республика" | "آفریقای جنوبی" | "جنوب أفريقيا" | "جنوبی افریقا" | "南アフリカ" | "南非" | "남아프리카" -> Some South_Africa
  | "Republic of Zambia" | "Sambia" | "Zambia" | "Zambie" | "Zambija" | "Zambiya" | "Zâmbia" | "Замбия" | "زامبيا" | "زامبیا" | "زیمبیا" | "ザンビア" | "赞比亚" | "잠비아" -> Some Zambia
  | "Republic of Zimbabwe" | "Simbabwe" | "Zimbabue" | "Zimbabve" | "Zimbabwe" | "Зимбабве" | "زمبابوے" | "زيمبابوي" | "زیمبابوه" | "ジンバブエ" | "津巴布韦" | "짐바브웨" -> Some Zimbabwe
  | _ -> None


let of_iso_string str =
  match String.uppercase_ascii str with
  | "ABW" -> Some Aruba
  | "AFG" -> Some Afghanistan
  | "AGO" -> Some Angola
  | "AIA" -> Some Anguilla
  | "ALA" -> Some Land_Islands
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
  | "BFA" -> Some Burkina_Faso
  | "BGD" -> Some Bangladesh
  | "BGR" -> Some Bulgaria
  | "BHR" -> Some Bahrain
  | "BHS" -> Some Bahamas
  | "BIH" -> Some Bosnia_And_Herzegovina
  | "BLM" -> Some Saint_Barthlemy
  | "SHN" -> Some Saint_Helena_Ascension_And_Tristan_Da_Cunha
  | "BLR" -> Some Belarus
  | "BLZ" -> Some Belize
  | "BMU" -> Some Bermuda
  | "BOL" -> Some Bolivia
  | "BES" -> Some Caribbean_Netherlands
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
  | "COD" -> Some Dr_Congo
  | "COG" -> Some Congo
  | "COK" -> Some Cook_Islands
  | "COL" -> Some Colombia
  | "COM" -> Some Comoros
  | "CPV" -> Some Cape_Verde
  | "CRI" -> Some Costa_Rica
  | "CUB" -> Some Cuba
  | "CUW" -> Some Curaao
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
  | "GNB" -> Some Guineabissau
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
  | "UNK" -> Some Kosovo
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
  | "REU" -> Some Runion
  | "ROU" -> Some Romania
  | "RUS" -> Some Russia
  | "RWA" -> Some Rwanda
  | "SAU" -> Some Saudi_Arabia
  | "SDN" -> Some Sudan
  | "SEN" -> Some Senegal
  | "SGP" -> Some Singapore
  | "SGS" -> Some South_Georgia
  | "SJM" -> Some Svalbard_And_Jan_Mayen
  | "SLB" -> Some Solomon_Islands
  | "SLE" -> Some Sierra_Leone
  | "SLV" -> Some El_Salvador
  | "SMR" -> Some San_Marino
  | "SOM" -> Some Somalia
  | "SPM" -> Some Saint_Pierre_And_Miquelon
  | "SRB" -> Some Serbia
  | "SSD" -> Some South_Sudan
  | "STP" -> Some So_Tom_And_Prncipe
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
  | "TLS" -> Some Timorleste
  | "TON" -> Some Tonga
  | "TTO" -> Some Trinidad_And_Tobago
  | "TUN" -> Some Tunisia
  | "TUR" -> Some Trkiye
  | "TUV" -> Some Tuvalu
  | "TWN" -> Some Taiwan
  | "TZA" -> Some Tanzania
  | "UGA" -> Some Uganda
  | "UKR" -> Some Ukraine
  | "UMI" -> Some United_States_Minor_Outlying_Islands
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
