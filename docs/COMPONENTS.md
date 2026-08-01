# CCS Engineering Publishing Framework Components

This document describes the reusable components provided by the CCS Engineering
Publishing Framework.

Unless you are developing the framework itself, always import components
through the public framework API.

```typst
#import "../framework/framework.typ": *
```

---

# Engineering Components

## `info-panel(title, fields, ...)`

Creates a generic engineering information panel.

This is the foundation used by most engineering objects. When a dedicated
component exists (such as `controller()` or `sql-server()`), it should
normally be preferred.

### Example

```typst
#info-panel(
  "Reporting Server",

  (
    ("Manufacturer", "Dell"),
    ("Model", "PowerEdge R760"),
    ("Operating System", "Windows Server 2025"),
    ("Purpose", "Ignition and Reporting"),
  ),

  description: [
    Primary reporting server for the production system.
  ],
)
```

---

## `controller(...)`

Creates a standard PLC/controller information panel.

### Example

```typst
#controller(
  name: "Primary PLC",
  model: "1756-L85E",
  firmware: "38.011",
  network: "EtherNet/IP",
  ip: "10.0.1.10",

  description: [
    Primary process controller.
  ],
)
```

---

## `ignition-gateway(...)`

Creates an Ignition Gateway information panel.

### Example

```typst
#ignition-gateway(
  name: "Primary Gateway",
  version: "8.3",
  redundancy: "Enabled",
  tag-provider: "Production",
  database: "Reporting",
)
```

---

## `sql-server(...)`

Creates a SQL Server information panel.

### Example

```typst
#sql-server(
  name: "Reporting Database",
  version: "SQL Server 2022",
  database: "Reporting",
  authentication: "Windows Authentication",
)
```

---

## `network-switch(...)`

Creates a managed industrial network switch information panel.

### Example

```typst
#network-switch(
  name: "Plant Network Switch",
  manufacturer: "Rockwell Automation",
  model: "Stratix 5700",
  ip: "10.0.1.50",
)
```

---

## `historian(...)`

Creates a historian information panel.

### Example

```typst
#historian(
  name: "Production Historian",
  platform: "Ignition Tag Historian",
  retention: "7 Years",
)
```

---

## `report-definition(...)`

Creates a reporting definition information panel.

### Example

```typst
#report-definition(
  name: "CIP Report",
  id: "RPT-002",
  trigger: "Cycle Complete",
  retention: "7 Years",
)
```

---

# Workflow Components

## `reporting-system(...)`

Creates a standard reporting system architecture diagram.

### Example

```typst
#reporting-system()
```

---

## `qa-workflow(...)`

Creates the standard QA review workflow.

### Example

```typst
#qa-workflow()
```

---

# Diagram Components

## `report-flow(stages, ...)`

Creates a horizontal engineering flow diagram.

### Example

```typst
#report-flow(
  (
    "PLC",
    "Ignition",
    "SQL Server",
    "Reports",
  ),
)
```

---

## `vertical-flow(stages, ...)`

Creates a vertical engineering workflow diagram.

### Example

```typst
#vertical-flow(
  (
    "Pending",
    "Hold",
    "Approved",
  ),
)
```

---

# Callouts

## `note(body)`

Displays a standard engineering note.

```typst
#note[
Attach existing reports whenever possible.
]
```

---

## `warning(body)`

Displays a warning callout.

```typst
#warning[
Changes made after customer approval may require additional engineering effort.
]
```

---

## `tip(body)`

Displays an engineering tip.

```typst
#tip[
Use existing customer reports whenever possible.
]
```

---

# Forms

## `write-space(height: 1.25in)`

Creates an empty bordered writing area.

```typst
#write-space()

#write-space(height: 2in)
```

---

## `field(label, height: 0.45in)`

Creates a labeled response field.

```typst
#field("Customer")
```

---

## `signature-line(label)`

Creates a signature line.

```typst
#signature-line("Customer Representative")
```

---

# Checklists

## `checklist(items, columns: 1)`

Creates one- or multi-column checklists.

```typst
#checklist(
  (
    "PLC",
    "Ignition",
    "SQL Server",
    "Operator Interface",
  ),
)
```

Multiple columns:

```typst
#checklist(
  (
    "PLC",
    "Ignition",
    "SQL Server",
    "QA",
    "Reports",
    "PDF",
  ),
  columns: 2,
)
```

---

# Tables

## `worksheet-table(columns, header, rows)`

Creates a CCS-styled worksheet table.

```typst
#worksheet-table(
  (1in, 2in, 1fr),

  (
    "ID",
    "Description",
    "Status",
  ),

  (
    ("001", "Batch Report", ""),
    ("002", "CIP Report", ""),
  ),
)
```

---

## `database-table(...)`

Creates a formatted database table definition.

### Example

```typst
#database-table(
  name: "QA_APPROVAL",

  columns: (
    (
      "ApprovalID",
      "BIGINT",
      "Primary Key",
    ),
    (
      "ReportID",
      "BIGINT",
      "Foreign Key",
    ),
  ),
)
```

---

# Document Types

## `workbook(document, body)`

Creates a workbook document.

Features include:

- Cover page
- Document information page
- Table of contents
- Running headers
- Running footers
- Automatic page numbering

### Example

```typst
#show: body => workbook(document, body)
```

---

## `specification(document, body)`

Creates a specification document.

Features include:

- Cover page
- Document information page
- Table of contents
- Running headers
- Running footers
- Automatic page numbering

### Example

```typst
#show: body => specification(document, body)
```

---

# Layout Components

The framework automatically provides:

- Metadata-driven cover pages
- Document information pages
- Running headers
- Running footers
- Automatic page numbering
- Automatic table of contents

These components are managed internally and normally do not need to be called
directly.

---

# Styles

The framework includes shared styling for:

- CCS colors
- Typography
- Heading hierarchy
- Tables
- Forms
- Engineering information panels
- Diagrams
- Callouts

These styles are automatically applied by the selected document type.

---

# Public Framework API

Most documents should only import:

```typst
#import "../framework/framework.typ": *
```

Individual sections may import only the helpers they require.

Example:

```typst
#import "../../../framework/framework.typ": checklist, write-space
```

Avoid importing files directly from internal framework folders unless you are
developing the framework itself.

---

# Included Standards

Current standards built using this framework include:

- CCS-WKB-RPT-001 — Reporting Requirements Workbook
- CCS-FDD-RPT-001 — Reporting Functional Design Document

New standards can be scaffolded with:

```bash
./scripts/new-standard.sh
```

---

# Examples

The `examples/` directory contains working demonstrations of:

- Cover pages
- Callouts
- Forms
- Checklists
- Engineering information panels
- Engineering diagrams
- Tables
- Complete framework showcase