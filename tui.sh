#!/bin/bash

os="$HOME/os"

export NEWT_COLORS='
root=,black
window=white,black
border=magenta,black
shadow=,white
title=white,black
textbox=white,black
button=black,white
entry=,black
checkbox=,black
compactbutton=white,black
actbutton=green,black
listbox=white,black
actlistbox=black,green
sellistbox=green,magenta
'

args=(
	# --fullbuttons adds wonky shadow + border selection still same size
	--ok-button \" Start \"
	--cancel-button \" Exit \"
	--notags
	# --scrolltext
	--title  \" VmStart \"
	# --backtitle \"vmstart\"
	
)

txt='"\nKeys | ← → Navigate User Interface | ↑ selection up | ↓ selection down | \n\nSelect which machine should be started:"'
tst='"line 0\nline 1\nline 2\nline 3\nline 4\nline 5\nline 6\nline 7\nline 8\nline 9\n"'

vms=$(ls $os/conf | awk 'NF { print "\""$0"\"" " " "\" > "$0" .............\""}')

cmd="whiptail "${args[@]}" --menu "$txt" 20 78 9 "${vms[@]}" 3>&1 1>&2 2>&3"
echo ""$cmd"" | lolcat

while :
do
	selected=$(eval ""$cmd"")
	if [ $? -eq 0 ] && echo "whiptail was successful"
	then
		echo "started $selected"
		eval "$os/conf/$selected"
	elif [ $? -eq 1 ] 
	then
		# echo "whiptail was canceled"
		exit 0
	else
		exit 1
	fi
done
