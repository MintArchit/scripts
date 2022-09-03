#!/bin/bash

# author:	mintarchit
# version:	1.0
# description:	apt updater

prefix="pkg"
suffix="> stdout.txt 2> stderr.txt"

update="$prefix update -y"
upgrade="$prefix upgrade -y"

txt0='printf "pkg update\n\n"'
txt1='printf "pkg upgrade\n\n"'

cmd="$txt0 && $update && $txt1 && $upgrade"
eval "$cmd"
