# Release Process

Framework releases follow Semantic Versioning.

```
MAJOR.MINOR.PATCH
```

Example:

```
v0.4.0
```

---

# Patch Release

Increment when:

- Bug fixes
- Documentation updates
- Minor improvements

Examples:

```
v0.4.1
v0.4.2
```

---

# Minor Release

Increment when:

- New components
- New document types
- New framework features

Examples:

```
v0.5.0
v0.6.0
```

---

# Major Release

Increment when:

- Public API changes
- Breaking changes
- Significant redesign

Example:

```
v1.0.0
```

---

# Release Checklist

- All documents build
- Validation passes
- README updated
- CHANGELOG updated
- Documentation updated

Then run:

```
./scripts/release.sh vX.Y.Z
```

The release script validates the framework before creating an annotated Git tag.

---

# Current Milestones

| Version | Status |
|----------|--------|
| v0.1 | Initial framework |
| v0.2 | Layout system |
| v0.3 | Workbook framework |
| v0.4 | Multi-document framework |
| v0.5 | Planned |
| v1.0 | Planned |