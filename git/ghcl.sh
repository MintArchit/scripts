#!/bin/bash

# author:	mintarchit
# version:	1.0

ghcl="gh repo clone"

cmd="$ghcl dotfiles && $ghcl notes && $ghcl db"

eval $cmd
