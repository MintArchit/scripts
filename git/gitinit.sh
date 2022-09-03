#!/bin/bash

mail="mintarchit@gmail.com"
name="mintarchit"
defBranch="main"
cmd="git config --global"

eval "$cmd user.email \"$mail\" && $cmd user.name \"$name\" && $cmd init.defaultBranch \"main\""

echo "set git cred as: $mail $name" && sleep 2

gh auth login
