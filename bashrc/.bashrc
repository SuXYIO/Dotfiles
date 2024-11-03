# ohmyposh
ohmyposh_config="$HOME/.config/ohmyposh/config.toml"
eval "$(oh-my-posh init bash --config ${ohmyposh_config})"

# env
# editor
export EDITOR='nvim'
# lang
export LANG=en_US.UTF-8
# use brew git
export GIT='/usr/local/Cellar/git/*'
export PATH=$GIT/bin:$PATH
# use brew bash
alias bash='/usr/local/bin/bash'
# rust
export RUSTUP_DIST_SERVER=https://mirrors.ustc.edu.cn/rust-static
export RUSTUP_UPDATE_ROOT=https://mirrors.ustc.edu.cn/rust-static/rustup
. "$HOME/.cargo/env"
# tgpt
export AI_PROVIDER='blackboxai'
# ranger
export RANGER_LOAD_DEFAULT_RC=false
# zoxide
eval "$(zoxide init bash)"

# integrade fzf
source <(fzf --bash)

# Aliases
alias lg='lazygit'
alias n='nvim'
alias m='make'
alias s='spf'
alias mingw-gcc-x86='x86_64-w64-mingw32-gcc'
alias mingw-gcc-i686='i686-w64-mingw32-gcc'
alias wine='/Applications/WineCrossover.app/Contents/Resources/wine/bin/wine'
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

