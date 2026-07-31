# CCS Engineering Publishing Framework Components

This document describes the reusable components provided by the CCS Engineering
Publishing Framework.

All components should be imported through the public framework API whenever
possible.

```typst
#import "../framework/framework.typ": *
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

# Document Types

## `workbook(document, body)`

Creates a workbook document.

Features include:

- Cover page
- Document information page
- Table of contents
- Running headers
- Running footers
- Page numbering
- CCS styling

Example:

```typst
#import "../../framework/framework.typ": workbook

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
- Page numbering
- CCS styling

Example:

```typst
#import "../../framework/framework.typ": specification

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
- Table of contents

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
- Callouts

These styles are applied automatically by the selected document type.

---

# Public Framework API

Most documents should only import:

```typst
#import "../../framework/framework.typ": *
```

Individual sections may import only the helpers they require.

Example:

```typst
#import "../../../framework/framework.typ": checklist, write-space
```

Avoid importing files directly from `framework/components` unless developing
the framework itself.

---

# Included Standards

Current standards built using this framework include:

- CCS-WKB-RPT-001 — Reporting Requirements Workbook
- CCS-FDD-RPT-001 — Reporting Functional Design Document

Additional standards can be created using:

```bash
./scripts/new-standard.sh
```

---

# Examples

See the `examples/` directory for working demonstrations of:

- Cover pages
- Callouts
- Forms
- Checklists
- Tables
- Complete showcase