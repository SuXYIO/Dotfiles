# Env
# path
export PATH="$PATH:/home/$USER/.local/bin"
# options
export EDITOR='nvim'
export HISTFILE=~/.zsh_history
export HISTSIZE=512
export SAVEHIST=512
# develop
export GOPROXY=https://goproxy.io,direct
export PATH="$PATH:/home/$USER/.cargo/bin"
# lang
export LANG=en_US.UTF-8

# Tools
eval "$(zoxide init bash)"

# Aliases
# Tools
alias lg='lazygit'
alias n='nvim'
# File operation aliases
# ls
alias ls='lsd'
alias la='ls -A'
alias ll='ls -l'
alias lla='ls -lA'
# mkdir
alias md='mkdir'
# Git aliases
alias g='git'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git pull'
alias glo='git log --pretty=oneline --graph --decorate'
alias gd='git diff'
alias gb='git branch'
alias gco='git checkout'
alias gcl='git clone'
alias gm='git merge'
alias gi='git init'
alias gr='git reset'
alias grm='git remote'
alias gcf='git config'
alias gst='git status'
alias grs='git restore'
alias gf='git fetch'
# Tmux aliases
alias t='tmux'
alias tn='tmux new'
alias ta='tmux attach'
alias tl='tmux ls'
