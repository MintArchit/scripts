#!/bin/bash

# pkg installer / updater

util_pkgs=(
	tty-clock
	git
	gh
#	ncurses-examples
#	sysvbanner 
#	ttyload 
#	xterm
#	xorg
#	alsa-utils
#	ruby-github-markup 
	jp2a
	aview
#	alsa-base
#	alsa-tools
#	alsa-firmware-loaders
#	alsaplayer
	espeak
	elinks
	net-tools
#	network-manager
	htop
	pwgen
#	cloud-image-utils
	vifm
	vim
	neofetch
#	testdisk
#	trash-cli
#	tldr
	tmux
	neovim
	most
#	golang-go
#	ttf-mscorefonts-installer
)

style_pkgs=(
#	bb
#	boxes 
#	beep
#	aewan
#	libaa1
#	libaa1-dev
#	libaa-bin 
	toilet
	cowsay
	whiptail
#	linuxlogo
	dialog
#	lolcat
	pv
	nyancat
	cmatrix
#	cbonsai
	sl
	fortune
	toilet
	figlet
#	caca-utils
#	cli-spinner
)

game_pkgs=(
	moon-buggy
	nsnake
	pacman4console
	ninvaders
	bastet
	nudoku
#	2048
#	bsdgames
#	bsdgames-nonfree
#	nethack-console
#	fortune-mod
	gnuchess
	angband
#	bombardier
#	asciijump
	curseofwar
	greed
	crawl
#	gearhead
#	gearhead2
	moria
#	tome
#	zangband
)

pwd

prefix="pkg"
suffix="> stdout.txt 2> stderr.txt"

apt="./pkg/$prefix.sh"
install="$prefix install -y "${util_pkgs[@]}" "${style_pkgs[@]}" "${game_pkgs[@]}" $@ "
dep="$prefix install -q -y fortune figlet"

txt0='echo -ne "\rinstall dependencies"'
title="figlet -tc \"PKG Installer\""
txt1='printf " / pkg install pkgs\n\n"'

cmd="$apt txt0 && $dep && $title && $txt1 && $install"
eval "$cmd"

echo -e "\nutil: ${util_pkgs[@]}\n\nstyle: ${style_pkgs[@]}\n\nmind: ${game_pkgs[@]}"
echo -e "\n fortune ~ $(fortune) \n"
