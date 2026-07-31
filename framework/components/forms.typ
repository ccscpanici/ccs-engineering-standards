#let write-space(height: 1.25in) = box(
  width: 100%,
  height: height,
  stroke: 0.5pt,
  inset: 8pt,
)[]

#let field(
  label,
  height: 0.45in,
) = [
  #text(weight: "bold")[#label]

  #v(4pt)

  #box(
    width: 100%,
    height: height,
    stroke: 0.5pt,
    inset: 8pt,
  )[]
]

#let signature-line(label) = [
  #v(0.2in)

  #line(
    length: 100%,
    stroke: 0.6pt,
  )

  #v(3pt)

  #text(
    size: 9pt,
  )[#label]
]