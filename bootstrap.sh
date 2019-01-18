#!/usr/bin/env bash

# Make sure only root can run our script
if [[ $EUID -ne 0 ]]; then
    echo "Please run this script as root."
    exit
fi

echo "=================================="
echo "Update apt and install ansible."
echo "=================================="
apt update
apt upgrade -y
apt install ansible -y

echo "=================================="
echo "Now starting ansible job."
echo "=================================="
ansible-playbook -i playbooks/inventory playbooks/install.yml