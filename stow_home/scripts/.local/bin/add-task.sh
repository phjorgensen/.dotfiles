#!/usr/bin/env bash

taskDescription=$(zenity --entry --title "Add new quick task" --width 500 --ok-label "Add" --text "Description")
if [ -z "$taskDescription" ]; then
  echo "No input was provided. A new file was not created."
  exit 0
fi

documentPath=~/Documents/notes/work/todo/"$taskDescription.md"
if [ -f "$documentPath" ]; then
  echo "A file with the same name already exists. A new file was created with a timestamp."
  zenity --warning --title "File exists" --text "A file with the same name already exists.\nA new file was created with a timestamp." --width 350
  timestamp=$(date +"%Y-%m-%d %H:%M:%S")
  documentPath=~/Documents/notes/work/todo/"$taskDescription $timestamp.md"
fi

currentDate=$(date +"%Y-%m-%dT%H:%M:%S%:z")

echo "---" >> "$documentPath"
echo "createdAt: $currentDate" >> "$documentPath"
echo "completedAt: " >> "$documentPath"
echo "tags:" >> "$documentPath"
echo "  - from-script" >> "$documentPath"
echo "  - todo" >> "$documentPath"
echo "---" >> "$documentPath"
echo "" >> "$documentPath"
echo "# $taskDescription" >> "$documentPath"
