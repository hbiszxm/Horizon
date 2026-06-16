#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
TODAY="$(TZ=Asia/Shanghai date +'%Y-%m-%d')"
TARGET="../AI行业与运维日报/horizon-${TODAY}-zh.md"
mkdir -p logs

log() {
  echo "[$(date '+%F %T')] $*"
}

log "Checking Horizon daily briefing for ${TODAY}"

# First try to pull the cloud-generated briefing.
git pull --rebase origin main || log "git pull failed; will try local fallback if needed"
./scripts/sync-to-obsidian.sh || log "sync failed; will try local fallback if needed"

if [ -s "$TARGET" ]; then
  log "OK: ${TARGET} exists"
  exit 0
fi

log "Missing ${TARGET}; running local Horizon fallback"
./scripts/run-local.sh --hours 24

if [ -s "$TARGET" ]; then
  log "OK after local fallback: ${TARGET} exists"
  exit 0
fi

log "ERROR: ${TARGET} still missing after fallback"
exit 1
