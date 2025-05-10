#!/usr/bin/env bash

taskDescription=$(zenity --entry --title "Add new task" --width 500 --ok-label "Add" --text "Description")
currentDate=$(date +"%Y-%m-%dT%H:%M:%S%:z")
documentPath=~/Documents/notes/work/"$taskDescription.md"

echo "---" >> "$documentPath"
echo "createdAt: $currentDate" >> "$documentPath"
echo "completedAt: " >> "$documentPath"
echo "tags:" >> "$documentPath"
echo "  - from-script" >> "$documentPath"
echo "---" >> "$documentPath"
echo "" >> "$documentPath"
echo "# $taskDescription" >> "$documentPath"
