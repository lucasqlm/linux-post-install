#!/bin/bash

curl --location --output post-install.zip https://github.com/lucasqlm/linux-post-install/archive/feat/fedora-33.zip \
  && unzip -qo post-install.zip -d linux-post-install\
  && rm post-install.zip

pip install ansible

cd linux-post-install/linux-post-install-feat-fedora-33
./start.sh