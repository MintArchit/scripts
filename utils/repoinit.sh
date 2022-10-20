#!/bin/bash

# author:	mintarchit
# version:	1.0

# repoinit.sh [[repo-name]]

privacy='public'
while true; do
	read -p "should this repo be public (y/n) " yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) privacy='private' break;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo "# $1" >> README.md
git init
git add README.md
git commit -m "repo init"
git branch -M main
gh repo create $1 --$privacy --source=. --remote=upstream
git remote add origin https://github.com/MintArchit/$1.git
git push -u origin main

