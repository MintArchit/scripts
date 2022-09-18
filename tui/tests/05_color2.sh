#!/bin/bash

export NEWT_COLORS='
root=,green
window=,black
border=white,black
shadow=white,gray
textbox=white,black
button=black,white
entry=,black
checkbox=,black
compactbutton=green,
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
echo "$selected"
