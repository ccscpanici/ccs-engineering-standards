#import "../framework/theme.typ": *

#let metadata = (
  title: "Reporting Requirements Workbook",
  document: "CCS-STD-RPT-001",
  customer: "Nasonville Dairy",
  project: "CIP / HTST / Silo Reporting",
  facility: "Nasonville, WI",
  author: "Chris Panici",
  revision: "1.0",
  date: "July 31, 2026",
)

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
      weight: "bold",
      fill: ccs-dark,
    )[#upper(metadata.title)]

  #v(0.22in)

  #text(
    size: 13pt,
    weight: 600,
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
    [#metadata.customer],

    [#strong[Project]],
    [#metadata.project],

    [#strong[Facility]],
    [#metadata.facility],

    [#strong[Prepared By]],
    [#metadata.author],

    [#strong[Date]],
    [#metadata.date],

    [#strong[Revision]],
    [#metadata.revision],
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
    )[#metadata.document]
  ],
)