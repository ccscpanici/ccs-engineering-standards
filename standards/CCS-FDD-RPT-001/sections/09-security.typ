#let security() = [
    
  = Security

  == Overview

  The reporting system shall protect production data, report records, QA
  information, and system configuration through role-based security,
  authentication, authorization, and auditing.

  Security shall be applied consistently across the PLC, Ignition Gateway,
  Microsoft SQL Server, and supporting infrastructure.

  == Security Objectives

  The reporting system shall:

  - Protect report integrity.
  - Prevent unauthorized access.
  - Preserve audit history.
  - Support user accountability.
  - Protect confidential production information.
  - Maintain system availability.

  == Authentication

  User authentication should be provided through the customer's centralized
  identity management system whenever practical.

  Supported authentication methods may include:

  - Microsoft Active Directory
  - Ignition Identity Providers
  - Local Ignition Users
  - SQL Authentication (administrative use only)

  Authentication methods shall be selected according to customer standards.

  == Authorization

  User permissions shall be assigned using role-based access control.

  Typical roles include:

  - Operator
  - Supervisor
  - Quality Assurance
  - Maintenance
  - Engineering
  - Administrator

  Users shall receive only the permissions necessary to perform their assigned
  responsibilities.

  == Application Security

  The reporting application shall control access to:

  - Report viewing
  - Report generation
  - Report approval
  - QA annotation
  - Administrative configuration
  - Historical reports

  Unauthorized operations shall be denied and logged.

  == Database Security

  Microsoft SQL Server shall protect:

  - Report tables
  - QA records
  - Configuration tables
  - Stored procedures

  Direct database modification shall be limited to authorized administrative
  accounts.

  Application users should access the database only through approved application
  interfaces.

  == Audit Logging

  The reporting solution shall log security-related events including:

  - User logins
  - Failed login attempts
  - Report approvals
  - QA holds
  - Administrative changes
  - Security configuration changes

  Audit records shall remain historically available.

  == Network Security

  Communications between system components should occur over secured plant
  networks.

  Where supported, encrypted communication shall be used between:

  - PLC and Ignition
  - Ignition and SQL Server
  - Clients and Ignition Gateway

  Firewall rules should limit communication to required services only.

  == Backup Security

  Backup files shall be protected using customer-approved security procedures.

  Backup media should be accessible only to authorized personnel.

  Backup retention policies shall comply with customer requirements.

  == Design Philosophy

  Security shall support reliable plant operation without unnecessarily
  complicating normal operator activities.

  The reporting system shall follow the principle of least privilege while
  maintaining complete traceability of user actions.

]