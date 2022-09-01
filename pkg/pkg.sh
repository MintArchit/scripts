#!/bin/bash

# author:	mintarchit
# version:	1.0
# description:	apt updater

prefix="pkg"
suffix="> stdout.txt 2> stderr.txt"

update="$prefix update -y $suffix"
upgrade="$prefix upgrade -qq -y"

txt0='printf "sudo apt update"'
txt1='printf " / sudo apt upgrade"'

cmd="$txt0 && $update && $txt1 && $upgrade"
eval "$cmd"
