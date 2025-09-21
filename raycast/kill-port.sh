#!/usr/bin/env bash
# @raycast.schemaVersion 1
# @raycast.title Kill Port
# @raycast.mode compact
# @raycast.argument1 { "type": "text", "placeholder": "Port (e.g. 3000)" }

PORT="$1"
pids=$(lsof -ti :"$PORT" || true)
[[ -n "$pids" ]] && kill -9 $pids && echo "🔪 Killed $pids on :$PORT" || echo "No process on :$PORT"

