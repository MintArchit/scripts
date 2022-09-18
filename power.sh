#!/bin/bash

# author:	mintarchit
# version:	1.0

if [[ "$1" =~ .*"full".* ]]
then
	cmd=$(upower -e | grep BAT)
	upower -i $cmd
else
	acpi -i
	acpi -t
fi




#/sys/class/power_supply/BAT1/
