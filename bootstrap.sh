#!/usr/bin/env bash

echo "=================================="
echo "Update apt and install ansible."
echo "=================================="
apt update
apt install ansible -y

echo "=================================="
echo "Now starting ansible job."
echo "=================================="
ansible-playbook -i playbooks/inventory playbooks/install.yml