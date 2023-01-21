#!/bin/bash

# author:	mintarchit
# version:	1.0

pth="$HOME/.config/tmuxp"
[ ! -d "$pth" ] && mkdir "$pth"

cp -r $HOME/ghub/dotfiles/tmuxp/. $pth

