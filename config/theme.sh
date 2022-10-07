#!/bin/bash

# author:	mintarchit
# version:	1.0

cfg="$HOME/ghub/dotfiles/theme"

cp $cfg/.gtkrc-2.0 ~/.
cp -r $cfg/gtk-3.0 ~/.config/.
cp -r $cfg/.icons ~/.
