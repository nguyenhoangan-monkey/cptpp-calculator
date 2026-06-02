#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_DIR="$REPO_ROOT/calc/lib/data"

REPO_OWNER="nguyenhoangan-monkey"
REPO_NAME="cptpp-project"
BRANCH="main"

echo "Downloading compiled CPTPP binaries..."

rm -rf "$TARGET_DIR"
mkdir -p "$TARGET_DIR"

curl -sSL "https://github.com/$REPO_OWNER/$REPO_NAME/tarball/$BRANCH" \
  | tar -xzf - --strip-components=2 --directory="$TARGET_DIR" "*/cptpp/bin/"

echo "Binary synchronization complete. Files placed in calc/lib/data/"