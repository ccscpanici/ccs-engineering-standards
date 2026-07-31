#!/usr/bin/env bash
set -euo pipefail

echo "Building examples..."

while IFS= read -r source; do
  echo "  ${source}"
  ./build.sh "${source}"
done < <(
  find examples \
    -maxdepth 1 \
    -type f \
    -name '*.typ' \
    ! -name '*-metadata.typ' \
    | sort
)

echo
echo "Building standards..."

while IFS= read -r source; do
  echo "  ${source}"
  ./build.sh "${source}"
done < <(
  find standards \
    -mindepth 2 \
    -maxdepth 2 \
    -type f \
    -name 'main.typ' \
    | sort
)

echo
echo "All documents built successfully."