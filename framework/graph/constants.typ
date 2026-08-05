#import "../styles/colors.typ": *

// One CeTZ coordinate unit equals one-quarter inch.
//
// 4 units  = 1 inch
// 8 units  = 2 inches
// 12 units = 3 inches
#let graph-unit = 0.25in

// Default node dimensions.
#let graph-node-width = 2.50in
#let graph-node-height = 0.75in
#let graph-node-radius = 3pt

// Default line dimensions.
#let graph-node-stroke-width = 0.8pt
#let graph-edge-stroke-width = 1.2pt

// Default node appearance.
#let graph-node-fill = rgb("#f7f7f7")

#let graph-node-stroke = (
  paint: ccs-orange,
  thickness: graph-node-stroke-width,
)

// Default edge appearance.
#let graph-edge-stroke = (
  paint: ccs-orange,
  thickness: graph-edge-stroke-width,
)

// Default arrowhead.
#let graph-edge-mark = (
  end: "stealth",
  fill: ccs-orange,
  transform-shape: false,
)