#!/bin/bash

# author:	mintarchit
# version:	1.0


sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

$ohmyzsh

pth="$HOME"

cp -r $HOME/ghub/dotfiles/zsh/. $pth

chsh -s /bin/zsh
cat /etc/shells
echo "logout && login, so the change can take effect"
