#!/bin/bash

# author:	mintarchit
# version:	1.0


powerlevel10="git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"

$powerlevel10

cp $HOME/ghub/dotfiles/zsh/.p10k.zsh ~

echo "reopen terminal"
