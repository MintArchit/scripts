#!/bin/bash

# author:	mintarchit
# version:	1.0

#!/bin/sh
if [ $# -eq 0 ]; then
    TIMESTAMP=$(sleepenh 0)
    before=$(date +%s)
    while true; do
        diff=$(($(date +%s) - before))
        printf "%02d:%02d:%02d\r" $((diff/3600)) $(((diff%3600)/60)) $((diff%60))
        TIMESTAMP=$(sleepenh $TIMESTAMP 1.0);
    done
    exit 1 # this should never be reached
fi
echo "counting up to $@"
"$0" &
counterpid=$!
trap "exit" INT TERM
trap "kill 0" EXIT
sleep "$@"
kill $counterpid

