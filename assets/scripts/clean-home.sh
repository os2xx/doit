#!/bin/bash
# REV05: Sun 31 Jul 2022 09:00
# REV04: Mon 15 Feb 2021 23:00
# START: Tue 18 Jun 2019 14:00
#
# clean-home.sh purges whatever was installed 
#               previously at $HOME.
# 
# Copyright (C) 2019-2022 C. BinKadal, Sdn. Bhd.
# This is a free script. It is distributed in the 
# hope that it will be useful, but WITHOUT ANY WARRANTY;
# without even the implied warranty of MERCHANTABILITY 
# or FITNESS FOR A PARTICULAR PURPOSE.

RMOPT="-rfv"

DELETE="
   $HOME/.bundle/
   $HOME/.gem/
   $HOME/.gemrc
   $HOME/gems/
   $HOME/.rvm/
   $HOME/.rbenv/
"

for II in $DELETE ; do
   [ -f $II ] && (echo "Delete file   $II"; rm $RMOPT $II)
   [ -d $II ] && (echo "Delete folder $II"; rm $RMOPT $II)
done

exit 0

