#import "../../framework/framework.typ": *
#import "sections/01-introduction.typ": introduction
#import "metadata.typ": document

#show: body => specification(document, body)

#introduction()

#include "sections/02-system-overview.typ"
#include "sections/03-technical-architecture.typ"
#include "sections/04-plc-interface.typ"
#include "sections/05-ignition-design.typ"
#include "sections/06-database-design.typ"
#include "sections/07-report-design.typ"
#include "sections/08-qa-workflow.typ"
#include "sections/09-security.typ"
#include "sections/10-acceptance-criteria.typ"
#include "sections/11-appendix.typ"