#!/bin/bash

# author:	mintarchit
# version:	1.0

pth="$HOME/.config/vifm"
dot="$HOME/ghub/dotfiles/vifm/."

[ ! -d "$pth" ] && mkdir -p "$pth"
find $dot -maxdepth 1 ! -name ".*" | xargs -i cp {} -r $pth
