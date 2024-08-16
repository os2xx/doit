#!/bin/bash
# REV24: Fri 16 Aug 2024 07:00
# REV19: Sun 31 Jul 2022 22:30
# REV15: Mon 31 Jan 2022 17:00
# REV14: Mon 26 Jul 2021 15:00
# REV10: Wed 17 Feb 2021 15:00
# START: Tue 18 Jun 2019 16:00
#
# set-rbenv2.sh installs the bundler.
#
# Copyright (C) 2019-2024 C. Binkadal, Sdn. Bhd.
# This is a free script. It is distributed in the
# hope that it will be useful, but WITHOUT ANY WARRANTY;
# without even the implied warranty of MERCHANTABILITY
# or FITNESS FOR A PARTICULAR PURPOSE.

# See also set-rbenv1.sh
# Try one by one "RUBY"; until it works.
# RUBY="3.1.6"
# RUBY="3.2.5"
RUBY="3.3.4"

echo "==== ==== ==== ==== ==== ==== ==== rbenv init"
[ -d $HOME/.rbenv/bin/ ] && eval "$(rbenv init -)"
echo "==== ==== ==== ==== ==== ==== ==== rbenv global $RUBY"
rbenv global $RUBY
echo "==== ==== ==== ==== ==== ==== ==== ruby -v"
ruby -v
echo "==== ==== ==== ==== ==== ==== ==== .gemrc"
echo "gem: --no-document" > $HOME/.gemrc
echo "==== ==== ==== ==== ==== ==== ==== gem install bundler"
gem install bundler jekyll
# gem install bundler rails

exit 0

