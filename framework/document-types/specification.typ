#import "../theme.typ": *
#import "../layouts/cover.typ": cover
#import "../layouts/document-info.typ": document-info

#let specification(document, body) = [
  #show: content => ccs-standard(document, content)

  #cover(document)

  #pagebreak()

  #document-info(document)

  #pagebreak()

  = Table of Contents

  #outline(
    title: none,
    indent: auto,
  )

  #pagebreak()

  #body
]