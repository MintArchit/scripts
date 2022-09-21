#!/bin/bash

# author:	mintarchit
# version:	1.0

pth0="../dotfiles/firefox"
pth1="$HOME/snap/firefox/common/.mozilla/firefox/*.default"
cp -r "$pth0/chrome" $pth1

mkdir -p /etc/firefox/policies/
cp -r "$pth0/policies.json" "/etc/firefox/policies/"
