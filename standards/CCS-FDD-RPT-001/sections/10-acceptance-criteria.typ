#let acceptance-criteria() = [
    
  = Acceptance Criteria

  == Overview

  The Reporting System shall be considered complete when all functional,
  performance, reliability, and documentation requirements defined within this
  Functional Design Document have been successfully demonstrated and accepted by
  the customer.

  Acceptance testing shall verify both normal operation and abnormal operating
  conditions.

  == Functional Acceptance

  The reporting system shall demonstrate the ability to:

  - Collect report data from the PLC.
  - Preserve PLC-generated timestamps.
  - Store report data within Microsoft SQL Server.
  - Generate each supported report type.
  - Assign unique Report IDs.
  - Associate operator events with reports.
  - Associate QA annotations with reports.
  - Associate QA approvals with reports.
  - Search historical reports.
  - Export reports to PDF.
  - Print reports.

  == Data Integrity

  Acceptance testing shall verify:

  - No duplicate reports are generated.
  - No report records are lost.
  - No orphaned supporting records exist.
  - Foreign key relationships remain valid.
  - Report identifiers remain unique.
  - Historical data remains unchanged after approval.

  == QA Workflow

  Acceptance testing shall demonstrate:

  - Reports enter QA Review Pending.
  - QA Hold functions correctly.
  - QA Approved functions correctly.
  - QA annotations are retained.
  - Approval history is preserved.
  - Audit history remains complete.

  == Communication

  Acceptance testing shall verify:

  - PLC communication.
  - Ignition communication.
  - SQL Server communication.
  - Recovery after temporary communication failure.
  - Buffered record processing.

  Temporary communication interruptions shall not result in data loss.

  == Performance

  The reporting system shall demonstrate acceptable performance under expected
  production loading.

  Performance testing should verify:

  - Report generation time.
  - Historical search time.
  - Database response time.
  - Simultaneous user performance.
  - Recovery after gateway restart.

  == Security

  Acceptance testing shall verify:

  - User authentication.
  - Role-based permissions.
  - Unauthorized access prevention.
  - Audit logging.
  - Administrative functions.

  == Documentation

  The following documentation shall be complete before project acceptance:

  - Reporting Requirements Workbook
  - Functional Design Document
  - Factory Acceptance Test
  - Site Acceptance Test
  - Operator documentation
  - Administrator documentation

  == Customer Acceptance

  Final project acceptance shall occur following:

  - Successful Factory Acceptance Test.
  - Successful Site Acceptance Test.
  - Resolution of agreed punch-list items.
  - Customer approval.

  Acceptance indicates that the reporting system satisfies the functional design
  described within this document.

  == Design Philosophy

  Acceptance testing confirms that the implemented reporting solution fulfills the
  approved customer requirements while providing reliable operation,
  maintainability, and long-term supportability.

]