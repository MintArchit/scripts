#!/bin/bash

export NEWT_COLORS='
window=,red
border=white,red
textbox=white,red
button=black,white
'

whiptail --title "Title" --inputbox "Hello World!" 10 50
