#!/usr/bin/env bash

taskDescription=$(zenity --entry --title "Add new quick task" --width 500 --ok-label "Add" --text "Description")
currentDate=$(date +"%Y-%m-%dT%H:%M:%S%:z")
documentPath=~/Documents/notes/work/todo/"$taskDescription.md"

echo "---" >> "$documentPath"
echo "createdAt: $currentDate" >> "$documentPath"
echo "completedAt: " >> "$documentPath"
echo "tags:" >> "$documentPath"
echo "  - from-script" >> "$documentPath"
echo "---" >> "$documentPath"
echo "" >> "$documentPath"
echo "# $taskDescription" >> "$documentPath"
