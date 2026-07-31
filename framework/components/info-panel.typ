#import "../styles/colors.typ": *

#let info-panel(
  title,
  fields,
  description: none,
  label-width: 1.6in,
) = table(
  columns: (label-width, 1fr),
  inset: 8pt,
  stroke: 0.5pt + luma(210),

  table.cell(
    colspan: 2,
    fill: ccs-orange,
    align: center,
  )[
    #text(
      fill: white,
      weight: "bold",
    )[#title]
  ],

  ..fields
    .map(field => (
      [#strong[#field.at(0)]],
      [#field.at(1)],
    ))
    .flatten(),

  ..if description == none {
    ()
  } else {
    (
      table.cell(
        colspan: 2,
        fill: luma(245),
      )[
        #description
      ],
    )
  },
)