#import "../styles/colors.typ": *

#let revision-history(document) = [
  #table(
    columns: (0.8in, 1.1in, 1.25in, 1fr),
    inset: 7pt,
    stroke: 0.5pt + rgb("#d9dde1"),

    table.header(
      table.cell(fill: ccs-orange)[
        #text(fill: white, weight: "bold")[Revision]
      ],
      table.cell(fill: ccs-orange)[
        #text(fill: white, weight: "bold")[Date]
      ],
      table.cell(fill: ccs-orange)[
        #text(fill: white, weight: "bold")[Author]
      ],
      table.cell(fill: ccs-orange)[
        #text(fill: white, weight: "bold")[Description]
      ],
    ),

    [#document.revision],
    [#document.date],
    [#document.author],
    [Initial release],
  )
]