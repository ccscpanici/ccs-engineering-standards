#import "../../framework/framework.typ": *
#import "sections/01-introduction.typ": introduction
#import "sections/02-system-overview.typ": system-overview
#import "sections/03-technical-architecture.typ": techical-architecture
#import "sections/04-plc-interface.typ": plc-interface
#import "sections/05-ignition-design.typ": ignition-design
#import "sections/06-database-design.typ": database-design
#import "sections/07-report-design.typ": report-design
#import "sections/08-qa-workflow.typ": qa-workflow
#import "sections/09-security.typ": security
#import "sections/10-acceptance-criteria.typ": acceptance-criteria
#import "sections/11-appendix.typ": appendix

#import "metadata.typ": document

#show: body => specification(document, body)

#introduction()
#system-overview()
#techical-architecture()
#plc-interface()
#ignition-design()
#database-design()
#report-design()
#qa-workflow()
#security()
#acceptance-criteria()
#appendix()