#!/bin/bash

# auto apt installer / updater

lang_pkgs=(
	postgresql
	python3-pip
	python3.10-venv
	ruby
	cargo
	#2GB
	#texlive-full
	#golang-go
	#gccgo-go
	qt6-base-dev
	qtcreator
	nodejs
	python-is-python3
	python3
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
	libncursesw5-dev
	libpng-dev
	libxml2-utils
	libidn-dev
	libgpgme-dev
	libdb-dev
	libqdbm-dev
	liblmdb-dev
	libkyotocabinet-dev
	librocksdb-dev
	libtdb-dev
	liblz4-dev
	libzstd-dev
	libsecret-1-dev
	libgsasl-dev
	libgnutls28-dev
	libtool
	libxapian-dev
	libgmime-3.0-dev
	libtalloc-dev 
	libnotify-bin
	libatspi2.0-dev
	libbluetooth-dev
	libclang-dev
	libcups2-dev
	libdrm-dev
	libegl1-mesa-dev
	libfontconfig1-dev
	libfreetype6-dev
	libgstreamer1.0-dev
	libhunspell-dev
	libnss3-dev
	libopengl-dev
	libpulse-dev
	libssl-dev
	libts-dev
	libx11-dev
	libx11-xcb-dev
	libxcb-glx0-dev
	libxcb-icccm4-dev
	libxcb-image0-dev
	libxcb-keysyms1-dev
	libxcb-randr0-dev
	libxcb-render-util0-dev
	libxcb-shape0-dev
	libxcb-shm0-dev
	libxcb-sync-dev
	libxcb-util-dev
	libxcb-xfixes0-dev
	libxcb-xinerama0-dev
	libxcb-xkb-dev
	libxcb1-dev
	libxcomposite-dev
	libxcursor-dev
	libxdamage-dev
	libxext-dev
	libxfixes-dev
	libxi-dev
	libxkbcommon-dev
	libxkbcommon-x11-dev
	libxkbfile-dev
	libxrandr-dev
	libxrender-dev
	libxshmfence-dev
	libxshmfence1
)

util_pkgs=(
	zlib1g-dev
	qml-module-qtquick-layouts
	qml-module-qtgraphicaleffects
	qml-module-qtquick-controls2
	llvm
	ninja-build
	bison
	build-essential
	clang
	flex
	gperf
	pass
	autoconf
	automake
	texinfo 
	abook
	gettext
	xsltproc
	poppler-utils
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
	vim
	neofetch
	testdisk
	trash-cli
	tldr
	tmux
	neovim
	most
	ttf-mscorefonts-installer
	duf
	git-email
	scdoc
)

style_pkgs=(
	grc
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
