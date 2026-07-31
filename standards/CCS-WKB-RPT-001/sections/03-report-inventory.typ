#import "../../../framework/components/ccs-tables.typ": worksheet-table
#import "../../../framework/components/forms.typ": write-space
#import "../../../framework/components/checklist.typ": checklist

#let report-inventory() = [
    
  = Report Inventory

  This section identifies every report required for the project. Each report listed here should have a corresponding Report Specification Worksheet completed in Section 4.

  == Required Report Types

  Select all report types required for this project.

  #checklist(
    (
      "Vessel",
      "CIP",
      "HTST",
      "HTST CIP",
      "Production",
      "Batch",
      "Alarm Summary",
      "Downtime",
      "Quality",
      "Regulatory",
      "Management",
      "Other",
    ),
    columns: 2,
  )

  == Report Inventory

  #worksheet-table(
    (0.85in, 1.7in, 1.4in, 1.1in, 1.2in, 1fr),

    (
      "Report ID",
      "Report Name",
      "Process Area",
      "Frequency",
      "Primary Users",
      "Status",
    ),

    (
      ("RPT-001", "", "", "", "", ""),
      ("RPT-002", "", "", "", "", ""),
      ("RPT-003", "", "", "", "", ""),
      ("RPT-004", "", "", "", "", ""),
      ("RPT-005", "", "", "", "", ""),
      ("RPT-006", "", "", "", "", ""),
      ("RPT-007", "", "", "", "", ""),
      ("RPT-008", "", "", "", "", ""),
      ("RPT-009", "", "", "", "", ""),
      ("RPT-010", "", "", "", "", ""),
    ),
  )

  == Report Frequency

  Indicate how often each report is expected to be generated.

  #checklist(
    (
      "Every cycle",
      "Every batch",
      "Every CIP cycle",
      "Every production run",
      "Hourly",
      "Daily",
      "Weekly",
      "Monthly",
      "On demand",
      "Exception only",
      "Other"
  ),
    columns: 2
  )

  == Existing Reports

  Does the facility currently generate reports that should be replaced, recreated, or used as a reference?

  #checklist(
    (
      "Yes",
      "No"
    ),
    columns: 2
  )

  If yes, identify the current report format.

  #checklist(
    (
      "Paper Forms",
      "Microsoft Excel",
      "PDF",
      "SQL reporting tool (SSRS)",
      "Historian Reporting",
      "ERP",
      "MES",
      "Other",
    ),
    columns: 2
  )

  Attach examples of existing reports whenever possible.

  == Engineering Notes

  #write-space(height: 1.5in)

]