#!/bin/bash

# auto pkg installer / updater
rq_path="$HOME/ghub/dotfiles/pkgs/python/requirements.txt"

install="python3 -m pip install -r $rq_path"
upgrade="pip install --upgrade pip"

title="figlet -ct \"Pip  Installer\" | lolcat"
txt0='printf "pip install pkgs\n\n"'

cmd="$title && $upgrade && $txt0 && $install"
eval "$cmd"

echo -e "installed pkgs: $rq_path" | lolcat

