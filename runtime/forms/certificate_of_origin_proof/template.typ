// SPDX-License-Identifier: GPL-3.0-only
// Copyright (C) 2026 Nguyễn Hoàng An

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

#align(center)[
  #text(size: 14pt, weight: "bold")[QUALIFICATION OF ORIGINATING STATUS] \
  #text(size: 8pt, weight: "bold")[Summary of evidence for originating status in accordance to CPTPP Chapter 3] \
]

#table(
  columns: (auto, 1fr),
  align: top,
  stroke: 0pt,
  inset: 3pt,

  // --- Invoice ---
  table.cell(colspan: 2)[#label("Invoice")],
  sub-label("Date:"), field("date", "1 June 2026"),
  sub-label("Invoice number:"), field("invoice", "2026/VOC-4409"),
  sub-label("Blanket period:"), field("blanket_period", "N/A"),
)

#table(
  columns: (auto, 1fr),

  align: left + top,
  stroke: 0.25pt,
  inset: 3pt,

  sub-label("No."), field("id_1", "1"),
  sub-label("Description"), field("prod_desc_1", "Hatsune Miku Figurine (初音ミク) - Juguete de plástico"),
  sub-label("HS Code"), field("prod_hs_1", "9503.00"),
  sub-label("Criterion"), field("prod_criterion_1", "ACU - Accumulation"),
)

#v(1em)

#label("Data")
#table(
  columns: (auto, 1fr),

  align: left + top,
  stroke: 0pt,
  inset: 3pt,

  sub-label("Part number"), field("", "miku-v4x-001"),
  sub-label("Effective date"), field("", "1 January 2026"),
  sub-label("Expiration date"), field("", "1 December 2026"),
  sub-label("Part description"), field("", "Hatsune Miku Figurine (初音ミク) - Juguete de plástico"),
  sub-label("Shipping from"), field("", "Vietnam"),
  sub-label("Shipping to"), field("", "Mexico"),
  sub-label("Inventory value"), field("", "20.00"),
  sub-label("Free on board value"), field("", "20.00"),
  sub-label("Analysis date"), field("", "1 June 2026"),
  sub-label("Status"), field("", "**PASSED**"),
)

#v(1em)

#label("Bill of materials")
#block()[
  #set text(font: "M PLUS 1 Code", size: 10pt)
  #table(
    columns: (1fr, auto, auto, auto),
    inset: 3pt,
    align: (left, left, left, right),
    stroke: 0pt,

    table.header([*Component description*], [*HS code*], [*Origin*], [*Value*]),
    [Hatsune Miku Figurine (初音ミク)], [9503.00.00], [Vietnam], [\$20.00],
    [  ├─ PVC Plastic Pellets], [3904.10], [China], [\$5.00],
    [  ├─ Acrylic Paint Sub-component], [3208.20], [Japan], [\$2.50],
    [  └─ Cardboard Packaging Box], [4819.10], [Vietnam], [\$1.50],
  )

  #align(right)[
    Value of non-originating materials: \$5.00 \
    Total regional value content (build-down): #text(fill: green.darken(20%))[75.00%]
  ]
]


#v(1em)

#label("Qualifying basis")
#block()[
  #set text(font: "M PLUS 1 Code", size: 10pt)
  Under the CPTPP accumulation provision, the finished good qualifies as originating because production or materials from other CPTPP member countries were successfully aggregated to meet the rules of origin.

  Specifically:

  - Requirement: Chapter 95 Product-Specific Rules (PSR) mandate a minimum 45.00% Regional Value Content (RVC) using the Build-Down method.
  - Result: The cptpp-calc engine verified that the Bill of Materials (BOM) achieved an RVC of 75.00%, exceeding the threshold.
]

#v(1em)

#label("Reference to CPTPP text")
#block(
  inset: 8pt,
  stroke: 0.25pt + black,
)[
  #set text(font: "M PLUS 1 Code", size: 10pt)
  *Tariff Heading 95.03 (Toys, games and sports requisites)* \
  A change to subheading 9503.00 from any other chapter; or No change in tariff classification is required, provided there is a regional value content of not less than:
  (a) 45 percent under the build-down method; or
  (b) 55 percent under the build-up method.
]


