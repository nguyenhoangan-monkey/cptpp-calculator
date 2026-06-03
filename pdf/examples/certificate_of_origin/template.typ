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
#set block(spacing: 0pt)

#show raw: set text(font: "M PLUS 1 Code", size: 10pt)

#let field(id, value) = [
  #raw(value) #metadata((id: id, value: value))<cptpp_data>
]

#let label(body) = text(size: 8pt)[#strong(body)]
#let sub-label(body) = text(size: 8pt)[#body]

#align(center)[
  #text(size: 14pt, weight: "bold")[CERTIFICATE OF ORIGIN] \
  #text(size: 8pt, weight: "bold")[Comprehensive and Progressive Trans-Pacific Partnership Agreement (CPTPP)] \
]

#v(1em)

#table(
  columns: (auto, 1fr),

  align: top,
  stroke: 0pt,
  inset: 3pt,

  // --- EXPORTER ---
  table.cell(colspan: 2)[#label("Exporter")],
  sub-label("Name:"), field("exporter_name", "Cotec Plastic Company"),
  sub-label("Addr:"),
  field("exporter_addr", "LOT E4+E5, PHUC KHANH INDUSTRIAL PARK, VU PHUC WARD, HUNG YEN PROVINCE, VIETNAM"),
  sub-label("Tel:"), field("exporter_tel", "+84-227-6250701"),
  sub-label("Email:"), field("exporter_email", "enquiry@cotec.co"),

  table.hline(stroke: 0.25pt),

  // --- PRODUCER ---
  table.cell(colspan: 2)[#label("Producer")],
  sub-label("Name:"), field("producer_name", "CÔNG TY TNHH NHỰA COTEC"),
  sub-label("Addr:"),
  field("producer_addr", "LÔ E4+E5, KHU CÔNG NGHIỆP PHÚC KHÁNH, PHƯỜNG VŨ PHÚC, TỈNH HƯNG YÊN, VIỆT NAM"),
  sub-label("Tel:"), field("producer_tel", "+84-227-6250701"),
  sub-label("Email:"), field("producer_email", "enquiry@cotec.co"),

  table.hline(stroke: 0.25pt),

  // --- IMPORTER ---
  table.cell(colspan: 2)[#label("Importer")],
  sub-label("Name:"), field("importer_name", "Comercializadora Ultraobscuro S. de R.L. de C.V."),
  sub-label("Addr:"),
  field(
    "importer_addr",
    "Eje Central Lázaro Cárdenas No. 9, Locales 15 y 19 (Planta Alta), Colonia Centro, Cuauhtémoc, Ciudad de México, CP 06000, Mexico",
  ),
  sub-label("Tel:"), field("importer_tel", "+52-55-5518-1702"),
  sub-label("Email:"), field("importer_email", "contacto@ultraobscuro.com.mx"),
)

#v(1em)

#table(
  columns: (auto, 1fr),
  align: top,
  stroke: 0pt,
  inset: 3pt,

  // --- BLANKET PERIOD ---
  sub-label("Invoice number:"), field("invoice", "2026/VOC-4409"),
  sub-label("Blanket period:"), field("blanket_period", "N/A"),
)

#table(
  columns: (0.2fr, 3fr, 0.6fr, 0.4fr),

  align: left + top,
  stroke: 0.25pt,
  inset: 3pt,

  label("No."), label("Description of goods"), label("HS Code"), label("Criterion"),

  field("id_1", "1"),
  field("prod_desc_1", "Hatsune Miku Figurine (初音ミク) - Juguete de plástico"),
  field("prod_hs_1", "9503.00"),
  field("prod_criterion_1", "ACU"),

  field("id_2", "2"),
  field("prod_desc_2", "Kagamine Rin & Len Acrylic Display Stand, Custom Made for Miku Expo 2026 Asia"),
  field("prod_hs_2", "3926.40"),
  field("prod_criterion_2", "PE"),

  field("id_3", "3"),
  field("prod_desc_3", "Megurine Luka Printed Cotton T-Shirt"),
  field("prod_hs_3", "6109.10"),
  field("prod_criterion_3", "PSR"),

  field("id_4", "4"),
  field("prod_desc_4", "Vocaloid Character Plush Toy Mat"),
  field("prod_hs_4", "9404.90"),
  field("prod_criterion_4", "WO"),
)

#block(width: 100%, inset: 8pt, radius: 0pt)[
  #set text(size: 8pt)
  Origin Criterion Legend: \
  #sub-label("WO:") Wholly obtained or produced goods. \
  #sub-label("PE:") Goods produced exclusively from originating materials. \
  #sub-label("PSR:") Goods satisfying substantial transformation criterion. \
  #sub-label("CTC:") Change in tariff classification criterion. \
  #sub-label("VA:") Value-added criterion. \
  #sub-label("SP:") Specific manufacturing or processing operation criterion. \
  #sub-label("DMI:") De Minimis or Tolerance. \
  #sub-label("ACU:") Accumulation.
]

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
#block(width: 100%, inset: 8pt, radius: 0pt)[
  #set text(size: 8pt)
  *I certify that the goods described in this document qualify as originating and the information contained in this document is true and accurate. I assume responsibility for proving such representations and agree to maintain and present upon request or to make available during a verification visit, documentation necessary to support this certification.*
]
#table(
  columns: (auto, 1fr),
  align: top,
  stroke: 0pt,
  inset: 3pt,
  sub-label("Signature:"),
  field("signature", "DIGITALLY SIGNED SHA256: e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"),

  sub-label("Date:"), field("date", "1 June 2026"),
)
// sub-label("Date:"), field("date", datetime.today().display("[day] [month repr:long] [year]")),
