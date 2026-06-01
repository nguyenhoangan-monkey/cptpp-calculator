#set page(
  paper: "a4",
  margin: (x: 1.5cm, top: 1.5cm, bottom: 1.5cm),
)
#set text(font: "M PLUS 1", size: 9pt)

#set par(
  leading: 0.4em,
)

#show raw: set text(font: "M PLUS 1 Code", size: 9pt)

#let field(id, value) = [
  #raw(value) #metadata((id: id, value: value))<cptpp_data>
]

#let label(body) = text(size: 8pt)[#strong(body)]
#let sub-label(body) = text(size: 8pt)[#body]

#let checkbox(checked: false) = box(
  width: 9pt,
  height: 9pt,
  stroke: 0.5pt,
  baseline: 1pt,
  align(center + horizon, if checked [X]),
)

#align(center)[
  #text(size: 14pt, weight: "bold")[CERTIFICATE OF ORIGIN] \
  \
  #text(size: 8pt, weight: "bold")[Comprehensive and Progressive Trans-Pacific Partnership Agreement (CPTPP)] \
]

#table(
  columns: 1fr,
  stroke: 0.5pt,

  stack(
    spacing: 0.25em,
    grid(
      columns: (2fr, 1fr, 1fr, 1fr),
      row-gutter: 0.6em,
      column-gutter: 0.4em,
      align: horizon,

      [#label("Certifier")],
      [#checkbox(checked: true) Exporter],
      [#checkbox(checked: true) Producer],
      [#checkbox() Importer],
    ),
    grid(
      columns: (auto, 1fr, auto, 2fr),
      row-gutter: 0.5em,
      column-gutter: 0.4em,
      align: horizon,

      [#sub-label("Name:")], grid.cell(colspan: 3)[#field("certifier_name", "Cotec Plastic Company")],
      [#sub-label("Addr:")],
      grid.cell(colspan: 3)[#field(
        "certifier_addr",
        "LOT E4+E5, PHUC KHANH INDUSTRIAL PARK, VU PHUC WARD, HUNG YEN PROVINCE, VIETNAM 410000",
      )],

      [#sub-label("Tel:")], field("certifier_tel", "+84-227-6250701"),
      [#sub-label("Email:")], field("certifier_email", "enquiry@cotec.co"),
    ),
  ),
  [
    #grid(
      columns: (auto, 1fr, auto, 2fr),
      row-gutter: 0.5em,
      column-gutter: 0.4em,
      align: horizon,

      grid.cell(colspan: 4)[#label("Exporter")],

      [#sub-label("Name:")], grid.cell(colspan: 3)[#field("exporter_name", "Cotec Plastic Company")],
      [#sub-label("Addr:")],
      grid.cell(colspan: 3)[#field(
        "exporter_addr",
        "LOT E4+E5, PHUC KHANH INDUSTRIAL PARK, VU PHUC WARD, HUNG YEN PROVINCE, VIETNAM 410000",
      )],

      [#sub-label("Tel:")], field("exporter_tel", "+84-227-6250701"),
      [#sub-label("Email:")], field("exporter_email", "enquiry@cotec.co"),
    )
  ],

  [
    #grid(
      columns: (auto, 1fr, auto, 2fr),
      row-gutter: 0.5em,
      column-gutter: 0.4em,
      align: horizon,

      grid.cell(colspan: 4)[#label("Producer")],

      [#sub-label("Name:")], grid.cell(colspan: 3)[#field("producer_name", "CÔNG TY TNHH NHỰA COTEC")],
      [#sub-label("Addr:")],
      grid.cell(colspan: 3)[#field(
        "producer_addr",
        "LÔ E4+E5, KHU CÔNG NGHIỆP PHÚC KHÁNH, PHƯỜNG VŨ PHÚC, TỈNH HƯNG YÊN, VIỆT NAM",
      )],

      [#sub-label("Tel:")], field("producer_tel", "+84-227-6250701"),
      [#sub-label("Email:")], field("producer_email", "enquiry@cotec.co"),
    )
  ],

  [
    #grid(
      columns: (auto, 1fr, auto, 2fr),
      row-gutter: 0.5em,
      column-gutter: 0.4em,
      align: horizon,

      grid.cell(colspan: 4)[#label("Importer")],

      [#sub-label("Name:")],
      grid.cell(colspan: 3)[#field("importer_name", "Comercializadora Ultraobscuro S. de R.L. de C.V.")],
      [#sub-label("Addr:")],
      grid.cell(colspan: 3)[#field(
        "importer_addr",
        "Eje Central Lázaro Cárdenas No. 9, Locales 15 y 19 (Planta Alta), Colonia Centro, Cuauhtémoc, Ciudad de México, CP 06000, Mexico",
      )],

      [#sub-label("Tel:")], field("importer_tel", "+52-55-5518-1702"),
      [#sub-label("Email:")], field("importer_email", "contacto@ultraobscuro.com.mx"),
    )
  ]
)


#table(
  columns: (2.5fr, 1.2fr, 1.2fr, 1.1fr),
  stroke: 0.5pt,
  align: (left + top, center + horizon, center + horizon, center + horizon),

  [*6. Description of Good(s)* \ #text(size: 7pt, weight: "regular", fill: gray.darken(30%))[Sufficient to identify the shipment]],
  [*6. HS Tariff \ Classification* \ #text(size: 7pt, weight: "regular", fill: gray.darken(30%))[(6-digit level)]],
  [*7. Origin \ Criterion* \ #text(size: 7pt, weight: "regular", fill: gray.darken(30%))[As per rules of origin]],
  [*6(b). Invoice No.* \ #text(size: 7pt, weight: "regular", fill: gray.darken(30%))[(If known, single shipment)]],

  [ \ \ \ \ ], [ ], [ ], [ ],
  [ \ \ \ \ ], [ ], [ ], [ ],
  [ \ \ \ \ ], [ ], [ ], [ ],
)


#table(
  stroke: 0.5pt,

  [
    #grid(
      columns: 1fr,
      row-gutter: 0.5em,
      column-gutter: 2em,
      align: horizon,
      label("Certification"),
      sub-label[
        I certify that the goods described in this document qualify as originating and the information contained in this document is true and accurate. I assume responsibility for proving such representations and agree to maintain and present upon request or to make available during a verification visit, documentation necessary to support this certification.
      ],
    )
    #grid(
      columns: (3fr, 1fr),
      row-gutter: 0.5em,
      column-gutter: 2em,
      align: horizon,
      [#sub-label("Signature:")], [#sub-label("Date:")],
      line(length: 100%, stroke: 0.5pt),

      field("date", datetime.today().display("[year]/[month]/[day]")),
    )
  ],
)
