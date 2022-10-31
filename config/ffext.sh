#!/bin/bash

# author:	mintarchit
# version:	1.0


url="https://addons.mozilla.org/firefox/downloads/file"

exts=(
	4011167/traduzir_paginas_web-9.6.1.xpi
	4004810/tree_style_tab-3.9.5.xpi
	4003179/tst_indent_line-1.2.1.xpi
	4000006/facebook_container-2.3.4.xpi
	3932862/multi_account_containers-8.0.7.xpi
	4003969/ublock_origin-1.44.4.xpi
	3991959/yet_another_speed_dial-2.4.0.xpi
	803960/strict_pop_up_blocker-0.6.xpi
)


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
