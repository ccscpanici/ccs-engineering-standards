#import "../../framework/framework.typ": *
#import "sections/01-introduction.typ": introduction
#import "sections/02-project-overview.typ": project-overview
#import "sections/03-report-inventory.typ": report-inventory
#import "sections/04-report-specification.typ": report-specifications
#import "sections/05-data-sources.typ": data-sources
#import "sections/06-qa-workflow.typ": qa-workflow
#import "sections/07-appendix.typ": appendix
#import "metadata.typ": document

#show: body => workbook(document, body)

#introduction()
#project-overview()
#report-inventory()
#report-specifications()
#data-sources()
#qa-workflow()
#appendix()