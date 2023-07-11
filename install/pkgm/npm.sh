#!/bin/bash

# auto pkg installer / updater
dep_path="$HOME/ghub/dotfiles/pkgs/npm/package.json"

# g == global
done="npm install -g"
install="$cmd $dep_path"
upgrade="npm update -g"

title="figlet -ct \"NPM  Installer\" | lolcat"
txt0='printf "$done pkgs\n\n"'

cmd="$title && $upgrade && $txt0 && $install"
eval "$cmd"

echo -e "installed pkgs: $rq_path" | lolcat

