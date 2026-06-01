#set page(
  paper: "a4",
  margin: (x: 1.5cm, top: 1.5cm, bottom: 1.5cm),
)
#set text(font: "M PLUS 1", size: 10pt)

#set par(
  leading: 0.4em,
)

#show raw: set text(font: "M PLUS 1 Code", size: 10pt)

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
  #text(size: 8pt, weight: "bold")[Comprehensive and Progressive Trans-Pacific Partnership Agreement (CPTPP)] \
]

#table(
  columns: 1fr,
  stroke: 0.5pt,

  grid(
    columns: (auto, 0.2fr, auto, 1fr, auto, 2fr),
    row-gutter: 0.6em,
    column-gutter: 0.4em,
    align: horizon,

    // --- EXPORTER ---
    grid.cell(colspan: 6)[#label("Exporter")],
    [#sub-label("Name:")], grid.cell(colspan: 5)[#field("exporter_name", "Cotec Plastic Company")],
    [#sub-label("Addr:")],
    grid.cell(colspan: 5)[#field(
      "exporter_addr",
      "LOT E4+E5, PHUC KHANH INDUSTRIAL PARK, VU PHUC WARD, HUNG YEN PROVINCE, VIETNAM 410000",
    )],
    [#sub-label("ISO:")], field("exporter_country", "VNM"),
    [#sub-label("Tel:")], field("exporter_tel", "+84-227-6250701"),
    [#sub-label("Email:")], field("exporter_email", "enquiry@cotec.co"),

    // --- PRODUCER ---
    grid.cell(colspan: 6)[#line(length: 100%, stroke: 0.5pt)],
    grid.cell(colspan: 6)[#label("Producer")],
    [#sub-label("Name:")], grid.cell(colspan: 5)[#field("producer_name", "CÔNG TY TNHH NHỰA COTEC")],
    [#sub-label("Addr:")],
    grid.cell(colspan: 5)[#field(
      "producer_addr",
      "LÔ E4+E5, KHU CÔNG NGHIỆP PHÚC KHÁNH, PHƯỜNG VŨ PHÚC, TỈNH HƯNG YÊN, VIỆT NAM",
    )],
    [#sub-label("ISO:")], field("producer_country", "VNM"),
    [#sub-label("Tel:")], field("producer_tel", "+84-227-6250701"),
    [#sub-label("Email:")], field("producer_email", "enquiry@cotec.co"),

    // --- IMPORTER ---
    grid.cell(colspan: 6)[#line(length: 100%, stroke: 0.5pt)],
    grid.cell(colspan: 6)[#label("Importer")],
    [#sub-label("Name:")],
    grid.cell(colspan: 5)[#field("importer_name", "Comercializadora Ultraobscuro S. de R.L. de C.V.")],
    [#sub-label("Addr:")],
    grid.cell(colspan: 5)[#field(
      "importer_addr",
      "Eje Central Lázaro Cárdenas No. 9, Locales 15 y 19 (Planta Alta), Colonia Centro, Cuauhtémoc, Ciudad de México, CP 06000, Mexico",
    )],
    [#sub-label("ISO:")], field("importer_country", "MEX"),
    [#sub-label("Tel:")], field("importer_tel", "+52-55-5518-1702"),
    [#sub-label("Email:")], field("importer_email", "contacto@ultraobscuro.com.mx"),
  ),
)


#table(
  columns: 1fr,
  stroke: 0.5pt,
  [
    #grid(
      columns: (0.1fr, 3fr, 0.5fr, 0.5fr),
      row-gutter: 0.8em,
      column-gutter: 1.5em,
      align: left + top,

      [#label("No.")], [#label("Description of goods")], [#label("HS Code")], [#label("Criterion")],

      [#field("id_1", "1.")],
      [#field("prod_desc_1", "Hatsune Miku Figurine (初音ミク) - Juguete de plástico")],
      [#field("prod_hs_1", "9503.00")],
      [#field("prod_criterion_1", "ACU")],

      [#field("id_2", "2.")],
      [#field("prod_desc_2", "Kagamine Rin & Len Acrylic Display Stand, Custom Made for Miku Expo 2026 Asia")],
      [#field("prod_hs_2", "3926.40")],
      [#field("prod_criterion_2", "PE")],

      [#field("id_3", "3.")],
      [#field("prod_desc_3", "Megurine Luka Printed Cotton T-Shirt")],
      [#field("prod_hs_3", "6109.10")],
      [#field("prod_criterion_3", "PSR")],

      [#field("id_4", "4.")],
      [#field("prod_desc_4", "Vocaloid Character Plush Toy Mat")],
      [#field("prod_hs_4", "9404.90")],
      [#field("prod_criterion_4", "WO")],
    )
  ],
  grid(
    columns: (auto, 1fr, auto, 1fr),
    row-gutter: 0.6em,
    column-gutter: 0.4em,
    align: horizon,

    // --- BLANKET PERIOD ---
    [#sub-label("Invoice number:")],
    field("invoice", "2026/VOC-4409"),
    [#sub-label("Blanket period:")],
    field("blanket_period", "Single shipment"),
  ),
  [
    #block(
      width: 100%,
    )[
      #set text(size: 7.5pt)
      Origin Criterion Legend: \
      #sub-label("WO:") Wholly obtained or produced goods. \
      #sub-label("PE:") Goods produced exclusively from originating materials. \
      #sub-label("PSR:") Goods satisfying substantial transformation criterion. \
      #sub-label("CTC:") Change in tariff classification criterion. \
      #sub-label("VA:") Value-added criterion. \
      #sub-label("SP:") Specific manufacturing or processing operation criterion. \
      #sub-label("DMI:") De Minimis or Tolerance. \
      #sub-label("ACU:") Accumulation.    ]
  ]
)

#table(
  stroke: 0.5pt,

  stack(
    spacing: 0.5em,
    grid(
      columns: (2fr, 1fr, 1fr, 1fr),
      row-gutter: 0.6em,
      column-gutter: 0.4em,
      align: horizon,

      [#label("Certifier")], [#checkbox() Exporter], [#checkbox(checked: true) Producer], [#checkbox() Importer],
    ),
    grid(
      columns: 1fr,
      row-gutter: 0.5em,
      column-gutter: 2em,
      align: horizon,
      sub-label[
        I certify that the goods described in this document qualify as originating and the information contained in this document is true and accurate. I assume responsibility for proving such representations and agree to maintain and present upon request or to make available during a verification visit, documentation necessary to support this certification.
      ],
    ),
    grid(
      columns: (auto, 0.2fr, auto, 1fr, auto, 2fr),
      row-gutter: 0.6em,
      column-gutter: 0.4em,
      align: horizon,

      // --- CERTIFIER DETAILS ---
      grid.cell(colspan: 6)[#line(length: 100%, stroke: 0.5pt)],
      [#sub-label("Name:")], grid.cell(colspan: 3)[#field("certifier_name", "Nguyễn Văn A")],
      [#sub-label("Role:")], [#field("certifier_role", "Product Manager")],
      [#sub-label("Addr:")],
      grid.cell(colspan: 5)[#field(
        "certifier_addr",
        "LOT E4+E5, PHUC KHANH INDUSTRIAL PARK, VU PHUC WARD, HUNG YEN PROVINCE, VIETNAM 410000",
      )],
      [#sub-label("ISO:")], field("certifier_country", "VNM"),
      [#sub-label("Tel:")], field("certifier_tel", "+84-90-1234567"),
      [#sub-label("Email:")], field("certifier_email", "nguyen.van.a@cotec.co"),
    ),
    grid(
      columns: (2fr, 1fr),
      row-gutter: 0.5em,
      column-gutter: 2em,
      align: top,
      grid.cell(colspan: 2)[#line(length: 100%, stroke: 0.5pt)],
      [#sub-label("Signature:")], [#sub-label("Date:")],
      [
        // Place image or cryptographic hash here.
        // Bottom alignment keeps it resting cleanly on the rule line.
        #field(
          "signature",
          "DIGITALLY SIGNED SHA256: e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
        )
      ],

      field("date", datetime.today().display("[day] [month repr:long] [year]")),
    ),
  ),
)
