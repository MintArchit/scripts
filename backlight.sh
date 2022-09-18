#!/bin/bash

# author:	mintarchit
# version:	1.0

inum="235"
pth="/sys/class/backlight/*"
#ls $pth

max=$(cat $pth/max_brightness)
current=$(cat $pth/actual_brightness)

#sudo -v
num="whiptail --inputbox \"max brightness: $max \\ncurrent brightness: $current\" 15 60 3>&1 1>&2 2>&3"
selected=$(eval $num)

echo $selected | sudo tee /sys/class/backlight/*/brightness

#num=$(whiptail --inputbox "max brightness: $max \ncurrent brightness: $current" 15 60)

#echo $num | sudo tee /sys/class/backlight/*/brightness
