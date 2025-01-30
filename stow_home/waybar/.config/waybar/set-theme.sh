#!/bin/sh

theme=$1

if [[ -z $theme ]]; then
  echo "No theme was passed"
  exit 1
fi

sourcePath=~/.config/waybar/themes/$theme

if [[ ! -d "$sourcePath" ]]; then
  echo "The theme does not exist"
  exit 1
fi

configFile=config.jsonc
configFilePath=$sourcePath/$configFile

if [[ ! -f "$configFilePath" ]]; then
  echo "The $configFile does not exist."
  exit 1
fi

styleFile=style.css
styleFilePath=$sourcePath/$styleFile

if [[ ! -f "$styleFilePath" ]]; then
  echo "The $styleFile does not exist."
  exit 1
fi

targetPath=~/.config/waybar

ln -sf $sourcePath/$configFile $targetPath/$configFile
ln -sf $sourcePath/$styleFile $targetPath/$styleFile

pkill waybar > /dev/null
hyprctl dispatch exec waybar > /dev/null

echo "The theme was set to \"$theme\"."
