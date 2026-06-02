#!/usr/bin/env bash
set -euo pipefail

# Find the repository root dynamically so the script works from anywhere
REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TARGET_DIR="$REPO_ROOT/lib/data"

REPO_OWNER="nguyenhoangan-monkey"
REPO_NAME="cptpp-parser"
BRANCH="main"

echo "Downloading all CPTPP data files..."

# Ensure target directory is clean and fresh
rm -rf "$TARGET_DIR"
mkdir -p "$TARGET_DIR"

# Download the tarball stream, filter for only the data folder contents, 
# and extract them flat directly into lib/data/
curl -sSL "https://github.com/$REPO_OWNER/$REPO_NAME/tarball/$BRANCH" \
  | tar -xzf - --strip-components=2 --directory="$TARGET_DIR" "*/data/"

echo "Data sync complete."