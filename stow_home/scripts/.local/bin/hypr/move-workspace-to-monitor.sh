#!/bin/sh

foo="$(hyprctl dispatch movecurrentworkspacetomonitor l)"

if [[ $foo != "ok" ]]; then
  hyprctl dispatch movecurrentworkspacetomonitor r
fi
