#!/bin/bash

# author:	mintarchit
# version:	1.0

pth="$HOME/.config/kitty"

[ ! -d "$pth" ] && mkdir "$pth"

cp -r $HOME/ghub/dotfiles/kitty/. $pth
