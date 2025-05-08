#!/usr/bin/env bash

OLD_IFS=$IFS
IFS=$'\n'

exec < ~/.config/hypr/tasks/tasks.csv
read header

declare -a tasks

while read line
do
  tasks+=$line
done


if [ x"$@" = x"Lock" ]; then
  # complete the existing task
  exit 0
elif [ x"$@" = x"Reboot" ]; then
  # complete the existing task
  exit 0
elif [ ! -z "$@" ]; then
  echo "$@," >> ~/.config/hypr/tasks/tasks.csv
  exit 0
fi


for task in `echo "${tasks[@]}"`; do
  echo $task
done

IFS = $OLD_IFS
