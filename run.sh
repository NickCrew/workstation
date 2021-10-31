#!/usr/bin/env bash

set -e 

echo "Restoring dependencies..."
./restore.sh

echo "Running workstation playbook..."
ansible-playbook playbooks/workstation.yml
