#!/bin/bash

# author:	mintarchit
# version:	1.0

pth="$HOME/.config/nvim"
[ ! -d "$pth" ] && mkdir "$pth"

cp $HOME/ghub/dotfiles/nvim/init.vim $pth

#sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       #https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
