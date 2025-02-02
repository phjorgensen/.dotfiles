#!/usr/bin/env bash

waylandConfigFolderPath=~/.config/waybar
waybarThemesFolderPath=$waylandConfigFolderPath/themes

if [[ $# -eq 1 ]]; then
  themeFolderPath=$waybarThemesFolderPath/$1

  if [[ ! -d "$themeFolderPath" ]]; then
    echo "\"$themeFolderPath\" is not a waybar theme"
    exit 1
  fi
else
  themeFolderPath=$(find $waybarThemesFolderPath -mindepth 1 -maxdepth 1 -type d | fzf)

  if [[ -z $themeFolderPath ]]; then
    echo "No theme was selected"
    exit 1
  fi
fi

configFile=config.jsonc
configFilePath=$themeFolderPath/$configFile

if [[ ! -f "$configFilePath" ]]; then
  echo "The $configFile does not exist at $configFilePath."
  exit 1
fi

styleFile=style.css
styleFilePath=$themeFolderPath/$styleFile

if [[ ! -f "$styleFilePath" ]]; then
  echo "The $styleFile does not exist at $styleFilePath."
  exit 1
fi

ln -sf $themeFolderPath/$configFile $waylandConfigFolderPath/$configFile
ln -sf $themeFolderPath/$styleFile $waylandConfigFolderPath/$styleFile

~/.local/bin/waybar/restart-waybar.sh

echo "The theme was set to \"$themeFolderPath\"."
