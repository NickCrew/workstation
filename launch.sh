#!/usr/bin/env bash

set -e

echo "==============================="
echo "===== Workstation Manager ====="
echo "-------------------------------"

echo "Installing required dependencies..."
pip install -r requirements.txt
ansible-galaxy install -r playbooks/requirements.yml

echo "Running workstation playbook..."
ansible-playbook playbooks/workstation.yml
