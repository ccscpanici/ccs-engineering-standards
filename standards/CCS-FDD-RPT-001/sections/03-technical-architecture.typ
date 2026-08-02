#import "../../../framework/framework.typ": reporting-system
#let techical-architecture() = [

  = Technical Architecture

  == Overview

  The reporting system is implemented using a layered architecture to separate
  control, data acquisition, storage, reporting, and quality assurance
  responsibilities.

  Each layer communicates only with adjacent layers, minimizing coupling and
  allowing individual components to be modified without affecting the entire
  system. The major system layers and data flow are shown in @reporting-architecture below.

  #figure(
    reporting-system(),
    caption: [High-level reporting system architecture],
  ) <reporting-architecture>

  == Architecture Layers

  The reporting solution consists of the following layers:

  1. PLC Control System
  2. Ignition Gateway
  3. Microsoft SQL Server
  4. Reporting Services
  5. Client Applications

  == PLC Layer

  Responsibilities:

  - Detect report start and completion
  - Capture production values
  - Timestamp events
  - Buffer report records
  - Detect alarms
  - Provide data to Ignition

  The PLC remains the authoritative source for process values and event timing.

  == Ignition Layer

  Responsibilities:

  - Collect PLC records
  - Buffer transactions
  - Write SQL records
  - Execute report generation
  - Provide operator screens
  - Display reports
  - Manage report workflow

  Ignition acts as the middleware between the control system and the reporting
  database.

  == SQL Layer

  Responsibilities:

  - Permanent storage
  - Data relationships
  - Stored procedures
  - Report numbering
  - QA workflow
  - Historical retrieval
  - Backup and recovery

  SQL Server is the system of record for all completed reports.

  == Reporting Layer

  Responsibilities:

  - Report generation
  - PDF rendering
  - Printing
  - Report review
  - Report approval
  - Report archive

  == Client Layer

  Users access the reporting system through Ignition Perspective or Vision
  clients.

  Different user roles may include:

  - Operators
  - Supervisors
  - QA
  - Maintenance
  - Engineering
  - Administrators

  == System Boundaries

  The reporting system interfaces with:

  - PLC Control System
  - Ignition Gateway
  - SQL Server
  - Active Directory (optional)
  - Network Time Server
  - Backup System

  The following systems are outside the project scope unless specifically
  identified elsewhere:

  - ERP
  - MES
  - Corporate historians
  - Business Intelligence systems

  == Design Philosophy

  The architecture has been designed with the following objectives:

  - High reliability
  - Modular implementation
  - Simple troubleshooting
  - Expandability
  - Long-term maintainability
  - Clear ownership of responsibilities

]