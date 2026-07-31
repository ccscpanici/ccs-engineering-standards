#import "../styles/colors.typ": *

#let flow-node(label) = box(
  width: 1.35in,
  height: 0.65in,
  fill: rgb("#f7f7f7"),
  stroke: 0.8pt + ccs-orange,
  radius: 3pt,
  inset: 8pt,
)[
  #align(center + horizon)[
    #text(
      weight: "bold",
      fill: ccs-dark,
    )[#label]
  ]
]

#let flow-arrow() = align(center + horizon)[
  #text(
    size: 24pt,
    weight: "bold",
    fill: ccs-orange,
  )[→]
]

#let report-flow(
  stages,
  caption: none,
) = [
  #align(center)[
    #grid(
      columns: (1fr,) * (stages.len() * 2 - 1),
      column-gutter: 8pt,

      ..stages
        .enumerate()
        .map(pair => {
          let index = pair.first()
          let stage = pair.last()

          if index == stages.len() - 1 {
            (flow-node(stage),)
          } else {
            (flow-node(stage), flow-arrow())
          }
        })
        .flatten(),
    )
  ]

  #if caption != none {
    v(6pt)
    align(center)[
      #text(
        size: 9pt,
        style: "italic",
        fill: ccs-dark,
      )[#caption]
    ]
  }
]

#let vertical-flow(
  stages,
  caption: none,
) = [
  #align(center)[
    #stack(
      dir: ttb,
      spacing: 8pt,

      ..stages
        .enumerate()
        .map(pair => {
          let index = pair.first()
          let stage = pair.last()

          if index == stages.len() - 1 {
            (flow-node(stage),)
          } else {
            (
              flow-node(stage),
              [
                #align(center)[
                  #text(
                    size: 22pt,
                    weight: "bold",
                    fill: ccs-orange,
                  )[↓]
                ]
              ],
            )
          }
        })
        .flatten(),
    )
  ]

  #if caption != none {
    v(6pt)

    align(center)[
      #text(
        size: 9pt,
        style: "italic",
        fill: ccs-dark,
      )[#caption]
    ]
  }
]