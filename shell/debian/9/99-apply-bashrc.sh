#!/bin/bash -e

cat <<EOF >> ~/.bashrc
PS1='\${debian_chroot:+(\$debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\\$ '

eval \`dircolors -b\`
alias ls='ls --color=auto'
alias grep='grep --color=auto'

HISTFILESIZE=1000
HISTSIZE=1000
TZ=UTC-8
EOF

source ~/.bashrc