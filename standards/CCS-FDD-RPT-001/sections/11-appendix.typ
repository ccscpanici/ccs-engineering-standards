
#import "../../../framework/components/forms.typ": write-space
#import "../../../framework/components/checklist.typ": checklist
= Appendix

== Acronyms

#table(
  columns: (1.4in, 1fr),
  inset: 7pt,
  stroke: 0.5pt,

  table.header(
    [*Acronym*],
    [*Definition*],
  ),

  [PLC], [Programmable Logic Controller],
  [HMI], [Human Machine Interface],
  [SCADA], [Supervisory Control and Data Acquisition],
  [SQL], [Structured Query Language],
  [MES], [Manufacturing Execution System],
  [ERP], [Enterprise Resource Planning],
  [LIMS], [Laboratory Information Management System],
  [QA], [Quality Assurance],
  [CIP], [Clean-In-Place],
  [HTST], [High Temperature Short Time],
  [FDD], [Functional Design Document],
)

== Referenced Documents

#table(
  columns: (2.8in, 1.3in, 1fr),
  inset: 7pt,
  stroke: 0.5pt,

  table.header(
    [*Document*],
    [*Revision*],
    [*Purpose*],
  ),

  [CCS-WKB-RPT-001], [Current], [Reporting Requirements Workbook],
  [CCS-FDD-RPT-001], [Current], [Reporting Functional Design Document],
  [Factory Acceptance Test], [TBD], [Factory verification],
  [Site Acceptance Test], [TBD], [Site verification],
)

== Design Assumptions

The following assumptions were made during preparation of this document.

#write-space(height: 1.5in)

== Future Enhancements

Potential future improvements include:

#checklist(
  (
    "Electronic Signatures",
    "Automated Report Distribution",
    "Cloud Report Archive",
    "Power BI Integration",
    "MES Integration",
    "ERP Integration",
    "Mobile Report Review",
    "Advanced Analytics",
  ),
  columns: 2,
)

== Open Design Decisions

The following items remain subject to customer review and approval.

#write-space(height: 2in)

== Notes

#write-space(height: 2in)