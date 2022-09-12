#!/bin/bash

export NEWT_COLORS='
window=,red
border=white,red
textbox=white,red
button=black,white
'

args=(
	--title  "Title"
	--menu "Choose"
	25 78 16
	"One" ""
	"Two" ""
	"Three" ""
	
)

selected=$(whiptail "${args[@]}" 3>&1 1>&2 2>&3)
eval $selected
echo "$selected"
