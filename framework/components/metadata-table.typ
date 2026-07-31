#import "../styles/colors.typ": *

#let metadata-table(document) = [
  #table(
    columns: (1.5in, 1fr),
    inset: 8pt,
    stroke: 0.5pt + rgb("#d9dde1"),

    table.cell(fill: ccs-light)[#strong[Document Title]],
    [#document.title],

    table.cell(fill: ccs-light)[#strong[Document Number]],
    [#document.document],

    table.cell(fill: ccs-light)[#strong[Revision]],
    [#document.revision],

    table.cell(fill: ccs-light)[#strong[Date]],
    [#document.date],

    table.cell(fill: ccs-light)[#strong[Prepared By]],
    [#document.author],

    table.cell(fill: ccs-light)[#strong[Customer]],
    [#document.customer],

    table.cell(fill: ccs-light)[#strong[Project]],
    [#document.project],

    table.cell(fill: ccs-light)[#strong[Facility]],
    [#document.facility],
  )
]