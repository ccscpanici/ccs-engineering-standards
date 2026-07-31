#import "../framework/framework.typ": *

#let document = (
  title: "Framework Component Showcase",
  document: "CCS-FWK-DEMO",
  customer: "Complete Control Solutions",
  project: "Engineering Publishing Framework",
  facility: "Appleton, WI",
  author: "Chris Panici",
  revision: "0.3.1",
  date: "July 31, 2026",

  revisions: (
    (
      revision: "0.3.1",
      date: "July 31, 2026",
      author: "Chris Panici",
      description: "Framework component showcase",
    ),
  ),
)

#show: body => ccs-standard(document, body)
= CCS Engineering Publishing Framework

This document demonstrates every reusable framework component.

#pagebreak()

= Callouts

#note[
This is a standard engineering note.
]

#warning[
Changing approved requirements may require additional engineering effort.
]

#tip[
Attach existing reports whenever possible.
]

#pagebreak()

= Forms

#import "../framework/components/forms.typ": *

#field("Customer")

#v(0.2in)

#field("Project")

#v(0.2in)

#write-space(height: 1.5in)

#v(0.2in)

#signature-line("Customer Representative")

#pagebreak()

= Checklists

#import "../framework/components/checklist.typ": *

#checklist(
  (
    "PLC",
    "SCADA",
    "Historian",
    "SQL",
    "MES",
    "ERP",
    "LIMS",
    "QA",
  ),
  columns: 2,
)

#pagebreak()

= Tables

#import "../framework/components/ccs-tables.typ": *

#worksheet-table(
  (1.0in, 2.2in, 1.2in, 1fr),

  (
    "ID",
    "Description",
    "Status",
    "Notes",
  ),

  (
    ("001", "Pump Report", "", ""),
    ("002", "Batch Report", "", ""),
    ("003", "Alarm Report", "", ""),
  ),
)
