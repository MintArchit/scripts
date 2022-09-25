!/bin/bash

# author:	mintarchit
# version:	1.0


ohmyzsh="sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)""

powerlevel10="git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"


#$ohmyzsh
#$powerlevel10
cp ../dotfiles/sh/.zshrc ~

#chsh -s /bin/zsh
#cat /etc/shells
echo "logout && login, so the change can take effect"
