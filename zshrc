# ls alias
alias ls='ls --color=auto'

# history
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

# keybindings
bindkey -v

# completion
autoload -Uz compinit
compinit

# aliases
source ~/.bash_aliases

# environment
export PATH="$HOME/go/bin:$HOME/bin:$HOME/.local/bin:$PATH"
export EDITOR="vim"
export VISUAL="vim"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
