#!/bin/bash
# REV09: Fri 12 Aug 2022 21:00
# REV08: Wed 17 Feb 2021 23:00
# REV07: Wed 17 Feb 2021 11:00
# START: Tue 18 Jun 2019 14:00
#
# debs.sh installs related debian packages.
#         You need SuperUser (root) "su -" or "sudo su -" access.
#
# Copyright (C) 2019-2022 C. BinKadal, Sdn. Bhd.
# This is a free script. It is distributed in the
# hope that it will be useful, but WITHOUT ANY WARRANTY;
# without even the implied warranty of MERCHANTABILITY
# or FITNESS FOR A PARTICULAR PURPOSE.

DEBS1="
autoconf
bison 
build-essential
cmdtest
curl
dirmngr
git
gnupg
libcurl4-openssl-dev
libffi-dev 
libgdbm-dev
libncurses5-dev 
libreadline-dev
libssl-dev
libsqlite3-dev 
libyaml-dev 
libxml2-dev
libxslt1-dev
locales-all
make
nodejs
sqlite3
software-properties-common
x11-apps
zlib1g-dev
"

echo "====== UPDATE  ==========";
apt-get update;
echo "====== UPGRADE ==========";
apt-get dist-upgrade -y;
echo "====== INSTALL1 =========";
apt-get install $DEBS1 -y

echo "====== REMOVE  ==========";
apt-get autoremove --purge -y;
echo "====== CLEAN   ==========";
apt-get autoclean -y;

exit 0

