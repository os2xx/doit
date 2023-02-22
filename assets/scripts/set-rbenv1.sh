#!/bin/bash
# REV09: Sun 12 Feb 2023 15:00
# REV08: Fri 12 Aug 2022 21:00
# REV07: Sun 31 Jul 2022 21:00
# REV05: Mon 26 Jul 2021 15:00
# REV02: Wed 17 Feb 2021 15:00
# START: Tue 18 Jun 2019 16:00
# 
# set-rbenv1.sh installs rubby using rbenlv.
#                       
# Copyright (C) 2019-2023 C. BinKadal, Sdn. Bhd.
# This is a free script. It is distributed in the
# hope that it will be useful, but WITHOUT ANY WARRANTY;
# without even the implied warranty of MERCHANTABILITY
# or FITNESS FOR A PARTICULAR PURPOSE.

# See also set-rbenv2.sh
# PS: Github-Pages uses Jekyll 3.9, which isn’t compatible with Ruby 3.
# Downgrading to Ruby 2.7 should avoid the problem (chuckhoupt, 2021).
# Try until it works.
# RUBY="2.7.7"
# RUBY="3.0.5"
# RUBY="3.1.3"
RUBY="3.2.1"

[ -d $HOME/.rbenv ] || git clone https://github.com/rbenv/rbenv.git $HOME/.rbenv
echo "==== ==== ==== ==== ==== ==== ==== source .bash_profile"
source $HOME/.bash_profile
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

