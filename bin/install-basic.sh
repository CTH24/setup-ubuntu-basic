#!/usr/bin/env bash

sudo ufw allow ssh

sudo apt-get update && sudo apt-get -y upgrade && sudo apt-get autoremove

sudo apt-get install -y \
	locales \
	apt-transport-https \
	ca-certificates \
	curl \
	git \
	tldr \
	neovim \
	software-properties-common

sudo locale-gen en_US.UTF-8
tldr -u