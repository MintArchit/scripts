#!/bin/bash

# author:	mintarchit
# version:	1.0

while true; do
    read -p "Do you wish to install this program? " yn
    case $yn in
        [Yy]* ) e install; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

