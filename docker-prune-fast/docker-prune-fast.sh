#!/usr/bin/env bash
# @raycast.schemaVersion 1
# @raycast.title Docker Prune (aggressive)
# @raycast.mode compact

docker system prune -af --volumes
echo "🐳 Docker cleaned"
