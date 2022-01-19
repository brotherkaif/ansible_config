#           _
#   _______| |__  _ __ ___
#  |_  / __| '_ \| '__/ __|
# _ / /\__ \ | | | | | (__
#(_)___|___/_| |_|_|  \___|
#==========================

# VIM MODE & CTRL-R fix
bindkey -v
bindkey '^r' history-incremental-search-backward

# TMUX AUTO LOAD
# if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
#     tmux -2 attach -t TERM || tmux -2 new -s TERM
# fi

# MOTD
clear
echo -e "\e[43;30m CONSOLE \e[0m"

# PROMPT
PROMPT="%F{red}%~"$'\n'"%F{blue}%#%f "

# NODE PATH FIX DARWIN
export PATH="/usr/local/opt/node@14/bin:$PATH"

# HISTORY TOGGLE
export HISTCONTROL=ignorespace

# XDG BASE DIRECTORY CONFIG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_DATA_DIRS="/usr/local/share:/usr/share"
export XDG_CONFIG_DIRS="/etc/xdg"

# ENV VARIABLES
export VISUAL=nvim
export EDITOR="$VISUAL"

# ANSIBLE OPTIONS
export ANSIBLE_NOCOWS=1

# NVM SETUP
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# CONVENIENCE ALIASES
alias ll='ls -la'
alias sc='ansible-pull -U https://github.com/brotherkaif/config.git'
alias sl='ansible-playbook ~/2-areas/config/local.yml'

# GIT ALIASES
alias lg='lazygit'
alias gst='git status'
alias ga='git add'
alias gaa='git add .'
alias gc='git commit'
alias gcm='git commit -m'
alias gco='git checkout'

# APP ALIASES
alias tmux='tmux -2'
