#!/bin/bash

# author:	mintarchit
# version:	1.0

default="y"

while true; do
    read -e -n 1 -p "Do you wish to install this program(Y/n/c/?)? " ync
    case $ync in
        [Yy]   ) yn="y"; break;;
        [Nn]   ) yn="n"; break;;
        ''      ) yn="$default"; break;;
        [Cc]   ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo "Result of Question: $yn"

