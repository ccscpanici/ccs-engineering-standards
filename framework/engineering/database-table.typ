#import "../styles/colors.typ": *

#let database-table(
  name: "Database Table",
  columns: (),
) = table(
  columns: (1.6in, 1.2in, 1fr),
  inset: 7pt,
  stroke: 0.5pt + luma(210),

  table.cell(
    colspan: 3,
    fill: ccs-orange,
    align: center,
  )[
    #text(
      fill: white,
      weight: "bold",
    )[#name]
  ],

  table.header(
    table.cell(fill: luma(240))[
      #strong[Column]
    ],
    table.cell(fill: luma(240))[
      #strong[Data Type]
    ],
    table.cell(fill: luma(240))[
      #strong[Description]
    ],
  ),

  ..columns
    .map(column => (
      [#column.at(0)],
      [#column.at(1)],
      [#column.at(2)],
    ))
    .flatten(),
)