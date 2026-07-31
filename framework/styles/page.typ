#import "colors.typ": *

#let apply-page-style(document, body) = {
  set page(
    paper: "us-letter",
    margin: (
      top: 0.78in,
      bottom: 0.72in,
      left: 0.7in,
      right: 0.7in,
    ),

    header: context {
      if counter(page).get().first() > 1 {
        block[
          #grid(
            columns: (1fr, auto),
            align: (left, right),

            [
              #text(
                size: 8.5pt,
                weight: "bold",
                fill: ccs-dark,
              )[
                #document.title
              ]
            ],

            [
              #text(
                size: 8.5pt,
                fill: ccs-dark,
              )[
                #document.document · Rev. #document.revision
              ]
            ],
          )

          #v(4pt)

          #line(
            length: 100%,
            stroke: 0.7pt + ccs-orange,
          )
        ]
      }
    },

    footer: context {
      if counter(page).get().first() > 1 {
        block[
          #line(
            length: 100%,
            stroke: 0.7pt + ccs-orange,
          )

          #v(4pt)

          #grid(
            columns: (1fr, auto),
            align: (left, right),

            [
              #text(
                size: 8pt,
                fill: ccs-dark,
              )[
                Complete Control Solutions
              ]
            ],

            [
              #text(
                size: 8pt,
                fill: ccs-dark,
              )[
                Page #counter(page).display() of #context counter(page).final().first()
              ]
            ],
          )
        ]
      }
    },
  )

  body
}