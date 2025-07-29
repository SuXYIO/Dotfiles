# Env
export MANPAGER='nvim +Man!'
export LANG=en_US.UTF-8
export EDITOR='nvim'
eval "$(zoxide init bash)"

# Aliases
alias lg='lazygit'
alias n='nvim'
alias py3='python3'
alias mk='make'
alias activate='source venv/bin/activate'
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
# Tmux aliases
alias t='tmux'
alias tn='tmux new'
alias ta='tmux attach'
alias tl='tmux ls'
