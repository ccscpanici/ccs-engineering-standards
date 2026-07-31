#import "../../framework/theme.typ": *
#import "metadata.typ": document

#show: ccs-standard

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

#include "sections/01-introduction.typ"
#include "sections/02-project-overview.typ"
#include "sections/03-report-inventory.typ"
#include "sections/04-report-specification.typ"
#include "sections/05-data-sources.typ"
#include "sections/06-qa-workflow.typ"
#include "sections/07-appendix.typ"