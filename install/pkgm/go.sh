#!/bin/bash

# auto pkg installer / updater

util_pkgs=(
	github.com/antonmedv/countdown@latest
	github.com/charmbracelet/vhs@latest
)

style_pkgs=(
)

prefix="go"

install="$prefix install -v "${util_pkgs[@]}" "${style_pkgs[@]}" $@ "

title="figlet -ct \"Go  Installer\" | lolcat"
txt0='printf "go install pkgs\n\n"'

cmd="$title && $txt0 && $install"
eval "$cmd"

echo -e "util: ${util_pkgs[@]}\n\nstyle: ${style_pkgs[@]}" | lolcat
