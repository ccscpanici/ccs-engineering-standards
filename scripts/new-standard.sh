#!/usr/bin/env bash
set -euo pipefail

if [[ $# -lt 3 ]]; then
  echo "Usage:"
  echo "  $0 <document-number> <document-title> <document-type>"
  echo
  echo "Example:"
  echo "  $0 CCS-FAT-RPT-001 \"Reporting Factory Acceptance Test\" workbook"
  exit 1
fi

document_number="$1"
document_title="$2"
document_type="$3"

case "$document_type" in
  workbook|specification)
    ;;
  *)
    echo "ERROR: Unsupported document type: $document_type"
    echo "Supported types: workbook, specification"
    exit 1
    ;;
esac

target="standards/${document_number}"

if [[ -e "$target" ]]; then
  echo "ERROR: ${target} already exists."
  exit 1
fi

mkdir -p "${target}/assets" "${target}/sections"

cat > "${target}/metadata.typ" <<EOF
#let document = (
  title: "${document_title}",
  document: "${document_number}",
  customer: "",
  project: "",
  facility: "",
  author: "Complete Control Solutions",
  revision: "0.1",
  date: "",

  revisions: (
    (
      revision: "0.1",
      date: "",
      author: "Complete Control Solutions",
      description: "Initial draft",
    ),
  ),
)
EOF

cat > "${target}/sections/01-introduction.typ" <<'EOF'
#let introduction() = [
  = Introduction

  == Purpose

  == Scope

  == Intended Audience

  == References
]
EOF

cat > "${target}/sections/99-appendix.typ" <<'EOF'
#let appendix() = [
  = Appendix

  == Acronyms

  == Referenced Documents

  == Notes
]
EOF

cat > "${target}/main.typ" <<EOF
#import "../../framework/framework.typ": ${document_type}
#import "metadata.typ": document
#import "sections/01-introduction.typ": introduction
#import "sections/99-appendix.typ": appendix

#show: body => ${document_type}(document, body)

#introduction()
#appendix()
EOF

echo "Created ${target}"
echo
echo "Build with:"
echo "  ./build.sh ${target}/main.typ"