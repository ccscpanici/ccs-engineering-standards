#!/usr/bin/env bash
set -euo pipefail

documents=(
  "examples/showcase.typ"
  "standards/CCS-WKB-RPT-001/main.typ"
  "standards/CCS-FDD-RPT-001/main.typ"
)

for document in "${documents[@]}"; do
  echo "Building ${document}"
  ./build.sh "${document}"
done

echo "All documents built successfully."