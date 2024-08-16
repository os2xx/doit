# USER
cat > $HOME/.vimrc << EOF
" START: Thu 22 Jun 2023 11:00
syntax off
set belloff=all
EOF

cat > $HOME/.bash_aliases << EOF
# REV03: Sat 24 Jun 2023 13:00
# START: Sun 09 Jan 2022 15:00
# What is your EDITOR?
export EDITOR=/usr/bin/vi
# COMMIT MESSAGE
export CMESSAGE="OSP $(whoami)"
# How many cores?
export MAKEFLAGS=-j$(nproc)
export LFS=/mnt/lfs
alias cl='clear;echo ""'
alias h='history'
alias gac='git add -A && git commit'
alias ggg='git pull; git add -A; git commit -m "$CMESSAGE"; git push;'
alias mv='mv -i'
alias rm='rm -i'
alias sss='. ~/.profile'
EOF
###
source $HOME/.profile

