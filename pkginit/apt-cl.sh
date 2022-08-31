#!/bin/bash

# auto pkg installer / updater

util_pkgs=(
	tty-clock
	git
	gh
	ncurses-examples
	sysvbanner 
	ttyload 
	xterm
	xorg
	alsa-utils
	ruby-github-markup 
	jp2a
	aview
	bb
	alsa-base
	alsa-tools
	alsa-firmware-loaders
	alsaplayer
	espeak
	elinks
	net-tools
	network-manager
	htop
	pwgen
	cloud-image-utils
	vifm
	vim
	neofetch
	testdisk
	trash-cli
	tldr
	tmux
	neovim
	most
	golang-go
	ttf-mscorefonts-installer
)

style_pkgs=(
	bb
	boxes 
	beep
	aewan
	libaa1
	libaa1-dev
	libaa-bin 
	toilet
	cowsay
	whiptail
	linuxlogo
	dialog
	lolcat
	pv
	nyancat
	cmatrix
	cbonsai
	sl
	fortune
	toilet
	figlet
	caca-utils
	cli-spinner
)

game_pkgs=(
	moon-buggy
	nsnake
	pacman4console
	ninvaders
	bastet
	nudoku
	2048
	bsdgames
	bsdgames-nonfree
	nethack-console
	fortune-mod
	gnuchess
	angband
	bombardier
	asciijump
	curseofwar
	greed
	crawl
	gearhead
	gearhead2
	moria
	tome
	zangband
)

prefix="sudo apt-get"
suffix="> stdout.txt 2> stderr.txt"

update="$prefix update -y $suffix"
upgrade="$prefix upgrade -qq -y"
install="$prefix install -q -y "${util_pkgs[@]}" "${style_pkgs[@]}" "${game_pkgs[@]}" $@ "

title="figlet -tc \"APT Installer\" | lolcat"
txt0='printf "sudo apt update"'
txt1='printf " / sudo apt upgrade"'
txt2='printf " / sudo apt install pkgs\n\n"'

cmd="$title && sudo -v && $txt0 && $update && $txt1 && $upgrade && $txt2 && $install"
eval "$cmd"

echo -e "\nutil: ${util_pkgs[@]}\n\nstyle: ${style_pkgs[@]}\n\nmind: ${game_pkgs[@]}" | lolcat
echo -e "\n fortune ~ $(fortune fortunes) \n"
