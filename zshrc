# history
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it

# completion
autoload -Uz compinit
compinit
zstyle ':completion:*' rehash true

# correction
setopt correct

# aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ip='ip --color=auto'
source ~/.bash_aliases

# environment
PATH="$HOME/bin:$PATH"
PATH="$HOME/.local/bin:$PATH"
PATH="$HOME/go/bin:$PATH"
export PATH
export EDITOR="vim"
export VISUAL="vim"

# prompt
setopt prompt_subst
PROMPT_COLOR='green'
if [[ -n "$SSH_TTY" ]]; then
    PROMPT_COLOR='red'
fi
GIT_INFO='%F{yellow}$(git branch --show-current 2> /dev/null)%f'
FIRSTLINE='%F{$PROMPT_COLOR}%n@%m%f %B%F{blue}%~%f%b '$GIT_INFO
SECONDLINE='%# '
PROMPT=$FIRSTLINE$'\n'$SECONDLINE

# plugins
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# load syntax-highlighting before history-substring-search
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

# key bindings
bindkey -v
bindkey '^[[3~' delete-char                       # delete
bindkey '^[[1;5C' forward-word                    # ctrl + ->
bindkey '^[[1;5D' backward-word                   # ctrl + <-
bindkey '^[[H' beginning-of-line                  # home
bindkey '^[[F' end-of-line                        # end
bindkey '^[[Z' autosuggest-accept                 # shift + tab
bindkey '^[[A' history-substring-search-up        # up
bindkey '^[[B' history-substring-search-down      # down

# have new gnome-terminal window preserve working directory
# see https://unix.stackexchange.com/questions/93476/gnome-terminal-keep-track-of-directory-in-new-tab
if [ -f /etc/profile.d/vte.sh ]; then
    source /etc/profile.d/vte.sh
fi

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" --no-use  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# ghcup
[ -f "/home/kjs/.ghcup/env" ] && source "/home/kjs/.ghcup/env" # ghcup-env
