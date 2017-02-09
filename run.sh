#!/usr/bin/env bash

set -e

if [ ! -f /config/scalyr/agent.json ]; then
  echo "ERROR: /config/scalyr/agent.json not present" 1>&2
  exit 1
fi

cp -f /config/scalyr/agent.json /etc/scalyr-agent-2/agent.json

/usr/sbin/scalyr-agent-2 --no-fork --no-change-user start 2>&1
