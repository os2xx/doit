#!/bin/bash
# REV07: Fri 12 Aug 2022 21:00
# REV06: Wed 17 Feb 2021 11:00
# REV05: Tue 16 Feb 2021 00:00
# START: Tue 18 Jun 2019 14:00
#
# clean-system.sh purges whatever was installed previously at the system level.
#                       You need SuperUser (root) "su -" or "sudo su -" access.
#
# Copyright (C) 2019-2022 C. Binkadal, Sdn. Bhd.
# This is a free script. It is distributed in the
# hope that it will be useful, but WITHOUT ANY WARRANTY;
# without even the implied warranty of MERCHANTABILITY
# or FITNESS FOR A PARTICULAR PURPOSE.

RMOPT="-rfv"

DELETE1="
/etc/apt/sources.list.d/yarn.list
/tmp/this-should-be-a-dummy
"

DELETE2="
/usr/lib/ruby/
/usr/local/bin/update_rubygems
/usr/local/bin/bundle
/usr/local/bin/bundler
/usr/local/lib/site_ruby/
/usr/share/rubygems-integration/
/var/lib/gems/
/tmp/this-should-be-a-dummy
"

DELDEB="
   ruby
   ruby-all-dev
   ruby-dev
"

for II in $DELETE1 ; do
   [ -f $II ] && (echo "Delete file   $II"; rm $RMOPT $II)
   [ -d $II ] && (echo "Delete folder $II"; rm $RMOPT $II)
done

for II in $DELDEB ; do
   apt-get purge $II -y
done

apt-get update;
apt-get dist-upgrade -y;
apt-get autoremove --purge -y;
apt-get autoclean -y;

for II in $DELETE2 ; do
   [ -f $II ] && (echo "Delete file   $II"; rm $RMOPT $II)
   [ -d $II ] && (echo "Delete folder $II"; rm $RMOPT $II)
done

exit 0

