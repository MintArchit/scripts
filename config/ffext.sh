#!/bin/bash

# author:	mintarchit
# version:	1.0


url="https://addons.mozilla.org/firefox/downloads/file"

exts=(
	4011167
	4004810
	4003179
	4000006
	3932862
	4003969
	3991959
	803960
	4039316
)

cmd="whiptail --yesno \"Interactive?\" 7 30 3>&1 1>&2 2>&3"

selected=$(eval $cmd)

for t in ${exts[@]}; do
	echo "$t"
	wget "$url/$t"
done

firefox *.xpi

cmd="whiptail --yesno \"delete downloaded files\" 7 30 3>&1 1>&2 2>&3"

selected=$(eval $cmd)

if [[ $? -eq 0 ]] && echo "deletion was selected"
then
	trash *xpi*
elif [[ $? -eq 1 ]] 
then
	echo "deletion was canceled"
	exit 0
else
	exit 1
fi
