#!/usr/bin/env bash
# Open local project resources: Cursor, Zed, and GitHub

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Launch Cursor editor in the project directory
if command -v cursor >/dev/null 2>&1; then
  cursor "$SCRIPT_DIR" &
else
  echo "Warning: cursor command not found" >&2
fi

# Launch Zed editor in the project directory
if command -v zeditor >/dev/null 2>&1; then
  zeditor "$SCRIPT_DIR" &
else
  echo "Warning: zeditor command not found" >&2
fi

# Open GitHub in Firefox
if command -v firefox >/dev/null 2>&1; then
  firefox "https://github.com" &
else
  echo "Warning: firefox command not found" >&2
fi
