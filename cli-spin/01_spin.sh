#!/bin/bash

spinner=( Ooooo oOooo ooOoo oooOo ooooO )

spin(){
	while [ 1 ]
	do
		for i in "${spinner[@]}"
		do
			echo -ne "\r$i"
			sleep 0.2
		done
	done
}

spin
