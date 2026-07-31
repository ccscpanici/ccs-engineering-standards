#!/usr/bin/env bash
#
# CCS Engineering Standards Framework Validation
#
# Verifies:
#   - No deprecated imports remain
#   - No empty Typst files exist
#   - All documents compile successfully
#

set -euo pipefail

echo
echo "========================================"
echo " CCS Engineering Framework Validation"
echo "========================================"
echo

########################################
# Check for deprecated imports
########################################

echo "Checking for deprecated imports..."

stale_imports=$(
grep -RIn \
    --exclude-dir=.git \
    --exclude='framework.typ' \
    -E 'components/tables\.typ|framework/theme\.typ' \
    framework standards examples || true
)

if [[ -n "$stale_imports" ]]; then
    echo
    echo "ERROR: Deprecated imports found:"
    echo
    echo "$stale_imports"
    echo
    exit 1
fi

echo "✓ Import check passed."
echo

########################################
# Check for unexpected empty Typst files
########################################

echo "Checking for unexpected empty Typst files..."

allowlist="scripts/allowed-empty-typst.txt"

empty_files=$(
  find framework standards examples \
    -name "*.typ" \
    -type f \
    -empty \
    | sort
)

unexpected_empty_files=""

while IFS= read -r file; do
  [[ -z "$file" ]] && continue

  if [[ ! -f "$allowlist" ]] || ! grep -Fxq "$file" "$allowlist"; then
    unexpected_empty_files+="${file}"$'\n'
  fi
done <<< "$empty_files"

if [[ -n "$unexpected_empty_files" ]]; then
  echo
  echo "ERROR: Unexpected empty Typst files found:"
  echo
  printf "%s" "$unexpected_empty_files"
  echo
  exit 1
fi

echo "✓ Empty file check passed."
echo

########################################
# Build everything
########################################

echo "Building all documents..."
echo

./scripts/build-all.sh

echo
echo "✓ Build successful."
echo

########################################
# Finished
########################################

echo "========================================"
echo " Framework validation PASSED"
echo "========================================"
echo