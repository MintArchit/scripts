#!/bin/bash

# author:	mintarchit
# version:	1.0

pth="/usr/share/sddm/themes/."
dot="$HOME/ghub/dotfiles/sddm/themes/."

[ ! -d "$pth" ] && mkdir -p "$pth"
find $dot -maxdepth 1 ! -name ".*" | xargs -i sudo cp {} -r $pth


sudo cp $HOME/ghub/dotfiles/sddm/sddm.conf /etc/.
