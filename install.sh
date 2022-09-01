#!/bin/bash

args=(
	whiptail
	tmux
	# lolcat
	sl
	elinks
	vifm
	nudoku
	gnuchess
	neofetch
	htop
	nudoku
	figlet
	fortune
	bsd-games
	zsh
	git
	gh
	apt
	libcaca
	cmatrix
	cowsay
)

cmd="pkg install "${args[@]}""

eval $cmd
