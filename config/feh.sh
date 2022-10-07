#!/bin/bash

# author:	mintarchit
# version:	1.0

img="$HOME/Pictures/bg.jpg"
url='https://images.unsplash.com/photo-1571607082995-fe94cf7d2531\?ixlib\=rb-1.2.1\&ixid\=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8\&auto\=format\&fit\=crop\&w\=1740\&q\=80'

cmd="curl $url --output $img"
echo $cmd
eval $cmd

feh --bg-scale $img
