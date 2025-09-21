#!/usr/bin/env bash
# @raycast.schemaVersion 1
# @raycast.title Flush DNS
# @raycast.mode compact

sudo dscacheutil -flushcache
sudo killall -HUP mDNSResponder
echo "🧠 DNS cache flushed"
