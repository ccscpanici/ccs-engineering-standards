#import "../../../framework/components/forms.typ": write-space
= Data Sources

This section identifies the systems, equipment, databases, and manual processes that provide information to the reporting solution.

== Data Source Inventory

#table(
  columns: (1.5in, 1.2in, 2.2in, 1fr),
  inset: 7pt,
  stroke: 0.5pt,

  table.header(
    [*Data Source*],
    [*Type*],
    [*Description*],
    [*Reports Used By*],
  ),

  [], [PLC], [], [],
  [], [SCADA], [], [],
  [], [Historian], [], [],
  [], [SQL Database], [], [],
  [], [ERP], [], [],
  [], [MES], [], [],
  [], [LIMS], [], [],
  [], [Manual Entry], [], [],
  [], [External System], [], [],
)

== PLC Systems

List all PLCs that will provide data for reporting.

#table(
  columns: (1.4in, 1.3in, 1.2in, 1.5in, 1fr),
  inset: 7pt,
  stroke: 0.5pt,

  table.header(
    [*PLC Name*],
    [*Manufacturer*],
    [*Model*],
    [*Network*],
    [*Notes*],
  ),

  [], [], [], [], [],
  [], [], [], [], [],
  [], [], [], [], [],
  [], [], [], [], [],
)

== SCADA and HMI Systems

#table(
  columns: (1.5in, 1.2in, 1.4in, 1fr),
  inset: 7pt,
  stroke: 0.5pt,

  table.header(
    [*System*],
    [*Version*],
    [*Vendor*],
    [*Purpose*],
  ),

  [], [], [], [],
  [], [], [], [],
  [], [], [], [],
)

== Database Systems

#table(
  columns: (1.6in, 1.3in, 2in, 1fr),
  inset: 7pt,
  stroke: 0.5pt,

  table.header(
    [*Database*],
    [*Type*],
    [*Purpose*],
    [*Existing / New*],
  ),

  [], [Microsoft SQL Server], [], [],
  [], [], [], [],
  [], [], [], [],
)

== External Systems

Will the reporting system exchange information with other systems?

- [ ] ERP
- [ ] MES
- [ ] LIMS
- [ ] CMMS
- [ ] Accounting system
- [ ] SharePoint
- [ ] Cloud service
- [ ] REST API
- [ ] OPC UA
- [ ] MQTT
- [ ] CSV import or export
- [ ] Microsoft Excel
- [ ] Other

== Manual Data Collection

Will operators or other personnel manually enter information?

- [ ] Yes
- [ ] No

Examples may include:

- Product codes
- Lot numbers
- Batch numbers
- QA measurements
- Laboratory results
- Operator comments
- Downtime reasons
- Inspection results

Describe the required manual data entry.

#write-space()

== Data Quality

Identify any known issues with existing data.

- [ ] Missing values
- [ ] Duplicate records
- [ ] Inconsistent naming
- [ ] Manual calculations
- [ ] Paper records
- [ ] Time synchronization issues
- [ ] Data-entry errors
- [ ] Unknown

Describe any known concerns.

#write-space()

== Time Synchronization

Is a network time protocol server available?

- [ ] Yes
- [ ] No
- [ ] Unknown

NTP server name or IP address:

#write-space(height: 0.45in)

Should the PLC controllers, Ignition servers, database servers, and operator workstations synchronize to the same time source?

- [ ] Yes
- [ ] No

Should time synchronization failures generate an alarm or notification?

- [ ] Yes
- [ ] No

== Historical Data

Should historical information be imported into the new reporting system?

- [ ] Existing SQL database
- [ ] Historian
- [ ] Archived reports
- [ ] Microsoft Excel files
- [ ] Paper records
- [ ] No historical data required

Describe the scope of any historical-data migration.

#write-space()

== Engineering Notes

#write-space(height: 1.5in)