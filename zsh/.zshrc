# SSH Config
if [ -n $SSH_CONNECTION ] || [ -n $SSH_CLIENT ] || [ -n $SSH_TTY]; then
	# local
	setopt HIST_IGNORE_SPACE
fi

# env
export HISTFILE=~/.zsh_history
export HISTSIZE=512
export SAVEHIST=512

# pager
export MANPAGER='nvim +Man!'
# lang
export LANG=en_US.UTF-8
# zoxide
eval "$(zoxide init zsh)"

# Keys
bindkey -v

# Completion
setopt HIST_IGNORE_ALL_DUPS
autoload -Uz compinit && compinit

# Plugins
prefix="/usr/share"
# clone the repos manually when installing
source ${prefix}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ${prefix}/zsh-autosuggestions/zsh-autosuggestions.zsh
source ${prefix}/zsh-history-substring-search/zsh-history-substring-search.zsh
export HISTORY_SUBSTRING_SEARCH_FUZZY=true
# use '^[[A' or anything that fits your emulator
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

# Ohmyposh
ohmyposh_config="$HOME/.config/ohmyposh/config.toml"
eval "$(oh-my-posh init zsh --config ${ohmyposh_config})"

# Path
export PATH="$PATH:/home/$USER/.local/bin"
# Rust
export PATH="$PATH:/home/$USER/.cargo/bin"

# Custom
export EDITOR='nvim'

# Aliases
# Tools
alias lg='lazygit'
alias n='nvim'
# Development
alias py3='python3'
alias venv='python3 -m venv'
function activ {
	source "$1/bin/activate"
}
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

