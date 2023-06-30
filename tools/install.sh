#!/bin/bash

OS=$(lsb_release -si)
VER=$(lsb_release -sr)

case $OS in
Debian | Ubuntu)
    wget -O post-install.zip https://github.com/lucasqlm/linux-post-install/archive/feature/general-install.zip \
      && unzip -qo post-install.zip -d linux-post-install\
      && rm post-install.zip

    sudo apt update && sudo apt install -y python3-pip
    pip install ansible

    cd linux-post-install/linux-post-install-feature-general-install
    PATH=$HOME/.local/bin:$PATH ./start.sh
    ;;
Fedora)
    curl --location --output post-install.zip https://github.com/lucasqlm/linux-post-install/archive/feature/general-install.zip \
      && unzip -qo post-install.zip -d linux-post-install\
      && rm post-install.zip

    pip install ansible

    cd linux-post-install/linux-post-install-feature-general-install
    ./start.sh
    ;;
*)
    echo "OS/Distro not supported"
    ;;
esac


