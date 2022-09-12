#!/bin/bash

# author:	mintarchit
# version:	1.0

cmds=(
	$tst
	#$ohmyzsh
	#$powerlevel10
	#$sed_zsh
)

tst="echo tst"
ohmyzsh="sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)""

powerlevel10="git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"

sed_zsh="sed -e s@ZSH_THEME=\"robbyrussell\"@ZSH_THEME=\"powerlevel10k/powerlevel10k\"@g  -i dev_zshrc"

eval "${cmds[@]}"
