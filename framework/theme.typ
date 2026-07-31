#import "styles/colors.typ": *
#import "styles/page.typ": *
#import "styles/typography.typ"

#import "components/ccs-tables.typ": *
#import "components/callouts.typ": *
#import "components/section.typ": *
#import "components/forms.typ": *

#import "layouts/cover.typ": *
#import "layouts/document-info.typ": *

#let ccs-standard(document, body) = {
  show heading.where(level: 1): it => {
    set text(
      size: 22pt,
      weight: "bold",
      fill: ccs-orange,
    )
    it
  }

  show heading.where(level: 2): it => {
    set text(
      size: 16pt,
      weight: "bold",
      fill: ccs-orange,
    )
    it
  }

  show heading.where(level: 3): it => {
    set text(
      size: 13pt,
      weight: "bold",
      fill: ccs-orange,
    )
    it
  }

  apply-page-style(document, body)
}