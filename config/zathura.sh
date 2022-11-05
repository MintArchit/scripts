#!/bin/bash

# author:	mintarchit
# version:	1.0

pth="$HOME/.config/zathura"
dot="$HOME/ghub/dotfiles/zathura/."

[ ! -d "$pth" ] && mkdir -p "$pth"
find $dot -maxdepth 1 ! -name ".*" | xargs -i cp {} -r $pth
