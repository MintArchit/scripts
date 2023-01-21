#!/bin/bash

# author:	mintarchit
# version:	1.0

pth="$HOME/.config/ytdlp"
[ ! -d "$pth" ] && mkdir "$pth"

cp -r $HOME/ghub/dotfiles/ytdlp/. $pth