#pagebreak()

#align(center)[
  #text(size: 14pt, weight: "bold")[EXPLANATION OF ORIGIN] \
  #text(size: 8pt, weight: "bold")[Manual justification for originating status in accordance to CPTPP Chapter 3] \
]

#table(
  columns: (auto, 1fr),
  align: top,
  stroke: 0pt,
  inset: 3pt,

  // --- Invoice ---
  table.cell(colspan: 2)[#label("Invoice")],
  sub-label("Date:"), field("date", "1 June 2026"),
  sub-label("Invoice number:"), field("invoice", "2026/VOC-4409"),
  sub-label("Blanket period:"), field("blanket_period", "N/A"),
)

#table(
  columns: (auto, 1fr),

  align: left + top,
  stroke: 0.25pt,
  inset: 3pt,

  sub-label("No."), field("id_2", "2"),
  sub-label("Description"),
  field("prod_desc_2", "Kagamine Rin & Len Acrylic Display Stand, Custom Made for Miku Expo 2026 Asia"),

  sub-label("HS code"), field("prod_hs_2", "3926.40"),
  sub-label("Criterion"), field("prod_criterion_2", "PE - Goods produced exclusively from originating materials"),
)

#v(1em)

#label("Data") \
`This specific production run covers the manufacture of custom acrylic display stands produced at our regional facility for the Miku Expo 2026 Asia event. The calculations utilize active inventory values and fixed manufacturing overhead logs recorded on June 1, 2026, to verify compliance for a single, direct export shipment moving from our hub in Vietnam to the importer's delivery address in Mexico.`

#v(1em)

#label("Bill of materials") \
`All PMMA sheets, inks, and chemicals come from qualified CPTPP suppliers. Every input holds a valid declaration, leaving non-originating value at zero. Attached to this PDF is the Bill of materials.`

#v(1em)

#label("Qualifying basis") \
`The product qualifies under the PE criterion. With non-originating materials at 0.00%, the Regional Value Content score is a perfect 100%.`

#v(1em)

#label("Reference to CPTPP text") \
`In accordance with Chapter 3, Article 3.2, Paragraph 1(b) of the CPTPP Agreement, a good shall be treated as an originating good if it is produced entirely in the territory of one or more of the Parties, exclusively from originating materials. Since our manufacturing process relies solely on qualified inputs from regional signatories, the final display stands successfully satisfy the core preference requirements without needing a tariff classification jump.`

#v(1em)

#label("Other remarks") \
`All associated commercial invoices, supplier certificates of origin, and raw material batch receipts are securely cataloged and archived in our compliance database. These records will be held for the legally required retention period and remain readily accessible for electronic audit verification or physical inspection by customs authorities upon request.`

#v(1fr)


#table(
  columns: (auto, 1fr),
  align: top,
  stroke: 0pt,
  inset: 3pt,

  // --- CERTIFIER DETAILS ---
  table.cell(colspan: 2)[#label("Certifier")],
  sub-label("Role:"), field("certifier_role", "Producer"),
  sub-label("Name:"), field("certifier_name", "Nguyễn Văn A"),
  sub-label("Addr:"),
  field(
    "certifier_addr",
    "LOT E4+E5, PHUC KHANH INDUSTRIAL PARK, VU PHUC WARD, HUNG YEN PROVINCE, VIETNAM",
  ),

  sub-label("Tel:"), field("certifier_tel", "+84-90-1234567"),
  sub-label("Email:"), field("certifier_email", "nguyen.van.a@cotec.co"),
)
#table(
  columns: (auto, 1fr),
  align: top,
  stroke: 0pt,
  inset: 3pt,
  sub-label("Signature:"),
  field("signature", "DIGITALLY SIGNED SHA256: e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"),

  sub-label("Date:"), field("date", datetime.today().display("[day] [month repr:long] [year]")),
)
