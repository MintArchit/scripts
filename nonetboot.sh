#!/bin/bash

# author:	mintarchit
# version:	1.0

service="systemd-networkd-wait-online.service"

sudo systemctl disable $service
sudo systemctl mask $service
