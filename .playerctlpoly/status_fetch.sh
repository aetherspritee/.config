#!/usr/bin/env bash

PLAYERCTL_STATUS=$(playerctl status 2>/dev/null)
EXIT_CODE=$?

if [ $EXIT_CODE -eq 0 ]; then
    STATUS=$PLAYERCTL_STATUS
fi

if [ "$STATUS" = "Playing" ]; then
    echo "  "
fi

if [ "$STATUS" = "Paused" ]; then
    echo " 契 "
fi
