# Repository Layout

```
ccs-engineering-standards/
│
├── docs/
│
├── examples/
│   ├── showcase.typ
│   ├── callouts.typ
│   ├── checklists.typ
│   ├── forms.typ
│   └── tables.typ
│
├── framework/
│   ├── components/
│   ├── document-types/
│   ├── layouts/
│   ├── styles/
│   ├── framework.typ
│   └── theme.typ
│
├── scripts/
│
├── standards/
│   ├── CCS-WKB-RPT-001/
│   └── CCS-FDD-RPT-001/
│
├── README.md
├── ROADMAP.md
├── CHANGELOG.md
└── LICENSE
```

---

## docs/

Framework documentation.

---

## examples/

Small demonstration documents for framework components.

---

## framework/

Reusable Typst framework.

Contains:

- Components
- Layouts
- Styles
- Document types

---

## scripts/

Framework utilities.

Examples include:

- build.sh
- build-all.sh
- check.sh
- release.sh
- new-standard.sh

---

## standards/

Production engineering documents built using the framework.

Each standard contains:

```
metadata.typ
main.typ
assets/
sections/
```

---

## Philosophy

Framework code belongs in `framework`.

Engineering documents belong in `standards`.

Demonstrations belong in `examples`.

Documentation belongs in `docs`.