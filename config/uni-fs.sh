#!/bin/bash

# author:	mintarchit
# version:	1.2

oldcmd="mkdir -p ./*/{lec,sh}"
cmd="for dir in */; do mkdir -- "$dir/{lec,sh}"; done"
echo "$cmd"
eval "$cmd"
