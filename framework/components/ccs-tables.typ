#import "../styles/colors.typ": *

#let worksheet-table(columns, header, rows) = {
  table(
    columns: columns,
    inset: 7pt,
    stroke: 0.5pt + rgb("#d8d8d8"),

    table.header(
      ..header.map(cell =>
        table.cell(
          fill: ccs-orange,
          inset: 7pt,
        )[
          #text(
            fill: white,
            weight: "bold",
          )[#cell]
        ]
      )
    ),

    ..rows
      .map(row => row.map(cell => [#cell]))
      .flatten(),
  )
}