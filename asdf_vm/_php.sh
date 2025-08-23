#!/bin/bash

sudo apt-get update
sudo apt-get install -y autoconf bison build-essential curl gettext git libgd-dev libcurl4-openssl-dev libedit-dev libicu-dev libjpeg-dev libmysqlclient-dev libonig-dev libpng-dev libpq-dev libreadline-dev libsqlite3-dev libssl-dev libxml2-dev libzip-dev openssl pkg-config re2c zlib1g-dev

asdf plugin add php

CPPFLAGS="-Wno-deprecated-declarations -DRSA_SSLV23_PADDING=RSA_PKCS1_PADDING" \
  CFLAGS="-Wno-deprecated-declarations" \
  PHP_CONFIGURE_OPTIONS="--with-openssl" \
  asdf install php 7.4.33


asdf global php 8.3.24
