#!/bin/bash

# auto apt installer / updater

lang_pkgs=(
	python3
	python-is-python3
	python3-pip
	python3.10-venv
	ruby
	cargo
	#2GB
	texlive-full
)

gui_pkgs=(
	pdfarranger
)

util_pkgs=(
	renameutils
	socat
	blueman
	fonts-firacode
	font-manager
	mpv
	btscanner
	polybar
	picom
	gzip
	plocate
	cmake
	pkg-config
	libfreetype6-dev
	libfontconfig1-dev
	libxcb-xfixes0-dev 
	libxkbcommon-dev
	gnome-tweaks
	gnome-shell-extensions 
	gnome-shell-extension-desktop-icons-ng 
	lxappearance
	gtk-chtheme
#	qt4-qtconfig
	fbterm
	sleepenh
	sqlite3
	curl
	apt-utils
	i3
	feh
	nemo
	bluez
	ffmpeg
#	pup
	recode
	jq
	acpi
	powertop
	zsh
	tty-clock
#	cronie
	wget
	git
	gh
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
apt="$HOME/ghub/scripts/utils/apt.sh"

dep="$prefix install -q -y fortune figlet lolcat"
install="$prefix install -q -y "${lang_pkgs[@]}" "${gui_pkgs[@]}" "${util_pkgs[@]}" "${style_pkgs[@]}" "${game_pkgs[@]}" $@ "

title="figlet -tc \"APT Installer\" | lolcat"
txt0='echo -ne "\rinstall dependencies"'
txt1='printf " / sudo apt install pkgs\n\n"'

cmd="$apt && $txt0 && $dep && $title && $txt1 && $install"
eval "$cmd"

echo -e "\nutil: ${util_pkgs[@]}\n\nstyle: ${style_pkgs[@]}\n\nmind: ${game_pkgs[@]}" | lolcat
