#let checkbox(label, checked: false) = {
  box(
    width: 10pt,
    height: 10pt,
    stroke: 0.7pt,
    inset: 0pt,
  )[
    #if checked {
      align(center + horizon)[
        #text(size: 8pt, weight: "bold")[✓]
      ]
    }
  ]

  h(6pt)

  label
}

#let checklist(
  items,
  columns: 1,
  gutter: 0.35in,
) = {
  let entries = items.map(item => {
    if type(item) == str {
      [#checkbox(item)]
    } else {
      [#checkbox(item.label, checked: item.checked)]
    }
  })

  grid(
    columns: (1fr,) * columns,
    gutter: gutter,
    row-gutter: 8pt,
    ..entries,
  )
}