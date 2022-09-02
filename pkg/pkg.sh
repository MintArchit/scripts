#!/bin/bash

# author:	mintarchit
# version:	1.0
# description:	apt updater

prefix="pkg"
suffix="> stdout.txt 2> stderr.txt"

update="$prefix update -y $suffix"
upgrade="$prefix upgrade -qq -y"

txt0='printf "pkg update"'
txt1='printf " / pkg upgrade"'

cmd="$txt0 && $update && $txt1 && $upgrade"
eval "$cmd"
