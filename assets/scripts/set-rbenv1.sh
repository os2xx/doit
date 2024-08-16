#!/bin/bash
# REV22: Fri 16 Aug 2024 07:00
# REV19: Mon 04 Sep 2023 20:00
# REV09: Sun 12 Feb 2023 15:00
# REV07: Sun 31 Jul 2022 21:00
# REV05: Mon 26 Jul 2021 15:00
# START: Tue 18 Jun 2019 16:00
# 
# set-rbenv1.sh installs rubby using rbenlv.
#                       
# Copyright (C) 2019-2024 C. BinKadal, Sdn. Bhd.
# This is a free script. It is distributed in the
# hope that it will be useful, but WITHOUT ANY WARRANTY;
# without even the implied warranty of MERCHANTABILITY
# or FITNESS FOR A PARTICULAR PURPOSE.

# See also set-rbenv2.sh
# Try one by one "RUBY"; until it works.
# RUBY="3.1.6"
# RUBY="3.2.5"
RUBY="3.3.4"

[ -d $HOME/.rbenv ] || git clone https://github.com/rbenv/rbenv.git $HOME/.rbenv
echo "==== ==== ==== ==== ==== ==== ==== source .bash_profile or .profile"
if   [ -f $HOME/.bash_profile ] ; then
  source $HOME/.bash_profile
elif [ -f $HOME/.profile ] ; then
  source $HOME/.profile
fi
echo "==== ==== ==== ==== ==== ==== ==== rbenv init"
[ -d $HOME/.rbenv/bin/ ] && eval "$(rbenv init -)"
sync
echo "==== ==== ==== ==== ==== ==== ==== type rbenv"
type rbenv
echo "==== ==== ==== ==== ==== ==== ===="
[ -d $HOME/.rbenv/plugins/ ] || git clone https://github.com/rbenv/ruby-build.git $HOME/.rbenv/plugins/ruby-build
echo "==== ==== ==== ==== ==== ==== ==== rbenv install -l"
rbenv install -l
echo "==== ==== ==== ==== ==== ==== ==== rbenv install $RUBY"
rbenv install $RUBY --verbose

exit 0

