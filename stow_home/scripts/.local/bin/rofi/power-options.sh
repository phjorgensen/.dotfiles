#!/usr/bin/env bash

if [ x"$@" = x"Lock" ]; then
  loginctl lock-session
  exit 0
elif [ x"$@" = x"Suspend" ]; then
  systemctl suspend
  exit 0
elif [ x"$@" = x"Logout" ]; then
  loginctl terminate-user $USER
  exit 0
elif [ x"$@" = x"Shutdown" ]; then
  systemctl poweroff
  exit 0
elif [ x"$@" = x"Reboot" ]; then
  systemctl reboot
  exit 0
fi

echo "Lock"
echo "Suspend"
echo "Logout"
echo "Shutdown"
echo "Reboot"
