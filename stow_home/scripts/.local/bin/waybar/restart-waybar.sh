#!/usr/bin/env bash

# Terminate already running bar instances
pkill waybar > /dev/null

# Wait until the processes have been shut down
while pgrep -x waybar >/dev/null; do sleep 1; done

# Launch main
hyprctl dispatch exec waybar > /dev/null
