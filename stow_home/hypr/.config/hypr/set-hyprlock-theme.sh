#!/usr/bin/env bash

hyprConfigDir=~/.config/hypr
hyprlockThemesDir=$hyprConfigDir/hyprlock-themes

if [[ $# -eq 1 ]]; then
  themePath=$hyprlockThemesDir/$1

  if [[ ! -f "$themePath" ]]; then
    echo "\"$themePath\" is not a hyprlock theme"
    exit 1
  fi
else
  themePath=$(find $hyprlockThemesDir -mindepth 1 -maxdepth 1 | fzf)

  if [[ -z $themePath ]]; then
    echo "No theme was selected"
    exit 1
  fi
fi

ln -sf $themePath $hyprConfigDir/hyprlock.conf

echo "The theme was set to \"$themePath\"."
