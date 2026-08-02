#import "../framework/framework.typ": *

#let document = (
  title: "Framework Component Showcase",
  document: "CCS-FWK-DEMO",
  customer: "Complete Control Solutions",
  project: "Engineering Publishing Framework",
  facility: "Appleton, WI",
  author: "Chris Panici",
  revision: "0.5.0-dev",
  date: "August 2nd, 2026",

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

#outline()

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

#field("Customer")

#v(0.2in)

#field("Project")

#v(0.2in)

#write-space(height: 1.5in)

#v(0.2in)

#signature-line("Customer Representative")

#pagebreak()

= Checklists

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

#pagebreak()

= Engineering Components

== Engineering Diagrams

#figure(
  reporting-system(),
  caption: [High-level reporting system architecture],
) <showcase-reporting-architecture>

The reporting architecture is shown in
@showcase-reporting-architecture.

== QA Workflow

#figure(
  qa-workflow(),
  caption: [QA report review workflow],
) <showcase-qa-workflow>

The QA workflow is shown in
@showcase-qa-workflow.

== Controller Information

#controller(
  name: "Primary PLC",
  model: "1756-L85E",
  firmware: "38.011",
  network: "EtherNet/IP",
  ip: "10.0.1.10",

  description: [
    Primary process controller responsible for report triggering,
    production-state monitoring, and communications with Ignition.
  ],
)

== Ignition Gateway

#ignition-gateway(
  name: "Primary Gateway",
  version: "8.3.0",
  redundancy: "Enabled",
  tag-provider: "Production",
  database: "Reporting",

  description: [
    Primary Ignition gateway responsible for data collection,
    transaction groups, report generation, and client services.
  ],
)

== SQL Server

#sql-server(
  name: "Reporting Database",
  version: "SQL Server 2022",
  database: "Reporting",
  authentication: "Windows Authentication",
  backup: "Nightly",

  description: [
    Stores production, QA, audit trail, and reporting information.
    Provides historical data for reporting services.
  ],
)

== Report Definition

#report-definition(
  name: "CIP Report",
  id: "RPT-002",
  process-area: "CIP System",
  trigger: "CIP Cycle Complete",
  frequency: "Per Cycle",
  owner: "Quality Assurance",
  approval: "QA Approval Required",
  retention: "7 Years",

  description: [
    Records CIP cycle timing, step progression, process values,
    operator events, QA annotations, and final approval status.
  ],
)

== Database Table

#figure(
  database-table(
    name: "QA_APPROVAL",

    columns: (
      (
        "ApprovalID",
        "BIGINT",
        "Primary key for the approval record.",
      ),
      (
        "ReportID",
        "BIGINT",
        "Foreign key referencing the associated report.",
      ),
      (
        "ApprovedBy",
        "VARCHAR(100)",
        "Authenticated user who performed the approval.",
      ),
      (
        "ApprovedAt",
        "DATETIME2",
        "Date and time the approval was recorded.",
      ),
      (
        "ApprovalStatus",
        "INT",
        "QA status recorded for the report.",
      ),
      (
        "Comments",
        "VARCHAR(MAX)",
        "Optional approval comments.",
      ),
    ),
  ),

  kind: table,
  caption: [QA approval table definition],
) <showcase-qa-approval-table>

The schema example is shown in @showcase-qa-approval-table.

== Network Switch

#network-switch(
  name: "Reporting Network Switch",
  manufacturer: "Rockwell Automation",
  model: "Stratix 5700",
  firmware: "Current approved revision",
  ip: "10.0.1.50",
  network: "Plant Controls Network",
  vlan: "Production",
  managed: "Yes",

  description: [
    Managed industrial Ethernet switch providing connectivity between
    the PLC, Ignition Gateway, SQL Server, and supporting infrastructure.
  ],
)

== Historian

#historian(
  name: "Production Historian",
  platform: "Ignition Tag Historian",
  version: "8.3",
  tag-provider: "Production",
  retention: "7 Years",
  storage: "Microsoft SQL Server",
  redundancy: "Gateway Redundancy",

  description: [
    Stores historical process values used for troubleshooting,
    trend review, production analysis, and supplemental report data.
  ],
)

== Generic Information Panel

#info-panel(
  "Reporting Server",

  (
    ("Manufacturer", "Dell"),
    ("Model", "PowerEdge"),
    ("Operating System", "Windows Server"),
    ("Purpose", "Ignition and reporting services"),
  ),

  description: [
    Example of the generic information panel for an engineering object
    that does not need a dedicated wrapper.
  ],
)

= Cross reference

See @showcase-reporting-architecture.

See @showcase-qa-workflow.

See @showcase-qa-approval-table.