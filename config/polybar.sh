#!/bin/bash

# author:	mintarchit
# version:	1.0

pth="$HOME/.config/polybar"
[ ! -d "$pth" ] && mkdir "$pth"
cp $HOME/ghub/dotfiles/polybar/launch.sh $HOME/.config/polybar/.
cp $HOME/ghub/dotfiles/polybar/config.ini $HOME/.config/polybar/.
cp $HOME/ghub/dotfiles/polybar/colors.ini $HOME/.config/polybar/.
