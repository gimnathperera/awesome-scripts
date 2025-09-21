#!/usr/bin/env bash
# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Clone Git Repo (SSH)
# @raycast.mode compact
#
# Optional parameters:
# @raycast.icon 🐙
# @raycast.argument1 { "type": "text", "placeholder": "SSH URL (git@github.com:org/repo.git)" }
# @raycast.argument2 { "type": "text", "placeholder": "Destination dir (optional)", "optional": true }
#
# Documentation:
# @raycast.author Gimnath
# @raycast.description Clone a Git repo (SSH) into a chosen directory

set -euo pipefail

REPO_URL="${1:-}"
DEST_DIR="${2:-/Users/gimnath/Developer/Dev_Space/Temp}"

if [[ -z "$REPO_URL" ]]; then
  echo "Missing SSH URL. Example: git@github.com:org/repo.git"
  exit 1
fi

# Ensure git exists (Raycast runs non-login shells sometimes)
if ! command -v git >/dev/null 2>&1; then
  if [[ -x "/opt/homebrew/bin/git" ]]; then
    export PATH="/opt/homebrew/bin:$PATH"
  fi
fi

if ! command -v git >/dev/null 2>&1; then
  echo "git not found. Install with 'brew install git'."
  exit 1
fi

mkdir -p "$DEST_DIR"

echo "Cloning into: $DEST_DIR"
cd "$DEST_DIR"
git clone --progress "$REPO_URL"
