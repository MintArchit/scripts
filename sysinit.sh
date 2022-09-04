#!/bin/bash

# author:	mintarchit
# version:	1.0

pth="./pkg"

pkg="$pth/pkg-cl.sh"
git="./git/gitinit.sh"
gem="$pth/gem.sh"
go="$pth/go.sh"
pip="$pth/pip.sh"

eval "$pkg && $gem && $go && $pip && $git"

echo -e "\n fortune ~ $(fortune) \n"

