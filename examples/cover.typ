#import "../framework/colors.typ": *
#import "../framework/page.typ"
#import "../framework/typography.typ"

#align(center)[
  #v(0.25in)

  #text(
    size: 15pt,
    weight: "bold",
    tracking: 1.5pt,
    fill: ccs-dark,
  )[COMPLETE CONTROL SOLUTIONS]

  #v(0.15in)

  #image(
    "../assets/logos/ccs-logo.svg",
    width: 2.8in,
  )

  #v(0.4in)

  #text(
    size: 28pt,
    weight: 600,
    fill: ccs-dark,
  )[REPORTING REQUIREMENTS]

  #text(
    size: 28pt,
    weight: "bold",
    fill: ccs-dark,
  )[WORKBOOK]

  #v(0.22in)

  #text(
    size: 13pt,
    weight: "semibold",
    fill: ccs-orange,
  )[Industrial Automation]

  #v(0.08in)

  #text(
    size: 11pt,
    fill: ccs-dark,
  )[PLC • SCADA • SQL]

  #v(0.45in)
]

#block(
  fill: ccs-light,
  radius: 3pt,
  inset: 0pt,
)[
  #table(
    columns: (1.25in, 1fr),
    inset: 8pt,
    stroke: none,

    table.cell(
      colspan: 2,
      fill: ccs-orange,
      inset: 7pt,
    )[
      #text(
        fill: white,
        weight: "bold",
        size: 11pt,
      )[PROJECT INFORMATION]
    ],

    [#strong[Customer]],
    [Nasonville Dairy],

    [#strong[Project]],
    [CIP / HTST / Silo Reporting],

    [#strong[Facility]],
    [Nasonville, WI],

    [#strong[Prepared By]],
    [C. Panici],

    [#strong[Date]],
    [July 31, 2026],

    [#strong[Revision]],
    [1.0],
  )
]

#v(1fr)

#line(
  length: 100%,
  stroke: 0.8pt + ccs-orange,
)

#v(5pt)

#grid(
  columns: (1fr, auto),
  [
    #text(
      size: 9pt,
      weight: "bold",
      fill: ccs-dark,
    )[CCS Engineering Standards]
  ],
  [
    #text(
      size: 9pt,
      weight: "bold",
      fill: ccs-dark,
    )[CCS-STD-RPT-001]
  ],
)