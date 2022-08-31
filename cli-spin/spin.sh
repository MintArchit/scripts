#!/bin/bash

spinner=( Ooooo oOooo ooOoo oooOo ooooO )

spin(){
	for i in "${spinner[@]}"
	do
		echo -ne "\r$i"
		sleep 0.2
	done
}

spin
