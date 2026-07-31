#let qa-workflow() = [
    
  = QA Workflow

  == Overview

  The Quality Assurance (QA) workflow provides a structured review and approval
  process for completed production reports.

  The workflow ensures that reports are reviewed by authorized personnel before
  being considered final while maintaining a permanent historical record of all
  review activity.

  QA activities shall be traceable and auditable.

  == Workflow Objectives

  The QA workflow shall:

  - Ensure completed reports are reviewed.
  - Document reviewer identity.
  - Record approval timestamps.
  - Record review comments.
  - Support reports placed on hold.
  - Preserve complete audit history.
  - Prevent unauthorized approvals.

  == Workflow States

  Reports progress through the following QA states:

  1. QA Review Pending
  2. QA Hold
  3. QA Approved

  Each report shall always have one current QA status.

  == QA Review Pending

  Reports enter the QA Review Pending state after:

  - Report completion
  - Successful database validation
  - Assignment of Report ID

  Reports awaiting review remain available to authorized QA personnel.

  == QA Hold

  QA personnel may place a report on hold when:

  - Process data requires investigation.
  - Production issues are identified.
  - Required information is incomplete.
  - Additional documentation is needed.

  Reports on hold shall remain accessible but shall not be considered approved.

  The reason for the hold shall be documented.

  == QA Approved

  A report enters the QA Approved state after successful review.

  Approval records shall document:

  - Reviewer
  - Approval timestamp
  - Approval comments
  - Approval status

  Approved reports become part of the permanent production history.

  == QA Annotations

  QA personnel may add annotations to any report.

  Annotations should include:

  - Reviewer
  - Timestamp
  - Comment
  - Category (optional)

  Annotations shall never modify original production data.

  == Audit Trail

  The reporting system shall preserve an audit trail for:

  - Report creation
  - Operator events
  - QA annotations
  - QA approvals
  - QA holds
  - Report printing
  - PDF generation

  Audit information shall remain historically available.

  == Security

  Only authorized QA personnel shall be permitted to:

  - Approve reports
  - Place reports on hold
  - Release reports from hold
  - Add QA annotations

  Permissions shall be assigned using Ignition security roles.

  == Notifications

  The reporting solution may notify responsible personnel when:

  - Reports await QA review.
  - Reports are placed on hold.
  - Reports are approved.
  - QA processing exceeds defined response times.

  Notification mechanisms may include:

  - Ignition notifications
  - Email
  - Dashboard indicators

  == Historical Review

  Users shall be able to review the complete QA history for any report.

  Historical information should include:

  - Approval history
  - Hold history
  - Annotation history
  - Reviewer information
  - Timestamps

  Historical records shall remain read-only.

  == Design Philosophy

  The QA workflow is intended to provide accountability, traceability, and
  regulatory compliance while minimizing the operational effort required to
  review production reports.

  The workflow shall preserve original production data while allowing QA
  personnel to document review activities independently.

]