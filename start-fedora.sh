#!/bin/bash

sudo dnf update -y
sudo dnf install -y ansible

ansible-playbook -K main.yml
