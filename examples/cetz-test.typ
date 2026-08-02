#import "@preview/cetz:0.5.2": canvas, draw

#canvas({
  import draw: line, rect, content

  rect(
    (0, 0),
    (2.4, 0.9),
    radius: 3pt,
    fill: rgb("#f7f7f7"),
    stroke: (paint: rgb("#ff7f11"), thickness: 0.8pt),
  )

  content(
    (1.2, 0.45),
    [QA Review Pending],
  )

  line(
    (2.4, 0.45),
    (4.2, 0.45),
    stroke: (paint: rgb("#ff7f11"), thickness: 1.2pt),
    mark: (
      end: "stealth",
      fill: rgb("#ff7f11"),
    ),
  )

  rect(
    (4.2, 0),
    (6.6, 0.9),
    radius: 3pt,
    fill: rgb("#f7f7f7"),
    stroke: (paint: rgb("#ff7f11"), thickness: 0.8pt),
  )

  content(
    (5.4, 0.45),
    [QA Approved],
  )
})