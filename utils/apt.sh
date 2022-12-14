#!/bin/bash

# author:	mintarchit
# version:	1.0
# description:	apt updater

prefix="sudo apt-get"
suffix="> stdout.log 2> stderr.log"

update="$prefix update -y $suffix"
upgrade="$prefix upgrade -qq -y"

txt0='printf "sudo apt update"'
txt1='printf " / sudo apt upgrade\n"'

cmd="sudo -v && $txt0 && $update && $txt1 && $upgrade"
eval "$cmd"
