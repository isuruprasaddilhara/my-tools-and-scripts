#!/bin/bash

STATUS="$1"  

if [ "$STATUS" = "on" ]; then
    xset led 3
elif [ "$STATUS" = "off" ]; then
    xset -led 3
else
    echo "Usage: $0 on/off"
    exit 1
fi
