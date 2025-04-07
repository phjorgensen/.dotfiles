#!/usr/bin/bash
rofi -dmenu \
    -p "Power" \
    -window-title "Power" \
    -input power-options.toml \
    -l 5 \
    -theme-str 'window {width: 12em;} listview {lines: 5;}' \
    -i \
    #-display-columns "label,command" \
    #-display-column-separator "," \
