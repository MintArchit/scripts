#!/bin/bash

# author:	mintarchit
# version:	1.0

pth="$HOME/.config/mpv"
[ ! -d "$pth" ] && mkdir "$pth"
cp -r $HOME/ghub/dotfiles/mpv/. $HOME/.config/mpv/.
