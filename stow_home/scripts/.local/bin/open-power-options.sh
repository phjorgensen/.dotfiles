#!/usr/bin/env bash

rofi -show power -modes "power:~/.local/bin/rofi/power-options.sh" -p "Power" -window-title "Power" -l 5 -i -theme-str "window {width: 12em;} listview {lines: 5;}"
