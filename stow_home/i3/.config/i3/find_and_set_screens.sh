#!/bin/bash

whoami
date

LAPTOP_SCREEN="eDP-1"
OFFICE_SCREEN=""
HOME_SCREEN="DP-1-1"

getScreens() {
    xrandr | grep " connected "
}

getScreens

#SCREEN_PORTS=getScreens
#echo $SCREEN_PORTS

