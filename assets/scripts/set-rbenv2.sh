#!/bin/bash
# REV21: Sun 12 Feb 2023 15:00
# REV19: Sun 31 Jul 2022 22:30
# REV15: Mon 31 Jan 2022 17:00
# REV14: Mon 26 Jul 2021 15:00
# REV10: Wed 17 Feb 2021 15:00
# START: Tue 18 Jun 2019 16:00
#
# set-rbenv2.sh installs the bundler.
#
# Copyright (C) 2019-2023 C. Binkadal, Sdn. Bhd.
# This is a free script. It is distributed in the
# hope that it will be useful, but WITHOUT ANY WARRANTY;
# without even the implied warranty of MERCHANTABILITY
# or FITNESS FOR A PARTICULAR PURPOSE.

# See also set-rbenv1.sh
# PS: Github-Pages uses Jekyll 3.9, which WAS NOT compatible with Ruby 3.
# Downgrading to Ruby 2.7 should avoid the problem (chuckhoupt, 2021).
# Try until it works.
# RUBY="2.7.7"
# RUBY="3.0.5"
# RUBY="3.1.3"
RUBY="3.2.1"

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

