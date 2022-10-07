#!/bin/bash

# author:	mintarchit
# version:	1.0

printf 'application themes: '
ls --color /usr/share/themes

printf '\ncursor: '
find /usr/share/icons/ ~/.icons -type d -name "cursors"

printf '\ncurrent application theme: '
gsettings get org.gnome.desktop.interface gtk-theme

printf "\nstart lxappearance to preview themes"
