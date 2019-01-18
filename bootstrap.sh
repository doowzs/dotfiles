#!/bin/bash

# Make sure only root can run our script
if [[ $EUID -ne 0 ]]; then
    echo "Please run this script as root."
    exit
fi

if ! [ -x "$(command -v ansible)" ]; then
    echo "=================================="
    echo "Update apt and install ansible."
    echo "=================================="
    apt update
    apt upgrade -y
    apt install ansible -y
fi

echo "=================================="
echo "Starting ansible."
echo "=================================="
ansible-playbook -i playbooks/inventory playbooks/install.yml


echo "=================================="
echo "Ansible jobs finished!"
echo "=================================="
echo "You need to relogin to take effect!"
echo "=================================="
