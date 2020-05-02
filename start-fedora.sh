#!/bin/bash

sudo su -c "dnf update -y && dnf install -y ansible"
ansible-playbook -K post-install.yml
ansible-playbook -K containers.yml
