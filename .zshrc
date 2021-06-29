### GENERAL
bindkey -v

### PLUGINS
source ~/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source ~/plugins/powerlevel10k/powerlevel10k.zsh-theme

### ALIASES

# UTILITY
alias src='source ~/.zshrc || source ~/.vimrc'
alias vimconfig='vi~/.vimrc'
alias zshconfig='vi ~/.zshrc'

# NAVIGATION
alias ..='cd ..'
alias c='clear'
alias ll='ls -al'

# GIT
alias ga='git add'
alias gc='git checkout'
alias gl='git log --pretty=format:"%h %s" --graph'
alias gm='git commit -m'
alias gp='git push'
alias gs='git status'
alias switch='git switch'