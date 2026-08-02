#import "../../../framework/framework.typ": ignition-gateway
#let ignition-design() = [
    
  = Ignition Gateway Design

  == Overview

  The Ignition Gateway serves as the middleware layer between the PLC control
  system and the reporting database.

  Its primary responsibilities include acquiring report data, buffering
  transactions, writing records to Microsoft SQL Server, presenting operator
  interfaces, and managing report review and approval workflows.

  The Gateway shall isolate the PLC from database and reporting functions,
  allowing each system to evolve independently.

  #ignition-gateway(
    name: "Primary Ignition Gateway",
    version: "To Be Determined",
    redundancy: "To Be Determined",
    tag-provider: "Production",
    database: "Reporting",

    description: [
      Primary Ignition Gateway responsible for PLC data acquisition,
      transaction buffering, SQL record creation, report generation,
      operator interfaces, and QA workflow services.
      ],
  )

  The database schema and stored-procedure responsibilities are defined in @database-design.

  == Gateway Responsibilities

  The Ignition Gateway shall:

  - Read report records from the PLC.
  - Buffer transactions during communication interruptions.
  - Write records to Microsoft SQL Server.
  - Execute report generation.
  - Present operator and QA interfaces.
  - Manage report review and approval workflows.
  - Log system events and diagnostic information.
  - Support historical report retrieval.

  == Project Organization

  The Ignition project should be organized into logical functional areas.

  Recommended organization:

  - Perspective Views
  - Named Queries
  - Gateway Event Scripts
  - Transaction Groups (or equivalent)
  - Shared Scripts
  - Report Resources
  - Security Resources

  This structure promotes maintainability and simplifies future enhancements.

  == Store and Forward

  Ignition shall utilize Store and Forward to protect report data during temporary
  database outages.

  The reporting solution shall ensure that:

  - Report records are not lost during communication failures.
  - Records are written to SQL Server in the correct order.
  - Duplicate records are not created.
  - Operators are notified when buffering exceeds acceptable limits.

  == Report Processing

  Once report records are received from the PLC:

  1. Validate incoming data.
  2. Write records to SQL Server.
  3. Execute required stored procedures.
  4. Assign report identifiers.
  5. Update report status.
  6. Notify clients that a report is available.

  == User Interface

  Ignition shall provide user interfaces for:

  - Report search
  - Report review
  - Report approval
  - QA annotation
  - Report printing
  - PDF export
  - Historical browsing

  Interfaces should maintain a consistent appearance and navigation structure.

  == Security

  Ignition security shall support role-based access.

  Typical roles include:

  - Operator
  - Supervisor
  - QA
  - Maintenance
  - Engineering
  - Administrator

  Permissions should be assigned according to the principle of least privilege.

  == Diagnostics

  The Gateway shall log:

  - Database communication failures
  - PLC communication failures
  - Report processing errors
  - Stored procedure failures
  - Security events
  - User login activity
  - Report approval events

  Diagnostic information shall be available to engineering personnel for
  troubleshooting.

  == Performance

  The reporting solution shall support simultaneous users without impacting
  Gateway performance.

  Long-running report generation shall not interfere with normal operator
  functions.

  Gateway resources shall be sized according to expected report volume and user
  activity.

  == Design Philosophy

  Ignition shall function as the integration layer between process control,
  database services, and reporting applications.

  Business logic should reside in SQL Server where practical, allowing the Gateway
  to focus on data acquisition, visualization, and workflow.

]