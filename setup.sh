#!/usr/bin/env bash


function header() {
    clear
    echo
    echo "CTH24 - Ubuntu 22.04 Basic Installation"
    echo
}

function footer() {
  header
  echo "Finish. Have fun."
  echo
}

function install() {
  header

  echo "$1"

  read -s -r -n 1 input

  if [ "${input}" == 'Y' ] || [ "${input}" == "" ]; then
    $2
  fi
}

install "Install Basics? (Y/n)" "./bin/install-basic.sh"
install "Install Docker? (Y/n)" "./bin/install-docker.sh"
install "Install Ansible? (Y/n)" "./bin/install-ansible.sh"

footer