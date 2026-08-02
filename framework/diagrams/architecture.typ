#import "flow.typ": report-flow

#let reporting-system(
  controller: "PLC Control System",
  gateway: "Ignition Gateway",
  database: "SQL Server",
  reporting: "Reporting Services",
) = {
  report-flow(
    (
      controller,
      gateway,
      database,
      reporting,
    ),
  )
}