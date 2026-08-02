#import "../styles/colors.typ": *

#let state-node(
  label,
  width: 1.65in,
) = box(
  width: width,
  height: 0.72in,
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

#let transition-arrow(
  arrow,
  label: none,
) = [
  #align(center)[
    #text(
      size: 20pt,
      weight: "bold",
      fill: ccs-orange,
    )[#arrow]

    #if label != none {
      v(2pt)

      text(
        size: 8.5pt,
        style: "italic",
        fill: ccs-dark,
      )[#label]
    }
  ]
]

#let state-diagram(
  pending: "QA Review Pending",
  hold: "QA Hold",
  approved: "QA Approved",

  review-to-hold: "Place report on hold",
  review-to-approved: "Approve report",
  hold-to-review: "Return for QA review",
  hold-to-approved: "Approve after corrective action",
) = block(
  width: 100%,
  breakable: false,
)[
  #align(center)[
    #stack(
      dir: ttb,
      spacing: 9pt,

      state-node(pending),

      grid(
        columns: (1fr, 1fr),
        gutter: 0.55in,

        transition-arrow(
          "↙",
          label: review-to-hold,
        ),

        transition-arrow(
          "↘",
          label: review-to-approved,
        ),
      ),

      grid(
        columns: (1.65in, 1.25in, 1.65in),
        gutter: 10pt,

        state-node(hold),

        transition-arrow(
          "→",
          label: hold-to-approved,
        ),

        state-node(approved),
      ),

      grid(
        columns: (1.65in, 1.25in, 1.65in),
        gutter: 10pt,

        transition-arrow(
          "↖",
          label: hold-to-review,
        ),

        [],
        [],
      ),
    )
  ]
]