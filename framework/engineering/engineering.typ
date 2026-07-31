#import "../components/diagrams.typ": report-flow, vertical-flow

#let reporting-system(
  controller: "PLC Control System",
  gateway: "Ignition Gateway",
  database: "SQL Server",
  reporting: "Reporting Services",
  caption: "High-level reporting system architecture",
) = {
  report-flow(
    (
      controller,
      gateway,
      database,
      reporting,
    ),
    caption: caption,
  )
}

#let qa-workflow(
  pending: "QA Review Pending",
  hold: "QA Hold",
  approved: "QA Approved",
  caption: "QA report review workflow",
) = {
  vertical-flow(
    (
      pending,
      hold,
      approved,
    ),
    caption: caption,
  )
}