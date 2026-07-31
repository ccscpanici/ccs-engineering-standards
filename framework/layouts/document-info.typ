#import "../components/metadata-table.typ": metadata-table
#import "../components/revision-history.typ": revision-history

#let document-info(document) = [
  #heading(
    level: 1,
    outlined: false,
  )[Document Information]

  #v(0.2in)

  #metadata-table(document)

  #v(0.35in)

  #heading(
    level: 2,
    outlined: false,
  )[Revision History]

  #v(0.1in)

  #revision-history(document)
]