#!/bin/bash

# auto pkg installer / updater

util_pkgs=(
	termdown
	trash-cli
)

style_pkgs=(
)

prefix="pip"
suffix="> stdout.txt 2> stderr.txt"

install="$prefix install "${util_pkgs[@]}" "${style_pkgs[@]}" $@ "
upgrade="pip install --upgrade pip"

title="figlet -ct \"Pip  Installer\" | lolcat"
txt0='printf "pip install pkgs\n\n"'

cmd="$title && $upgrade && $txt0 && $install"
eval "$cmd"

echo -e "util: ${util_pkgs[@]}\n\nstyle: ${style_pkgs[@]}" | lolcat
