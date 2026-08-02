#import "../styles/colors.typ": *

#let flow-node(label) = box(
  width: 1.35in,
  height: 0.80in,
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

#let flow-arrow() = [
  #align(center + horizon)[
    #text(
      size: 24pt,
      weight: "bold",
      fill: ccs-orange,
    )[→]
  ]
]

#let report-flow(stages) = align(center)[
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

#let vertical-flow(stages) = align(center)[
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