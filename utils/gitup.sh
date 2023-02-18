#!/bin/bash

# author:	mintarchit
# version:	1.0

cmd="git add \"$2\" && git commit -m \"$1\" && git push"
alt="git add . && git commit -m \"$1\" && git push"

[[ -z "$2" ]] && eval "$alt" || eval "$cmd"
