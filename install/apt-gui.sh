#!/bin/bash

# auto apt installer / updater

libs_pkgs=(
	libgdk-pixbuf2.0-dev
	libgjs-dev
	libwnck-3-dev
	libfreetype6-dev
	libfontconfig1-dev
	libxcb-xfixes0-dev 
	libxkbcommon-dev
	libaa1
	libaa1-dev
	libaa-bin
	libqt5svg5
	qml-module-qtquick-layouts
	qml-module-qtgraphicaleffects
	qml-module-qtquick-controls2
)

gui_pkgs=(
	pdfarranger
	font-manager
	mpv
	polybar
	picom
	gnome-tweaks
	gnome-shell-extensions 
	gnome-shell-extension-desktop-icons-ng 
	lxappearance
	audacity
	sddm
	i3
	nemo
)


prefix="sudo apt-get"
apt='$HOME/ghub/scripts/utils/apt.sh'

dep="$prefix install -q -y fortune figlet lolcat"
install="$prefix install -q -y "${libs_pkgs[@]}" "${gui_pkgs[@]}" $@ "

title="figlet -tc \"APT Installer\" | lolcat"
txt0='echo -ne "\rinstall dependencies"'
txt1='printf " / sudo apt install pkgs\n\n"'

cmd="$apt && $txt0 && $dep && $title && $txt1 && $install"
eval "$cmd"

echo -e "\nutil: ${util_pkgs[@]}\n\nstyle: ${style_pkgs[@]}\n\nmind: ${game_pkgs[@]}" | lolcat
