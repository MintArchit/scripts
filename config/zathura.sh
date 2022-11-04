#!/bin/bash

# author:	mintarchit
# version:	1.0

pth="$HOME/.config/zathura"

[ ! -d "$pth" ] && mkdir -p "$pth"
cp $HOME/ghub/dotfiles/zathura/zathurarc $pth
