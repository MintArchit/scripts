#!/bin/bash

# author:	mintarchit
# version:	1.0

pth="$HOME/.config/rofi"
dot="$HOME/ghub/dotfiles/rofi/."

[ ! -d "$pth" ] && mkdir -p "$pth"
find $dot -maxdepth 1 ! -name ".*" | xargs -i cp {} -r $pth
