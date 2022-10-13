#!/usr/bin/env bash

SCRIPT_PATH=$( dirname "$0" )

"${SCRIPT_PATH}"/header.sh "Generate Basic Folders"
mkdir -pv "${HOME}/bin"
mkdir -pv "${HOME}/code"

"${SCRIPT_PATH}"/header.sh "Enable SSH"
sudo ufw allow ssh

"${SCRIPT_PATH}"/header.sh "Add Neovim PPA"
sudo add-apt-repository -y ppa:neovim-ppa/unstable

"${SCRIPT_PATH}"/header.sh "Update System"
sudo apt-get update && sudo apt-get -y upgrade && sudo apt-get -y autoremove 

"${SCRIPT_PATH}"/header.sh "Install Basic Tools"
sudo apt-get install -y \
	apt-transport-https \
	ca-certificates \
	curl \
	fzf \
	git \
	htop \
	locales \
	neovim \
	ripgrep \
	tmux \
	tree \
	tldr \
	software-properties-common \
	unzip \
	wget \
	zsh

"${SCRIPT_PATH}"/header.sh "Generate Locales"
sudo locale-gen en_US.UTF-8

"${SCRIPT_PATH}"/header.sh "Update TLDR"
tldr -u

"${SCRIPT_PATH}"/header.sh "Change Default Shell to ZSH"
sudo chsh -s /bin/zsh "${USER}"

"${SCRIPT_PATH}"/install-oh-my-zsh.sh