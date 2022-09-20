#!/bin/bash

# author:	mintarchit
# version:	1.0

inum="235"
pth="/sys/class/backlight/*"
#ls $pth

max=$(cat $pth/max_brightness)
current=$(cat $pth/actual_brightness)

sudo -v
num="whiptail --inputbox \"max brightness: $max \\ncurrent brightness: $current\" 15 60 3>&1 1>&2 2>&3"
selected=$(eval $num)

cmd="echo $selected | sudo tee /sys/class/backlight/*/brightness"
setmax="echo $max | sudo tee /sys/class/backlight/*/brightness"

if [[ $? -eq 0 ]] && echo "whiptail was successful"
then
	if [[ "$selected" == "0" ]]
	then
		echo "0 not allowed, since that turns off the screen"
	elif [[ "$selected" == "max" ]]
	then
		eval "$setmax"
	else
		eval "$cmd"
	fi
elif [[ $? -eq 1 ]] 
then
	# echo "whiptail was canceled"
	exit 0
else
	exit 1
fi

#num=$(whiptail --inputbox "max brightness: $max \ncurrent brightness: $current" 15 60)

#echo $num | sudo tee /sys/class/backlight/*/brightness
