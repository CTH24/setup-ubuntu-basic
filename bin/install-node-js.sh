#!/usr/bin/env bash

SCRIPT_PATH=$( dirname "$0" )

"${SCRIPT_PATH}"/header.sh "Install NodeJS"
sudo mkdir -p /usr/local/n /usr/local/bin /usr/local/lib /usr/local/include /usr/local/share
sudo chown -R "${USER}" /usr/local/n /usr/local/bin /usr/local/lib /usr/local/include /usr/local/share
curl -L https://raw.githubusercontent.com/tj/n/master/bin/n -o n
bash n lts
rm n

"${SCRIPT_PATH}"/header.sh "Install n"
npm install -g n

"${SCRIPT_PATH}"/header.sh "Install yarn"
npm install -g yarn

"${SCRIPT_PATH}"/header.sh "Install parcel"
npm install -g parcel
