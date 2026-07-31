#!/usr/bin/env bash
set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 <version>"
  echo
  echo "Example:"
  echo "  $0 v0.4.0"
  exit 1
fi

version="$1"

if [[ ! "$version" =~ ^v[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
  echo "ERROR: Version must use the format vMAJOR.MINOR.PATCH"
  echo "Example: v0.4.0"
  exit 1
fi

current_branch="$(git branch --show-current)"

if [[ "$current_branch" != "main" ]]; then
  echo "ERROR: Releases must be created from main."
  echo "Current branch: $current_branch"
  exit 1
fi

if [[ -n "$(git status --porcelain)" ]]; then
  echo "ERROR: Working tree is not clean."
  echo
  git status --short
  exit 1
fi

if git rev-parse "$version" >/dev/null 2>&1; then
  echo "ERROR: Tag $version already exists."
  exit 1
fi

echo "Fetching origin..."
git fetch origin

local_head="$(git rev-parse HEAD)"
remote_head="$(git rev-parse origin/main)"

if [[ "$local_head" != "$remote_head" ]]; then
  echo "ERROR: Local main does not match origin/main."
  echo "Push or pull changes before releasing."
  exit 1
fi

echo
echo "Running framework validation..."
./scripts/check.sh

echo
echo "Creating annotated tag $version..."
git tag -a "$version" -m "Release $version"

echo
echo "Pushing tag..."
git push origin "$version"

echo
echo "Release $version completed successfully."