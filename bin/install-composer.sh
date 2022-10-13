#!/usr/bin/env bash

SCRIPT_PATH=$( dirname "$0" )

"${SCRIPT_PATH}"/header.sh "Install Composer"
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer