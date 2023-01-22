#!/bin/bash

# author:	mintarchit
# version:	1.0

if whiptail --yesno "Is this a good question" 20 60 ;then
    echo Yes
else
    echo No
fi

#read -t 3 -n 1 -p "Is this a good question (Y/n)? " answer
#[ -z "$answer" ] && answer="Yes"  # if 'yes' have to be default choice

