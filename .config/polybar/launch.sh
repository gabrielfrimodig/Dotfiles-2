#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch dummy bar & main bar defined in config file
polybar -r dummybar &
sleep 1
polybar -r mainbar &
