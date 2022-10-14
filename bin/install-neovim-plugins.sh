#!/usr/bin/env bash

SCRIPT_PATH=$( dirname "$0" )
CONFIG_PATH=$( builtin cd "${SCRIPT_PATH}"/../config || exit; pwd )

"${SCRIPT_PATH}"/header.sh "neovim: Install packer"
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
    "${HOME}"/.local/share/nvim/site/pack/packer/start/packer.nvim

"${SCRIPT_PATH}"/header.sh "neovim: Copy config files"
cp -rv "${CONFIG_PATH}"/nvim /home/"${USER}"/.config

"${SCRIPT_PATH}"/header.sh "neovim: Install Plugins"
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

"${SCRIPT_PATH}"/header.sh "neovim: TSUpdateSync"
npm i -g tree-sitter-cli
nvim --headless -c 'TSUpdateSync all' -c 'q'

"${SCRIPT_PATH}"/header.sh "neovim: UpdateRemotePlugins"
nvim --headless -c 'UpdateRemotePlugins' -c 'q'
