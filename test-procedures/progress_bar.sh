#!/bin/bash

# author:	mintarchit
# version:	1.0

dialog --gauge "Filling the tank" 20 60 0 < <(
    for i in {1..100};do
        printf "XXX\n%d\n%(%a %b %T)T progress: %d\nXXX\n" $i -1 $i
        sleep .033
    done
) 
