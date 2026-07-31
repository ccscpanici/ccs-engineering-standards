#import "diagrams.typ": report-flow

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