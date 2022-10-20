#!/bin/bash

# author:	mintarchit
# version:	2.1

oldcmd="mkdir -p ./*/{lec,sh}"
for dir in */; do mkdir -- "$dir"/{lec,sh}; done
#echo "$cmd"
#eval "$cmd"
