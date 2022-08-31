#!/bin/bash

export NEWT_COLORS='
window=,red
border=white,red
textbox=white,red
button=black,white
'

input=$(whiptail --title "Title" --inputbox "Hello World!" 10 50 3>&1 1>&2 2>&3)

echo "$input"
