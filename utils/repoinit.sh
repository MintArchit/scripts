#!/bin/bash

# author:	mintarchit
# version:	1.0

# repoinit.sh [[repo-name]]

echo "# $1" >> README.md
git init
git add README.md
git commit -m "repo init"
git branch -M main
gh repo create $1 --public --source=. --remote=upstream
git remote add origin https://github.com/MintArchit/$1.git
git push -u origin main

