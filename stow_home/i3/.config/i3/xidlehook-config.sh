#!/usr/bin/env bash

xidlehook \
  --not-when-fullscreen \
  --not-when-audio \
  --timer 180 'brightnessctl set 5% --save' 'brightnessctl --restore' \
  --timer 30 'i3lock -c 2B2B2B; brightnessctl --restore;' '' \
  --timer 3600 'systemctl suspend' ''
