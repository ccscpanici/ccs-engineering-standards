#!/usr/bin/env bash
set -e

typst compile \
    --root . \
    "$1" \
    "${1%.typ}.pdf"