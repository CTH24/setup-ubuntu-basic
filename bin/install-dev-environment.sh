#!/usr/bin/env bash

SCRIPT_PATH=$( dirname "$0" )

"$SCRIPT_PATH"/install-basic.sh

"${SCRIPT_PATH}"/header.sh "Install Packages for Dev Environment"
sudo apt-get install -y \
    autoconf \
    automake \
    bpytop \
    cargo \
    cmake \
    cpanminus \
    default-jdk \
    default-jre \
    doxygen \
    fd-find \
    gettext \
    ghostscript \
    g++ \
    golang-go \
    iputils-ping \
    libsqlite3-dev \
    libtool \
    libtool-bin \
    luarocks \
    mysql-client \
    neofetch \
    ninja-build \
    ranger \
    ripgrep \
    ruby-dev \
    sqlite3 \
    perl \
    pkg-config \
    python3-pip

"${SCRIPT_PATH}"/install-ansible.sh
"${SCRIPT_PATH}"/install-composer.sh
"${SCRIPT_PATH}"/install-docker.sh
"${SCRIPT_PATH}"/install-julia.sh
"${SCRIPT_PATH}"/install-php-8.1.sh
"${SCRIPT_PATH}"/install-rust.sh
"${SCRIPT_PATH}"/install-node-js.sh
"${SCRIPT_PATH}"/install-neovim.sh