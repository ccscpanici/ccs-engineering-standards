#import "../styles/colors.typ": *
#import "flow.typ": flow-node

#let qa-workflow() = [
  #align(center)[
    #stack(
      dir: ttb,
      spacing: 10pt,

      flow-node("QA Review Pending"),

      [
        #align(center)[
          #text(
            size: 22pt,
            weight: "bold",
            fill: ccs-orange,
          )[↙      ↘]
        ]
      ],

      grid(
        columns: (1fr, 1fr),
        gutter: 0.6in,

        flow-node("QA Hold"),
        flow-node("QA Approved"),
      ),

      [
        #align(center)[
          #text(
            size: 9pt,
            style: "italic",
            fill: ccs-dark,
          )[Corrective actions completed]
        ]
      ],

      [
        #align(center)[
          #text(
            size: 22pt,
            weight: "bold",
            fill: ccs-orange,
          )[↙      ↘]
        ]
      ],

      grid(
        columns: (1fr, 1fr),
        gutter: 0.6in,

        flow-node("QA Review Pending"),
        flow-node("QA Approved"),
      ),
    )
  ]
]