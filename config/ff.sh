#!/bin/bash

# author:	mintarchit
# version:	1.0

pth0="$HOME/ghub/dotfiles/ff"
ffpth=""
ffpth_ubuntu="$HOME/snap/firefox/common"
ffpth_arch="$HOME"

read -p "Choose OS (Arch,Ubuntu,Other) [a/u/O]? " -n 1 -r;echo
[[ $REPLY =~ ^[Aa]$ ]] && ffpth=$ffpth_arch
[[ $REPLY =~ ^[Uu]$ ]] && ffpth=$ffpth_ubuntu
if [[ $REPLY =~ ^[Oo]$ ]];then printf "Error: unsuppported os, modify script.\n";exit 1;fi
if [[ -z "$ffpth" ]];then printf "Error: faulty input.\n";exit 1;fi

pth_default="$ffpth/.mozilla/firefox/*.default"
pth_default_release="$ffpth/.mozilla/firefox/*.default-release"
pth2="$ffpth/.cache/mozilla/firefox/*.default"
cp -r "$pth0/chrome" $pth_default
cp -r "$pth0/chrome" $pth_default_release
#cp -r "$pth0/user.js" $pth1

#sudo mkdir -p /etc/firefox/policies
#sudo cp -r "$pth0/policies.json" "/etc/firefox/policies/"

read -p "Install extensions?[y/N]? " -n 1 -r;echo
[[ $REPLY =~ ^[Yy]$ ]] && $HOME/ghub/scripts/config/ffext.sh

