#import "../../../framework/framework.typ": write-space, field, signature-line, checklist

#let appendix() = [
    
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
    [HMI], [Human-Machine Interface],
    [SCADA], [Supervisory Control and Data Acquisition],
    [SQL], [Structured Query Language],
    [MES], [Manufacturing Execution System],
    [ERP], [Enterprise Resource Planning],
    [LIMS], [Laboratory Information Management System],
    [QA], [Quality Assurance],
    [CIP], [Clean-In-Place],
    [HTST], [High Temperature Short Time],
  )

  == Reference Documents

  #table(
    columns: (2.3in, 1.2in, 1fr),
    inset: 7pt,
    stroke: 0.5pt,

    table.header(
      [*Document*],
      [*Revision*],
      [*Notes*],
    ),

    [], [], [],
    [], [], [],
    [], [], [],
    [], [], [],
  )

  == Existing Reports Provided by Customer

  Have sample reports been provided?

  #checklist(
    (
      "Yes",
      "No"
    ),
    columns: 2
  )

  If yes, list the attached reports.

  #write-space(height: 1.2in)

  == Open Questions

  List any questions that remain unresolved before implementation begins.

  #write-space(height: 2in)

  == Action Items

  #table(
    columns: (0.6in, 3.6in, 1.5in, 1in),
    inset: 7pt,
    stroke: 0.5pt,

    table.header(
      [*ID*],
      [*Action Item*],
      [*Owner*],
      [*Status*],
    ),

    [AI-001], [], [], [],
    [AI-002], [], [], [],
    [AI-003], [], [], [],
    [AI-004], [], [], [],
    [AI-005], [], [], [],
  )

  == Customer Approval

  This workbook represents the agreed reporting requirements for the project.

  Changes requested after approval may require additional engineering effort and may affect project schedule and cost.

  #v(0.25in)

  #grid(
    columns: (1fr, 1fr),
    gutter: 0.35in,

    [
      #signature-line("Customer Representative")
      #field("Date", height: 0.35in)
    ],

    [
      #signature-line("Complete Control Solutions")
      #field("Date", height: 0.35in)
    ],
  )
  
  #pagebreak()
]