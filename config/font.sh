#!/bin/bash

# author:	mintarchit
# version:	1.0

mkdir ~/.fonts
cp $HOME/ghub/dotfiles/font/*.ttf ~/.fonts
fc-cache -fv
