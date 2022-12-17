#!/bin/bash

# author:	mintarchit
# version:	1.0

pth0="$HOME/ghub/dotfiles/ff"
pth1="$HOME/snap/firefox/common/.mozilla/firefox/*.default"
pth2="$HOME/snap/firefox/common/.cache/mozilla/firefox/*.default"
cp -r "$pth0/chrome" $pth1
#cp -r "$pth0/user.js" $pth1

#sudo mkdir -p /etc/firefox/policies
#sudo cp -r "$pth0/policies.json" "/etc/firefox/policies/"

#$HOME/ghub/scripts/config/ffext.sh
