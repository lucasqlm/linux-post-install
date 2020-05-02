#!/bin/bash

# su - ; usermod user -aG sudo

sudo apt-add-repository non-free
sudo apt-add-repository contrib
sudo apt update

sudo apt install -y ansible

ansible-playbook -K main.yml
sudo ansible-playbook -K containers.yml
