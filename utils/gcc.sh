#!/bin/bash

# author:	mintarchit
# version:	1.0

gcc -Wall -std=c11 $1.c -o $1.out $2 && ./$1.out
