#set page(
  paper: "a4",
  margin: (x: 1.5cm, top: 1.5cm, bottom: 1.5cm),
)
#set text(font: "M PLUS 1", size: 8pt)

#set par(
  leading: 0.2em,
  justify: true,
)

#show raw: set text(font: "M PLUS 1 Code", size: 10pt)

#let field(id, value) = [
  #raw(value) #metadata((id: id, value: value))<cptpp_data>
]

#let label(body) = strong(body)

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
  #text(size: 8pt, weight: "bold")[COMPREHENSIVE AND PROGRESSIVE AGREEMENT FOR TRANS-PACIFIC PARTNERSHIP (CPTPP)] \
]

#table(
  columns: 1fr,
  stroke: 0.5pt,

  [
    #grid(
      columns: (2fr, 1fr, 1fr, 1fr),
      row-gutter: 0.6em,
      column-gutter: 0.4em,
      align: horizon,

      [#label("Certifier")],
      [#checkbox(checked: true) #raw("Exporter")],
      [#checkbox() #raw("Producer")],
      [#checkbox() #raw("Importer")],
    )
  ],
  [
    #grid(
      columns: (auto, 1fr, auto, 2fr),
      row-gutter: 0.75em,
      column-gutter: 0.4em,
      align: horizon,

      grid.cell(colspan: 4)[#label("Exporter")],

      [Name:], grid.cell(colspan: 3)[#field("exporter_name", "Crypton Future Media, Inc.")],
      [Addr:],
      grid.cell(colspan: 3)[#field(
        "exporter_addr",
        "11F Nihon Seimei Sapporo Bldg., 1-1 Kita 3-jo Nishi 4-chome, Chuo-ku, Sapporo, Hokkaido 060-0003, JAPAN",
      )],

      [Tel:], field("exporter_tel", "+81-11-222-6655"),
      [Email:], field("exporter_email", "mpsupport@crypton.co.jp"),
    )
  ],

  [
    #grid(
      columns: (auto, 1fr, auto, 2fr),
      row-gutter: 0.6em,
      column-gutter: 0.4em,
      align: horizon,

      grid.cell(colspan: 4)[#label("Producer")],

      [Name:], grid.cell(colspan: 3)[#field("exporter_name", "Crypton Future Media, Inc.")],
      [Addr:],
      grid.cell(colspan: 3)[#field(
        "exporter_addr",
        "11F Nihon Seimei Sapporo Bldg., 1-1 Kita 3-jo Nishi 4-chome, Chuo-ku, Sapporo, Hokkaido 060-0003, JAPAN",
      )],

      [Tel:], field("exporter_tel", "+81-11-222-6655"),
      [Email:], field("exporter_email", "mpsupport@crypton.co.jp"),
    )
  ],

  [
    #grid(
      columns: (auto, 1fr, auto, 2fr),
      row-gutter: 0.6em,
      column-gutter: 0.4em,
      align: horizon,

      grid.cell(colspan: 4)[#label("Importer")],

      [Name:], grid.cell(colspan: 3)[#field("exporter_name", "Crypton Future Media, Inc.")],
      [Addr:],
      grid.cell(colspan: 3)[#field(
        "exporter_addr",
        "11F Nihon Seimei Sapporo Bldg., 1-1 Kita 3-jo Nishi 4-chome, Chuo-ku, Sapporo, Hokkaido 060-0003, JAPAN",
      )],

      [Tel:], field("exporter_tel", "+81-11-222-6655"),
      [Email:], field("exporter_email", "mpsupport@crypton.co.jp"),
    )
  ]
)


#table(
  columns: (2.5fr, 1.2fr, 1.2fr, 1.1fr),
  inset: 6pt,
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
  columns: 1fr,
  inset: 10pt,
  [
    *9. Authorised Signature and Date* \
    #text(size: 8pt)[
      I certify that the goods described in this document qualify as originating and the information contained in this document is true and accurate. I assume responsibility for proving such representations and agree to maintain and present upon request or to make available during a verification visit, documentation necessary to support this certification.
    ]


    #grid(
      columns: (1.5fr, 1fr),
      gutter: 30pt,
      [
        #line(length: 100%, stroke: 0.5pt)
        #text(size: 7.5pt)[Authorized Signature]
      ],
      [
        #line(length: 100%, stroke: 0.5pt)
        #text(size: 7.5pt)[Date (DD/MM/YYYY)]
      ],
    )

    #grid(
      columns: (1fr, 1fr),
      gutter: 30pt,
      [
        Company Name: #line(length: 70%, stroke: 0.5pt + gray)
      ],
      [
        Title / Position: #line(length: 71%, stroke: 0.5pt + gray)
      ],
    )
  ]
)
