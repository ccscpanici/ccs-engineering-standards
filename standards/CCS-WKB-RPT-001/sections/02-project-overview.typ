#import "../../../framework/framework.typ": write-space, checklist

#let project-overview() = [
    
  = Project Overview

  This section provides a high-level description of the facility, process, and project objectives. The information collected here establishes the context for the reporting system and helps Complete Control Solutions understand how reporting supports plant operations.

  == Customer Information

  #table(
    columns: (2in, 1fr),
    inset: 8pt,
    stroke: 0.5pt,

    [*Company Name*], [],
    [*Facility Name*], [],
    [*Facility Address*], [],
    [*Primary Contact*], [],
    [*Contact Title*], [],
    [*Phone Number*], [],
    [*Email Address*], [],
  )

  == Project Information

  #table(
    columns: (2in, 1fr),
    inset: 8pt,
    stroke: 0.5pt,

    [*Project Name*], [],
    [*Project Number*], [],
    [*Desired Completion Date*], [],
    [*Estimated Startup Date*], [],
    [*CCS Project Manager*], [],
    [*Customer Project Manager*], [],
  )

  == Facility Overview

  Briefly describe the facility where the reporting system will be implemented.

  Consider including:

  - Primary products manufactured
  - Production capacity
  - Number of production lines
  - Operating schedule
  - Number of operators
  - Approximate number of report users

  #write-space(height: 1.5in)

  == Process Overview

  Provide a high-level description of the manufacturing process. Summarize the major production stages from raw material receiving through finished product.

  Examples may include:

  - Ingredient receiving
  - Mixing
  - Pasteurization
  - Fermentation
  - Packaging
  - CIP
  - Warehouse operations
  - Wastewater treatment

  #write-space(height: 1.75in)

  == Business Objectives

  Select all applicable reasons for implementing the reporting system.

  #checklist(
    (
      "Replace paper reports",
      "Improve operator efficiency",
      "Improve product traceability",
      "Reduct manual data entry",
      "Improve regulatory compliance",
      "Improve production visibility",
      "Improve quality reporting",
      "Support management reporting",
      "Improve troubleshooting",
      "Satisfy customer reporting requirements",
      "Other"
    ),
    columns: 2
  )

  == Success Criteria

  Describe how project success will be measured.

  Examples may include:

  - Reduced operator reporting time
  - Elimination of manual calculations
  - Improved data accuracy
  - Faster report generation
  - Regulatory compliance
  - Improved production visibility
  - Standardized reporting across multiple facilities

  #write-space(height: 1.5in)

  == Engineering Notes

  #write-space(height: 1.5in)

  #pagebreak()
]