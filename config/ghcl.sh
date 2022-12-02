#!/bin/bash

# author:	mintarchit
# version:	1.0

ghcl="gh repo clone"
gpath="$HOME/ghub/."

cmd="$ghcl dotfiles && $ghcl notes && $ghcl db"

eval $cmd
