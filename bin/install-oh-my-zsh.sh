#!/usr/bin/env bash

SCRIPT_PATH=$( dirname "$0" )
CONFIG_PATH=$( builtin cd "${SCRIPT_PATH}"/../config || exit; pwd )

"${SCRIPT_PATH}"/header.sh "Remove old files"
cp -v /home/"${USER}"/.zshrc /home/"${USER}"/.zshrc.bak
rm -v /home/"${USER}"/.zshrc
rm -rf /home/"${USER}"/.oh-my-zsh

"${SCRIPT_PATH}"/header.sh "Install Oh-My-ZSH"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

"${SCRIPT_PATH}"/header.sh "Install Plugin: zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions "${HOME}"/.oh-my-zsh/plugins/zsh-autosuggestions

"${SCRIPT_PATH}"/header.sh "Install Plugin: zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git /home/"${USER}"/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

"${SCRIPT_PATH}"/header.sh "Install Theme: spaceship"
git clone https://github.com/spaceship-prompt/spaceship-prompt.git /home/"${USER}"/.oh-my-zsh/custom/themes/spaceship-prompt --depth=1
ln -s /home/"${USER}"/.oh-my-zsh/custom/themes/spaceship-prompt/spaceship.zsh-theme /home/"${USER}"/.oh-my-zsh/themes/spaceship.zsh-theme

"${SCRIPT_PATH}"/header.sh "Install .zshrc"
rm -v /home/"${USER}"/.zshrc
cp -v "${CONFIG_PATH}"/zsh/.zshrc /home/"${USER}"/.zshrc