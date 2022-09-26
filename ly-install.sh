#!/bin/bash

# author:	mintarchit
# version:	1.0

sudo -v
current_dir=$(pwd)

mkdir -p ~/bin/ && cd ~/bin/
file='ly_0.5.0'
wget 'https://github.com/fairyglade/ly/releases/download/v0.5.0/ly_0.5.0.zip'
unzip "$file.zip"
sudo $file/install.sh
sudo systemctl enable ly.service
sudo systemctl start ly.service

cd $current_dir
