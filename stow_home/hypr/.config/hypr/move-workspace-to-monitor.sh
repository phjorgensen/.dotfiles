#!/usr/bin/env bash

foo="$(hyprctl dispatch movecurrentworkspacetomonitor l)"

if [[ $foo != "ok" ]]; then
  hyprctl dispatch movecurrentworkspacetomonitor r
fi
