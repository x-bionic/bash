#! /bin/bash

sudo cp -v /opt/Corp/data/server/vpn/wireguard/wireguard-manager.sh /usr/local/bin/

sudo chmod +x /usr/local/bin/wireguard-manager.sh

bash /usr/local/bin/wireguard-manager.sh

# Docker build:
# docker build -t wireguard https://raw.githubusercontent.com/complexorganizations/wireguard-manager/main/Dockerfile

exit 0
