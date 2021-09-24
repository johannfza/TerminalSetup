# -------------------------------------------------------------------
# GENERAL SETTINGS
# -------------------------------------------------------------------

bindkey -v

# -------------------------------------------------------------------
# SOURCES
# -------------------------------------------------------------------

source ~/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source ~/plugins/powerlevel10k/powerlevel10k.zsh-theme

# -------------------------------------------------------------------
# ALIASES
# -------------------------------------------------------------------

# MAIN DIRECTORIES 
alias work=''
alias dev=''

# UTILITY
alias src='source ~/.zshrc'
alias vimconfig='vi ~/.vimrc'
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

# SSH AGENT
SSH_ENV="$HOME/.ssh/agent-environment"

function start_agent {
    echo "Initialising new SSH agent..."
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
    echo succeeded
    chmod 600 "${SSH_ENV}"
    . "${SSH_ENV}" > /dev/null
    /usr/bin/ssh-add;
}

if [ -f "${SSH_ENV}" ]; then
    . "${SSH_ENV}" > /dev/null
    #ps ${SSH_AGENT_PID} doesn't work under cywgin
    ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
        start_agent;
    }
else
    start_agent;
fi
