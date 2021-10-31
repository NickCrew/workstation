#!/usr/bin/env bash

echo "Installing required Python packages..."
pip install -r requirements.txt

echo "Install required Ansible collections and roles..."
ansible-galaxy install -r playbooks/requirements.yml
