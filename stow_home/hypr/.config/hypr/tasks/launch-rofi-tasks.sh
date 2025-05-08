#!/usr/bin/env bash

rofi -show tasks -modes "tasks:~/.local/bin/go-tmux-sessionizer" -p "Tasks" -window-title "Tasks" -l 5 -i -theme-str "window {width: 80em;} listview {lines: 10;}"
