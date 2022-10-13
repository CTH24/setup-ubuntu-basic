#!/usr/bin/env bash

function task() {
  ./bin/output.sh "$1"
  read -s -r -n 1 input
  if [ "${input}" == 'Y' ] || [ "${input}" == "" ]; then
    $2
  fi
}

task "Install Basics? (Y/n)" "./bin/install-basic.sh"
task "Install Docker? (Y/n)" "./bin/install-docker.sh"
task "Install Ansible? (Y/n)" "./bin/install-ansible.sh"
task "Setup GIT (Y/n)" "./bin/setup-git.sh"
task "Install Oh-My-ZSH? (Y/n)" "./bin/install-oh-my-zsh.sh"

./bin/output.sh "Finish. Have Fun"