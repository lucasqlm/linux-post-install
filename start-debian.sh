#!/bin/bash

sudo pt-add-repository non-free
sudo apt-add-repository contrib
sudo apt update

sudo apt install ansible

ansible-playbook -K main.yml
#ansible-playbook -K base-install.yml
#ansible-playbook -K debian.yml
#ansible-playbook -K zsh.yml
#ansible-playbook -K gnome-config.yml
#ansible-playbook -K flatpak.yml
