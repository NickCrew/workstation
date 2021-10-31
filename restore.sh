#!/usr/bin/env bash

set -e

pip install -r requirements.txt
ansible-galaxy install -r playbooks/requirements.yml
