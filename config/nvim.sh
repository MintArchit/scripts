#!/bin/bash

# author:	mintarchit
# version:	1.0

phnvim="$HOME/.config/nvim/"

mkdir $phnvim

cp $HOME/ghub/dotfiles/nvim/init.vim $phnvim

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
