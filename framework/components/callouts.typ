#import "../styles/colors.typ": *
#import "../styles/icons.typ": *

#let callout(
  title,
  body,
  fill: ccs-light,
  border: ccs-orange,
  title-color: ccs-dark,
) = block(
  width: 100%,
  fill: fill,
  stroke: 0.8pt + border,
  radius: 3pt,
  inset: 10pt,
)[
  #text(
    weight: "bold",
    fill: title-color,
  )[#title]

  #v(4pt)

  #body
]

#let note(body) = callout(
  note-icon + "  NOTE",
  body,
)

#let warning(body) = callout(
  warning-icon + "  WARNING",
  body,
  fill: rgb("#fff2e8"),
  border: ccs-orange,
)

#let tip(body) = callout(
  tip-icon + "  ENGINEERING TIP",
  body,
  fill: rgb("#f3f5f6"),
  border: ccs-dark,
)