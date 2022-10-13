#!/usr/bin/env bash

SCRIPT_PATH=$( dirname "$0" )

"${SCRIPT_PATH}"/header.sh "Download get-pip.py"
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py

"${SCRIPT_PATH}"/header.sh "Install pip"
python3 get-pip.py --user

"${SCRIPT_PATH}"/header.sh "Remove get-pip.py"
rm -v get-pip.py

"${SCRIPT_PATH}"/header.sh "Install ansible"
python3 -m pip install --user ansible

"${SCRIPT_PATH}"/header.sh "Check Ansible Version"
~/.local/bin/ansible --version