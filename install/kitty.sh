#!/bin/bash

# author:	mintarchit
# version:	1.0

curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin dest=~/.local/stow launch=n
cd ~/.local/stow
stow -v kitty.app
