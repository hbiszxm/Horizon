#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
TARGET="../AI行业与运维日报"
mkdir -p "$TARGET"
shopt -s nullglob

# Prefer GitHub Actions archived briefings after `git pull`.
files=(daily-briefings/horizon-*-zh.md)
if [ ${#files[@]} -eq 0 ]; then
  files=(data/summaries/horizon-*-zh.md)
fi

for f in "${files[@]}"; do
  cp "$f" "$TARGET/$(basename "$f")"
done
printf 'Synced %d Horizon summaries to %s\n' "${#files[@]}" "$TARGET"
