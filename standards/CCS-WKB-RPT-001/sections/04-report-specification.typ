#import "../../../framework/components/forms.typ": write-space
#import "../../../framework/components/checklist.typ": checklist

#let report-specifications() = [
    
  = Report Specification Worksheet

  Complete one copy of this worksheet for each report identified in Section 3.

  == Report Information

  #table(
    columns: (2in, 1fr),
    inset: 8pt,
    stroke: 0.5pt,

    [*Report ID*], [],
    [*Report Name*], [],
    [*Process Area*], [],
    [*Report Owner*], [],
    [*Priority*], [High / Medium / Low],
    [*New or Existing*], [New / Existing / Replacement],
    [*Regulatory Report*], [Yes / No],
  )

  == Purpose

  Describe why this report is required and what business or operational decision it supports.

  #write-space()

  == Users

  Select all users who will access or rely on this report.

  #checklist(
    (
      "Operator",
      "Supervisor",
      "Quality Assurance",
      "Maintenance",
      "Engineering",
      "Corporate",
      "Customer",
      "Regulatory agency",
      "Other"
    ),
    columns: 2
  )

  == Report Trigger

  How is the report created?

  #checklist(
    (
      "Automatic",
      "Manual",
      "Scheduled",
      "Batch Complete",
      "CIP Complete",
      "Production run complete",
      "Shift end",
      "Daily",
      "Weekly",
      "Monthly",
      "Alarm or event",
      "Other"
    ),
    columns: 2
  )

  == Report Contents

  List all information that must appear on the report.

  #write-space(height: 1.5in)

  == Calculations

  Does the report require calculated values?

  - [ ] No
  - [ ] Yes

  If yes, describe the required calculations.

  #write-space(height: 1in)

  == Operator Input

  Does the report require operator-entered information?

  #checklist(
    (
      "No",
      "Yes"
    ),
    columns: 2
  )

  Examples may include comments, product codes, lot numbers, QA notes, downtime reasons, or shift notes.

  #write-space(height: 1in)

  == Approval Workflow

  Is approval required?

  #checklist(
    (
      "No",
      "Yes"
    ), 
    columns: 2
  )

  If yes, select the required approval steps.

  #checklist(
    (
      "Operator review",
      "Supervisor approval",
      "QA approval",
      "Electronic signature",
      "Second approval",
      "Customer approval"
    ),
    columns: 2
  )

  == Report Distribution

  Select all required output or distribution methods.

  #checklist(
    (
      "Printed Copy",
      "PDF",
      "Email",
      "SQL Archive",
      "Sharepoint",
      "ERP",
      "Customer portal",
      "File server",
      "Other"
    ),
    columns: 2
  )

  == Retention Requirements

  How long must the report be retained?

  #checklist(
    (
      "Less than 30 days",
      "30 days",
      "90 days",
      "1 year",
      "3 years",
      "5 years",
      "7 years",
      "10 years",
      "Permanently",
      "Other"
    ),
    columns: 2
  )

  == Acceptance Criteria

  Describe what conditions must be satisfied before the report is considered complete.

  #write-space(height: 1.25in)

  == Engineering Notes

  #write-space(height: 1.25in)

]