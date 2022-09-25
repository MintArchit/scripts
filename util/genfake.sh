#!/bin/bash

# author:	mintarchit
# version:	1.0

# -o output -s=";"
prefix="faker -l de_DE -r=1"

cmd="$prefix name && $prefix user_name && $prefix email && ./passgen.sh"

eval "$cmd | lolcat"
