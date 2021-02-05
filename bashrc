# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# have new gnome-terminal window preserve working directory
# see https://unix.stackexchange.com/questions/93476/gnome-terminal-keep-track-of-directory-in-new-tab
source /etc/profile.d/vte.sh

# ls alias
alias ls='ls --color=auto'

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

# prompt
RESET="\[\033[00m\]"
RED="\[\033[0;31m\]"
GREEN="\[\033[01;32m\]"
BLUE="\[\033[01;34m\]"
YELLOW="\[\033[0;33m\]"
PROMPT_COLOR=$GREEN
if [[ -n "$SSH_TTY" ]]; then
    PROMPT_COLOR=$RED
fi
function get_git_branch {
    GIT_INFO=''
    GIT_BRANCH=$(git branch --show-current 2> /dev/null) || return
    GIT_INFO="[$GIT_BRANCH]"
}
PROMPT_COMMAND=get_git_branch
PS1="$PROMPT_COLOR\u@\h$RESET:$BLUE\w $YELLOW\$GIT_INFO$RESET\n\$ "

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
