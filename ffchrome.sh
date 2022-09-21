#!/bin/bash

# author:	mintarchit
# version:	1.0

pth="$HOME/snap/firefox/common/.mozilla/firefox/*.default"
cp -r ../dotfiles/firefox/chrome $pth
