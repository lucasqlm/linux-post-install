#!/bin/bash

curl --location --output post-install.zip https://github.com/lucasqlm/linux-post-install/archive/feature/general-install.zip \
  && unzip -qo post-install.zip -d linux-post-install\
  && rm post-install.zip

pip install ansible

cd linux-post-install/linux-post-install-feature-general-install
./start.sh