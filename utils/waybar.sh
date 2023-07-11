#!/bin/bash

CONFIG="$HOME/.config/waybar/config"
STYLE="$HOME/.config/waybar/style.css"

if [[ ! -z $(pgrep -x "waybar") ]];
then
killall waybar
echo "kill done"
waybar -c $CONFIG -s $STYLE > /dev/null 2>&1 &
else 
if [[ $(pgrep -x "waybar") = "" ]];
then
echo "launched"
waybar -c $CONFIG -s $STYLE > /dev/null 2>&1 &
fi
fi
