#!/bin/bash

sudo su -c "dnf update -y && dnf install -y ansible"
ansible-playbook -K workstation.yml