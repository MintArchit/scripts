#!/bin/bash

# auto pkg installer / updater

util_pkgs=(

)

style_pkgs=(
	colorls
	lolcat
)

prefix="gem"
suffix="> stdout.txt 2> stderr.txt"

install="$prefix install "${util_pkgs[@]}" "${style_pkgs[@]}" $@ "

title="figlet -ct \"Gem  Installer\""
txt0='printf "gem install pkgs\n\n"'

cmd="$title && $txt0 && $install"
eval "$cmd"

echo -e "util: ${util_pkgs[@]}\n\nstyle: ${style_pkgs[@]}" | lolcat
