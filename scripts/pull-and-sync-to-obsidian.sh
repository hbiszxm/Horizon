#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."

# Pull GitHub Actions archived daily briefings, then sync them into Obsidian.
git pull --rebase origin main
./scripts/sync-to-obsidian.sh
