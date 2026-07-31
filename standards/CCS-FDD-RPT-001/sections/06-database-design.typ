#let database-design() = [
    
  = Database Design

  == Overview

  Microsoft SQL Server serves as the system of record for all reporting data.

  The database is responsible for storing completed report records, maintaining
  relationships between reports and associated events, enforcing referential
  integrity, executing business logic through stored procedures, and supporting
  historical report retrieval.

  The database shall preserve complete traceability from the originating PLC
  events through final QA approval.

  == Design Objectives

  The database design shall:

  - Prevent duplicate report creation.
  - Maintain referential integrity.
  - Support high-volume report generation.
  - Support efficient historical retrieval.
  - Preserve complete audit history.
  - Support future report expansion.
  - Minimize data redundancy.

  == Database Organization

  The reporting database consists of three primary categories of tables:

  - Report Tables
  - Supporting Tables
  - Configuration Tables

  == Report Tables

  The primary report tables include:

  - Vessel
  - CIP
  - HTST
  - HTST_CIP

  Each report table represents one completed production report.

  Each report shall receive a unique Report ID.

  == Supporting Tables

  Supporting tables include:

  - OP_EVENT
  - QA_ANNOTATION
  - QA_APPROVAL

  These tables maintain supplemental information associated with report records.

  Each supporting record references exactly one report.

  == Configuration Tables

  Configuration tables may include:

  - Users
  - Equipment
  - Report Types
  - Product Codes
  - Alarm Definitions
  - QA Status Definitions

  Configuration information shall remain independent of report records whenever
  practical.

  == Report Relationships

  Each report may have:

  - Multiple operator events
  - Multiple QA annotations
  - Multiple QA approvals

  Operator events, annotations, and approvals shall never exist without a parent
  report.

  == Primary Keys

  Each table shall define a primary key.

  Examples include:

  - VesselID
  - CIPID
  - HTSTID
  - HTST_CIPID
  - EventID
  - AnnotationID
  - ApprovalID

  Primary keys shall remain immutable.

  == Foreign Keys

  Supporting tables shall reference their parent report using foreign keys.

  Examples:

  - ReportID
  - VesselID
  - CIPID
  - HTSTID

  Foreign key constraints shall enforce data integrity.

  == Stored Procedures

  Stored procedures shall perform business logic including:

  - Assigning Report IDs
  - Validating report completion
  - Linking operator events
  - Linking QA annotations
  - Linking QA approvals
  - Closing reports
  - Historical retrieval

  Business logic should reside in stored procedures whenever practical.

  == QA Workflow

  QA approval states include:

  - QA Review Pending
  - QA Hold
  - QA Approved

  QA approval records shall permanently document:

  - Reviewer
  - Timestamp
  - Approval status
  - Comments

  QA approvals shall remain historically traceable.

  == Data Integrity

  The reporting database shall ensure:

  - No orphaned records
  - No duplicate report identifiers
  - Consistent timestamps
  - Referential integrity
  - Transaction consistency

  Database modifications shall utilize transactions where appropriate.

  == Backup and Recovery

  The reporting database shall support:

  - Full backups
  - Differential backups
  - Transaction log backups
  - Point-in-time recovery

  Backup frequency shall be determined by customer operational requirements.

  == Performance

  Database indexes shall be created to support:

  - Historical searches
  - Report retrieval
  - QA review
  - Operator event lookup
  - Annotation lookup
  - Approval lookup

  Indexes shall be reviewed periodically as report volume increases.

  == Future Expansion

  The schema shall permit future report types to be added with minimal impact to
  existing report tables and stored procedures.

]