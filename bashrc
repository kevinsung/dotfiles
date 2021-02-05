# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# have new gnome-terminal window preserve working directory
# see https://unix.stackexchange.com/questions/93476/gnome-terminal-keep-track-of-directory-in-new-tab
source /etc/profile.d/vte.sh

# ls alias
alias ls='ls --color=auto'

# prompt
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ '

# history size
HISTSIZE=10000
HISTFILESIZE=100000

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
source ~/.bash_aliases

# User specific environment
export PATH="$HOME/go/bin:$HOME/.local/bin:$HOME/bin:$PATH"
export EDITOR="vim"
export VISUAL="vim"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
