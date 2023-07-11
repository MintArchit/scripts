#!/bin/bash
pacman -S --needed $(comm -12 <(pacman -Slq | sort) <(sort /home/$SUDO_USER/ghub/dotfiles/pkgs/pkglist.txt))
