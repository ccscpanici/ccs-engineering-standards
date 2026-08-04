#import "@preview/cetz:0.5.2"
#import "../styles/colors.typ": *
#import "constants.typ": *

// ------------------------------------------------------------
// Graph node
//
// Must be called from inside a CeTZ canvas.
// ------------------------------------------------------------

#let graph-node(
  name,
  position,
  label,
  width: graph-node-width,
  height: graph-node-height,
  fill: graph-node-fill,
  stroke: graph-node-stroke,
) = {
  let x = position.at(0)
  let y = position.at(1)

  // Convert Typst physical dimensions into CeTZ coordinate units.
  let width-units = width / graph-unit
  let height-units = height / graph-unit

  cetz.draw.rect(
    (
      x - width-units / 2,
      y - height-units / 2,
    ),
    (
      x + width-units / 2,
      y + height-units / 2,
    ),
    name: name,
    radius: graph-node-radius,
    fill: fill,
    stroke: stroke,
  )

  cetz.draw.content(
    position,
    box(
      width: width - 12pt,
      height: height - 8pt,
      inset: 4pt,
    )[
      #align(center + horizon)[
        #text(
          weight: "bold",
          fill: ccs-dark,
        )[
          #label
        ]
      ]
    ],
    anchor: "center",
  )
}

// ------------------------------------------------------------
// Edge label
// ------------------------------------------------------------

#let graph-label(
  position,
  label,
  anchor: "center",
  width: 1.75in,
  color: ccs-dark,
  background: white,
) = {
  cetz.draw.content(
    position,
    box(
      width: width,
      fill: background,
      inset: (x: 4pt, y: 2pt),
    )[
      #align(center)[
        #text(
          size: 8.5pt,
          style: "italic",
          fill: color,
        )[
          #label
        ]
      ]
    ],
    anchor: anchor,
  )
}

// ------------------------------------------------------------
// Graph edge
//
// A straight edge:
//
//   graph-edge("node-a.east", "node-b.west")
//
// A routed edge:
//
//   graph-edge(
//     "node-a.west",
//     "node-b.west",
//     via: ((0, 2), (0, 10)),
//   )
// ------------------------------------------------------------

#let graph-edge(
  start,
  end,
  via: (),
  label: none,
  label-position: none,
  label-anchor: "center",
  label-width: 1.75in,
  label-color: ccs-dark,
  stroke: graph-edge-stroke,
  mark: graph-edge-mark,
) = {
  let points = (start,) + via + (end,)

  cetz.draw.line(
    ..points,
    stroke: stroke,
    mark: mark,
  )

  if label != none and label-position != none {
    graph-label(
      label-position,
      label,
      anchor: label-anchor,
      width: label-width,
      color: label-color,
    )
  }
}