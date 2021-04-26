#!/bin/bash

#Terminate existing polybar instances
killall -q polybar

#Wait until polybar shuts down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

#Launch polybar with default config
polybar status &
polybar status-mon2 &

#Tell the terminal that the bar was launched
echo "Polybar named "status" launched..."
