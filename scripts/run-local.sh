#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
uv run horizon "$@"
./scripts/sync-to-obsidian.sh
