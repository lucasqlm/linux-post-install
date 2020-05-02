#!/bin/bash

apt-add-repository non-free
apt-add-repository contrib
apt update

apt install ansible

ansible-playbook -K base-install.yml
ansible-playbook -K debian-codecs.yml
ansible-playbook -K zsh.yml
ansible-playbook -K gnome-config.yml
ansible-playbook -K flatpak.yml
