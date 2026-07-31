# Build System

The framework includes several helper scripts.

---

# Build One Document

```
./build.sh standards/CCS-WKB-RPT-001/main.typ
```

---

# Build Everything

```
./scripts/build-all.sh
```

Compiles:

- All examples
- All standards

---

# Validate Framework

```
./scripts/check.sh
```

Validation performs:

- Deprecated import detection
- Empty file verification
- Complete build verification

---

# Create New Standard

```
./scripts/new-standard.sh
```

Creates:

- Folder structure
- metadata.typ
- main.typ
- Starter sections

---

# Release

```
./scripts/release.sh v0.5.0
```

Release performs:

- Repository validation
- Framework validation
- Version tag creation
- Tag push

Releases must be created from a clean `main` branch.