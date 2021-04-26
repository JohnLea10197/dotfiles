#!/bin/sh
#if ! mpc >/dev/null 2>&1; then
#  echo Server offline
#  exit 1
#elif mpc status | grep -q playing; then
# ( mpc current | zscroll -b " " -p "" -l 20 -d 0.3 -n 1 ) &
#else
#  echo Not playing
#fi
## Block until an event is emitted
#mpc idle >/dev/null

zscroll --before-text "♪ x" --delay 0.3 -l 20 \
		--match-command "mpc status" \
		--match-text "playing" "--before-text ' '" \
		--match-text "paused" "--before-text ' ' --scroll 0" \
		--update-check true "mpc current" &

wait
