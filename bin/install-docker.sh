#!/usr/bin/env bash

SCRIPT_PATH=$( dirname "$0" )

"${SCRIPT_PATH}"/header.sh "Get Docker Keyring"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

"${SCRIPT_PATH}"/header.sh "Install Docker"
sudo apt update
sudo apt install -y docker-ce
sudo docker --version

"${SCRIPT_PATH}"/header.sh "Add User to Docker Group"
sudo usermod -aG docker "${USER}"
