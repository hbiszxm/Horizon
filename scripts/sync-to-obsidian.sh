#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
TARGET="../AI行业与运维日报"
mkdir -p "$TARGET"
shopt -s nullglob
for f in data/summaries/horizon-*-zh.md; do
  cp "$f" "$TARGET/$(basename "$f")"
done
printf 'Synced Horizon summaries to %s\n' "$TARGET"
