#!/bin/bash

# author:	mintarchit
# version:	1.0

for i in {0..255} ; do
    printf "\x1b[38;5;${i}mcolour${i}\n"
done | less -r
