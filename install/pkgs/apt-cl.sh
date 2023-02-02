#!/bin/bash

# auto apt installer / updater

lang_pkgs=(
	postgresql
	python3
	python-is-python3
	python3-pip
	python3.10-venv
	ruby
	cargo
	#2GB
	texlive-full
	#golang-go
	#gccgo-go
)

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
	libc6:i386
	libncurses5:i386
	libstdc++6:i386
	lib32z1
	libbz2-1.0:i386
	qml-module-qtquick-layouts
	qml-module-qtgraphicaleffects
	qml-module-qtquick-controls2
)

util_pkgs=(
	ttyrec
	gcc
	x11-apps
	xdotool
	make
	gnome-shell-pomodoro
	tree
	gnupg2
	stow
	pm-utils
	renameutils
	socat
	blueman
	fonts-firacode
	btscanner
	gzip
	plocate
	cmake
	pkg-config
	gtk-chtheme
#	qt4-qtconfig
	fbterm
	sleepenh
	sqlite3
	curl
	apt-utils
	feh
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
apt='$HOME/ghub/scripts/utils/apt.sh'

dep="$prefix install -q -y fortune figlet lolcat"
install="$prefix install -q -y "${lang_pkgs[@]}" "${libs_pkgs[@]}" "${util_pkgs[@]}" "${style_pkgs[@]}" "${game_pkgs[@]}" $@ "

title="figlet -tc \"APT Installer\" | lolcat"
txt0='echo -ne "\rinstall dependencies"'
txt1='printf " / sudo apt install pkgs\n\n"'

cmd="$apt && $txt0 && $dep && $title && $txt1 && $install"
eval "$cmd"

echo -e "\nutil: ${util_pkgs[@]}\n\nstyle: ${style_pkgs[@]}\n\nmind: ${game_pkgs[@]}" | lolcat
