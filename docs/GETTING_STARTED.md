# Getting Started

## Requirements

Install:

- Typst
- Git
- VSCodium or another editor

Verify Typst:

```bash
typst --version
```

## Clone the Repository

```bash
git clone git@github.com:ccscpanici/ccs-engineering-standards.git
cd ccs-engineering-standards
```

## Build All Documents

```bash
./scripts/build-all.sh
```

## Validate the Framework

```bash
./scripts/check.sh
```

This validates imports, placeholder files, examples, and all standards.

## Build One Document

```bash
./build.sh standards/CCS-WKB-RPT-001/main.typ
```

The generated PDF is placed beside the source file.

## Create a New Standard

```bash
./scripts/new-standard.sh \
  CCS-FAT-RPT-001 \
  "Reporting Factory Acceptance Test" \
  specification
```

Supported document types currently include:

- `workbook`
- `specification`

## Standard Structure

```text
standards/CCS-FDD-RPT-001/
├── assets/
├── sections/
├── main.typ
└── metadata.typ
```

## Public Framework Import

Documents and sections should import components through the public API:

```typst
#import "../../framework/framework.typ": *
```

From a section directory:

```typst
#import "../../../framework/framework.typ": checklist, write-space
```

Avoid importing internal component files unless framework development requires it.

## Section Pattern

```typst
#import "../../../framework/framework.typ": checklist

#let example-section() = [
  = Example Section

  #checklist(
    (
      "Option One",
      "Option Two",
    ),
  )
]
```

Then import and call it from `main.typ`:

```typst
#import "sections/01-example.typ": example-section

#example-section()
```

## Release Process

Releases must be created from a clean, synchronized `main` branch:

```bash
git switch main
git pull
./scripts/release.sh v0.5.0
```