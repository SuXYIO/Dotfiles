# SSH Config
if [ -n $SSH_CONNECTION ] || [ -n $SSH_CLIENT ] || [ -n $SSH_TTY]; then
	# local
	setopt HIST_IGNORE_SPACE
fi

# env
export XDG_CONFIG_HOME="$HOME/.config"
# zsh
export HISTSIZE=512
export SAVEHIST=512
# pager
export MANPAGER='nvim +Man!'
# lang
export LANG=en_US.UTF-8
# use brew git
export GIT='/usr/local/Cellar/git/*'
export PATH=$GIT/bin:$PATH
# use brew bash
alias bash='/usr/local/bin/bash'
# man
export MANPATH="/usr/local/man:$MANPATH"
# rust
export RUSTUP_DIST_SERVER=https://mirrors.ustc.edu.cn/rust-static
export RUSTUP_UPDATE_ROOT=https://mirrors.ustc.edu.cn/rust-static/rustup
. "$HOME/.cargo/env"
# tgpt
export AI_PROVIDER='blackboxai'
# go
export GO111MODULE=on
export GOPROXY=https://goproxy.io
# zoxide
eval "$(zoxide init zsh)"
# john
export PATH=$PATH:/usr/local/opt/john-jumbo/share/john
# ruby
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/lib/ruby/gems/3.3.0/bin:$PATH"

# Keys
bindkey -v

# Completion
setopt HIST_IGNORE_ALL_DUPS
autoload -Uz compinit && compinit

# Plugins
prefix="/usr/local/"
source ${prefix}/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ${prefix}/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source ${prefix}/share/zsh-history-substring-search/zsh-history-substring-search.zsh
export HISTORY_SUBSTRING_SEARCH_FUZZY=true
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

# Ohmyposh
ohmyposh_config="$HOME/.config/ohmyposh/config.toml"
eval "$(oh-my-posh init zsh --config ${ohmyposh_config})"

# Custom
export EDITOR='nvim'

# Aliases
alias lg='lazygit'
alias n='nvim'
alias py3='python3'
alias mk='make'
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
