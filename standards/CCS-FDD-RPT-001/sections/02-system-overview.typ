= System Overview

== Overview

The reporting system provides a centralized platform for collecting, storing,
reviewing, approving, and generating production reports.

Process information originates in the PLC control system and is transferred to
Ignition, where reporting transactions are buffered and written to Microsoft
SQL Server. Once report data has been finalized, SQL stored procedures assign
report identifiers and establish relationships between reports, operator
events, QA annotations, and QA approvals.

The completed reports are available through Ignition for review, approval,
printing, and long-term retention.

== System Architecture

The reporting solution consists of five primary layers:

1. PLC Control System
2. Ignition Gateway
3. Microsoft SQL Server
4. Reporting Engine
5. Operator / QA Interface

Each layer has clearly defined responsibilities and interfaces.

== Functional Responsibilities

=== PLC

The PLC is responsible for:

- Monitoring process equipment
- Collecting process values
- Detecting report start and report completion
- Timestamping production events
- Buffering report records until acknowledged
- Providing process data to Ignition

=== Ignition

Ignition is responsible for:

- Reading PLC data
- Buffering transactions
- Writing records to SQL Server
- Displaying operator interfaces
- Displaying reports
- Managing report review workflow
- Providing historical access

=== SQL Server

SQL Server is responsible for:

- Permanent storage
- Referential integrity
- Stored procedures
- Report identifiers
- Historical queries
- QA records
- Backup and recovery

=== Reporting Layer

The reporting layer is responsible for:

- Report formatting
- PDF generation
- Report review
- Report approval
- Printing
- Export

== High-Level Data Flow

The overall reporting process follows the sequence below:

1. PLC detects report start.
2. PLC collects process data.
3. PLC timestamps significant events.
4. Ignition receives buffered records.
5. Ignition writes data to SQL Server.
6. SQL stored procedures organize report records.
7. Report identifiers are assigned.
8. Operator events are linked.
9. QA annotations are linked.
10. QA approvals are linked.
11. Report becomes available for review.
12. Final report is archived.

== Design Principles

The reporting system has been designed around the following principles:

- Reliability
- Traceability
- Simplicity
- Maintainability
- Data integrity
- Regulatory compliance
- Scalability