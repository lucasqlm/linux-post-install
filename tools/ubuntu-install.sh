#!/bin/bash

wget -O post-install.zip https://github.com/lucasqlm/linux-post-install/archive/feature/general-install.zip \
  && unzip -qo post-install.zip -d linux-post-install\
  && rm post-install.zip

sudo apt update && sudo apt install -y python3-pip
pip install ansible

cd linux-post-install/linux-post-install-feature-general-install
PATH=$HOME/.local/bin ./start.sh