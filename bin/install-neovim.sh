#!/usr/bin/env bash

SCRIPT_PATH=$( dirname "$0" )
CONFIG_PATH=$( builtin cd "${SCRIPT_PATH}"/../config || exit; pwd )

"${SCRIPT_PATH}"/header.sh "neovim: Install packer"
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
    "${HOME}"/.local/share/nvim/site/pack/packer/start/packer.nvim

"${SCRIPT_PATH}"/header.sh "neovim: Copy config files"
cp -rv "${CONFIG_PATH}"/nvim /home/"${USER}"/.config

"${SCRIPT_PATH}"/header.sh "neovim: Install Node.js Provider"
npm -g install neovim

"${SCRIPT_PATH}"/header.sh "neovim: Install Perl Provider"
cpanm -n Neovim::Ext

"${SCRIPT_PATH}"/header.sh "neovim: Install Ruby Provider"
sudo gem install neovim

"${SCRIPT_PATH}"/header.sh "neovim: Install Python Provider"
python3 -m pip install --user --upgrade pynvim

"${SCRIPT_PATH}"/header.sh "neovim: Install Treesitter Dependencies"
npm i -g tree-sitter tree-sitter-cli

"${SCRIPT_PATH}"/install-neovim-plugins.sh
