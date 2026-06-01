#set page(
  paper: "a4",
  margin: (x: 1.2cm, top: 1.2cm, bottom: 1.5cm),
)
#set text(
  font: "M PLUS 1 Code", // Fallbacks like Arial or Helvetica work great too
  size: 8.5pt,
)

// Helper for clean custom checkboxes
#let checkbox() = box(width: 9pt, height: 9pt, stroke: 0.5pt, baseline: 1pt)

// Title Header
#align(center)[
  #text(size: 14pt, weight: "bold")[CPTPP CERTIFICATE OF ORIGIN] \
  #v(-2mm)
  #text(size: 9pt, style: "italic")[Comprehensive and Progressive Agreement for Trans-Pacific Partnership] \
  #v(-3mm)
  #text(size: 7.5pt, fill: gray.darken(20%))[Annex 3-B: Minimum Data Requirements]
]

#v(2mm)

// Main Form Configuration
#set table(stroke: 0.5pt + rgb("#444444"))

// --- SECTION 1-5: PARTICIPANT DETAILS ---
#table(
  columns: (1fr, 1fr),
  inset: 7pt,

  // Row 1: Certifier Status & Blanket Period
  [
    *1. Certifier Status* \
    #v(1mm)
    Indicate if the certifier is the: \
    #v(1mm)
    #checkbox() Exporter #h(8pt) #checkbox() Producer #h(8pt) #checkbox() Importer
  ],
  [
    *8. Blanket Period* \
    #v(1mm)
    #text(size: 7.5pt, style: "italic")[For multiple shipments of identical goods (up to 12 months)] \
    *From:* #line(length: 35%, stroke: 0.5pt) *To:* #line(length: 35%, stroke: 0.5pt)
  ],

  // Row 2: Certifier & Exporter
  [
    *2. Certifier Details* \
    #v(0.5mm)
    #text(fill: gray.darken(30%), size: 7pt)[Name, Address (inc. country), Tel, Email:]
    #v(1.5cm)
  ],
  [
    *3. Exporter Details* \
    #v(0.5mm)
    #text(fill: gray.darken(30%), size: 7pt)[Name, Address (inc. country), Tel, Email (If different from certifier):]
    #v(1.5cm)
  ],

  // Row 3: Producer & Importer
  [
    *4. Producer Details* \
    #v(0.5mm)
    #text(
      fill: gray.darken(30%),
      size: 7pt,
    )[Name, Address (inc. country), Tel, Email (State "Various" or "Available upon request" if confidential):]
    #v(1.5cm)
  ],
  [
    *5. Importer Details* \
    #v(0.5mm)
    #text(fill: gray.darken(30%), size: 7pt)[Name, Address (inc. country), Tel, Email (If known):]
    #v(1.5cm)
  ],
)

#v(-11pt) // Tightens the visual connection between tables

// --- SECTION 6-7: GOODS DESCRIPTION ---
#table(
  columns: (2.5fr, 1.2fr, 1.2fr, 1.1fr),
  inset: 6pt,
  align: (left + top, center + horizon, center + horizon, center + horizon),

  [*6. Description of Good(s)* \ #text(size: 7pt, weight: "regular", fill: gray.darken(30%))[Sufficient to identify the shipment]],
  [*6. HS Tariff \ Classification* \ #text(size: 7pt, weight: "regular", fill: gray.darken(30%))[(6-digit level)]],
  [*7. Origin \ Criterion* \ #text(size: 7pt, weight: "regular", fill: gray.darken(30%))[As per rules of origin]],
  [*6(b). Invoice No.* \ #text(size: 7pt, weight: "regular", fill: gray.darken(30%))[(If known, single shipment)]],

  // Item Row 1 (Blank for manual entry, or populate directly)
  [ \ \ \ \ ], [ ], [ ], [ ],
  // Item Row 2
  [ \ \ \ \ ], [ ], [ ], [ ],
  // Item Row 3
  [ \ \ \ \ ], [ ], [ ], [ ],
)

#v(-11pt)

// --- SECTION 9: DECLARATION & SIGNATURE ---
#table(
  columns: 1fr,
  inset: 10pt,
  [
    *9. Authorised Signature and Date* \
    #v(1mm)
    #text(size: 8pt)[
      I certify that the goods described in this document qualify as originating and the information contained in this document is true and accurate. I assume responsibility for proving such representations and agree to maintain and present upon request or to make available during a verification visit, documentation necessary to support this certification.
    ]

    #v(1.2cm)

    #grid(
      columns: (1.5fr, 1fr),
      gutter: 30pt,
      [
        #line(length: 100%, stroke: 0.5pt)
        #v(-1mm) #text(size: 7.5pt)[Authorized Signature]
      ],
      [
        #line(length: 100%, stroke: 0.5pt)
        #v(-1mm) #text(size: 7.5pt)[Date (DD/MM/YYYY)]
      ],
    )

    #v(4mm)

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
