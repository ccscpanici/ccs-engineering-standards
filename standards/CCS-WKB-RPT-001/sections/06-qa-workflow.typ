#import "../../../framework/framework.typ": write-space, checklist

#let qa-workflow() = [
    
  = QA Workflow

  This section defines the review, hold, approval, annotation, and audit requirements for reports that require quality assurance oversight.

  == QA Review Requirements

  Do reports require QA review?

  #checklist(
    (
      "Yes",
      "No"
    ),
    columns: 2
  )

  Which report types require QA review?

  #write-space(height: 0.9in)

  == QA Statuses

  The reporting system shall support the following QA statuses where QA review is required:

  - QA Review Pending
  - QA Hold
  - QA Approved

  Should any additional QA statuses be supported?

  #checklist(
    (
      "Yes",
      "No"
    ),
    columns: 2
  )

  If yes, describe them.

  #write-space(height: 0.8in)

  == QA Approval Authority

  Identify the personnel or roles authorized to review and approve reports.

  #table(
    columns: (2in, 1.5in, 1fr),
    inset: 7pt,
    stroke: 0.5pt,

    table.header(
      [*Role or Group*],
      [*Approval Authority*],
      [*Notes*],
    ),

    [Quality Assurance], [], [],
    [Supervisor], [], [],
    [Plant Management], [], [],
    [Other], [], [],
  )

  == QA Hold

  Should QA personnel be able to place a report on hold?

  #checklist(
    (
      "Yes",
      "No"
    ),
    columns: 2
  )

  If a report is placed on hold, what information must be recorded?

  #checklist(
    (
      "Hold reason",
      "User name",
      "Date and time",
      "Corrective action",
      "Supporting documentation",
      "Other"
    ),
    columns: 2
  )

  Should a report remain visible to operators while it is on hold?

  #checklist(
    (
      "Yes",
      "No"
    ),
    columns: 2
  )

  Should reports on hold be restricted from distribution or export?

  #checklist(
    (
      "Yes",
      "No"
    ),
    columns: 2
  )

  == QA Approval

  What must occur before a report can be marked QA Approved?

  #write-space(height: 1.0in)

  Should QA approval require user authentication?

  #checklist(
    (
      "Yes",
      "No"
    ),
    columns: 2
  )

  Should QA approval require an electronic signature?

  #checklist(
    (
      "Yes",
      "No"
    ),
    columns: 2
  )

  Should approval record the following information?

  #checklist(
    (
      "Approver name",
      "Approval date and time",
      "Approval status",
      "Approval comment",
      "Electronic signature",
      "Other"
    ),
    columns: 2
  )

  == Post-Generation Annotations

  Should users be able to add annotations after a report is generated?

  #checklist(
    (
      "Yes",
      "No"
    ),
    columns: 2
  )

  Who may add annotations?

  #checklist(
    (
      "Operator",
      "Supervisor",
      "Quality Assurance",
      "Engineering",
      "Administrator",
      "Other"
    ),
    columns: 2
  )

  Should annotations become a permanent part of the report history?

  #checklist(
    (
      "Yes",
      "No"
    ),
    columns: 2
  )

  Can annotations be added after QA approval?

  #checklist(
    (
      "Yes",
      "No"
    ),
    columns: 2
  )

  If an annotation is added after approval, should the report return to QA Review Pending?

  #checklist(
    (
      "Yes",
      "No"
    ),
    columns: 2
  )

  == Report Changes After Approval

  Can report data be changed after QA approval?

  #checklist(
    (
      "Yes",
      "No"
    ),
    columns: 2
  )

  If yes, describe the required workflow.

  #write-space(height: 1.0in)

  Should changes after approval require:

  #checklist(
    (
      "Reauthentication",
      "QA reapproval",
      "Supervisor approval",
      "Reason for change",
      "Audit-trail entry",
      "Other"
    ),
    columns: 2
  )

  == Audit Trail

  Should the system maintain an audit trail of report activity?

  #checklist(
    (
      "Yes",
      "No"
    ),
    columns: 2
  )

  Select the actions that must be recorded.

  #checklist(
    (
      "Report creation",
      "Report completion",
      "QA hold",
      "QA approval",
      "Annotation added",
      "Report reopened",
      "Report regenerated",
      "Report exported",
      "Report printed",
      "Report deleted or archived",
      "Other"
    ),
    columns: 2
  )

  Each audit-trail entry should include, at minimum:

  - User identity
  - Date and time
  - Action performed
  - Report identifier
  - Reason or comment, when applicable

  == Electronic Records and Signatures

  Are electronic records or signatures subject to regulatory requirements?

  #checklist(
    (
      "Yes",
      "No",
      "I don't know"
    ),
    columns: 2
  )

  Select all applicable requirements.

  #checklist(
    (
      "FDA 21 CFR Part 11",
      "Corporate electronic-record policy",
      "Customer-specific requirement",
      "Other regulatory requirement",
      "None"
    ),
    columns: 2
  )

  Describe any applicable standards or policies.

  #write-space(height: 1.0in)

  == Notifications

  Should notifications be generated for QA-related events?

  #checklist(
    (
      "QA review required",
      "Report placed on hold",
      "Report approved",
      "Approval rejected",
      "Annotation added after approval",
      "Other"
    ),
    columns: 2
  )

  Who should receive these notifications?

  #write-space(height: 0.8in)

  == Engineering Notes

  #write-space(height: 1.5in)
  #pagebreak()

]