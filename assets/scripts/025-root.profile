# ROOT
ZCZCMODIFIED="# ZCZCMODIFIED OS232"

cat > $HOME/.vimrc << EOF
" START: Thu 22 Jun 2023 11:00
syntax off
set belloff=all
EOF

grep -Eq "$ZCZCMODIFIED" $HOME/.profile || cat >> $HOME/.profile << EOF

# START: Thu 22 Jun 2023 11:00
# What is your EDITOR?
export EDITOR=/usr/bin/vi
export LFS=/mnt/lfs
alias cl='clear;echo ""'
alias h='history'
alias mv='mv -i'
alias rm='rm -i'
alias sss='. ~/.profile'

$ZCZCMODIFIED

EOF
###
source $HOME/.profile
