#!/bin/bash

# author:	mintarchit
# version:	1.0


url="https://addons.mozilla.org/firefox/downloads/file"

exts=(
	4011167
	#4004810
	4003179
	4000006
	3932862
	4003969
	3991959
	803960
	4039316
)

default=0
interactive=1
yn=0
ffstring=""
ffstring+="-new-tab www.example.com "

while true; do
    read -e -n 1 -p "Interactive Installation (y/N)? " ync
    case $ync in
        [Yy]   ) interactive=0; break;;
        [Nn]   ) interacitve=1; break;;
        ''     ) interactive=1; break;;
		* ) echo "Please answer with y(es), n(o) or c(ancel).";;
    esac
done

for t in ${exts[@]}; do
	if [[ $interactive -eq 0 ]]
	then
		while true; do
		    read -e -n 1 -p "Install Extension $t (Y/n)? " ync
		    case $ync in
		        [Yy]   ) yn=0; break;;
		        [Nn]   ) yn=1; break;;
		        ''     ) yn="$default"; break;;
				* ) echo "Please answer with y(es), n(o) or c(ancel).";;
		    esac
		done
	fi
	if [[ $yn -eq 0 ]]
	then
		#wget "$url/$t"
		ffstring+="-new-tab $url/$t "
		#ffstring+="$url/$t "
		#ffstring+="$url/$t/ "
	fi
done

echo "firefox $ffstring"
firefox --new-window $ffstring
