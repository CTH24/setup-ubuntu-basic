#!/usr/bin/env bash

SCRIPT_PATH=$( dirname "$0" )

"${SCRIPT_PATH}"/header.sh "Add PHP PPA"
sudo add-apt-repository -y ppa:ondrej/php

"${SCRIPT_PATH}"/header.sh "Install PHP 8.1"
sudo apt-get install -y \
    php8.1 \
    php8.1-bcmath \
    php8.1-bz2 \
    php8.1-cli \
    php8.1-common \
    php8.1-curl \
    php8.1-dev \
    php8.1-fpm \
    php8.1-gd \
    php8.1-gmp \
    php8.1-imap \
    php8.1-imagick \
    php8.1-intl \
    php8.1-ldap \
    php8.1-mbstring \
    php8.1-mysql \
    php8.1-opcache \
    php8.1-pgsql \
    php8.1-pspell \
    php8.1-readline \
    php8.1-redis \
    php8.1-soap \
    php8.1-sqlite3 \
    php8.1-tidy \
    php8.1-xdebug \
    php8.1-xml \
    php8.1-xmlrpc \
    php8.1-xsl \
    php8.1-zip