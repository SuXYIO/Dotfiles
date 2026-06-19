# Env
# path
export PATH="$PATH:/home/$USER/.local/bin"
# options
export EDITOR='nvim'
export MANPAGER="batcat -plman"
export HISTFILE="$HOME/.zsh_history"
# develop
export GOPROXY='https://goproxy.cn,direct'
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:$HOME/go/bin"
export PATH="$PATH:$HOME/mybin"
# lang
export LANG=en_US.UTF-8

# Options
bindkey -v
setopt HIST_IGNORE_SPACE
setopt NO_CLOBBER
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
#setopt SHARE_HISTORY

# Autoloads
# completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' menu select
autoload -Uz compinit && compinit
# edit cmdline
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey '^X' edit-command-line
# zmv
autoload -Uz zmv

# Plugins
prefix="${HOME}/.local/share"
# pls clone the repos manually when installing
source ${prefix}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ${prefix}/zsh-autosuggestions/zsh-autosuggestions.zsh
source ${prefix}/zsh-history-substring-search/zsh-history-substring-search.zsh
export HISTORY_SUBSTRING_SEARCH_FUZZY=true
# use '^[[A' or anything that fits your emulator
bindkey "${terminfo[kcuu1]}" history-substring-search-up
bindkey "${terminfo[kcud1]}" history-substring-search-down
unset prefix

# Tools
# fzf
source <(fzf --zsh)
# zoxide
eval "$(zoxide init zsh)"
# ohmyposh
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/config.toml)"

# Aliases & Functions
# Tools
alias lg='lazygit'
alias n='nvim'
alias dush='du -sh'
alias copy='wl-copy'
alias paste='wl-paste'
alias pyactiv='source .venv/bin/activate'
# File operations
# ls
alias ls='lsd'
alias la='ls -A'
alias ll='ls -l'
alias lla='ls -lA'
alias lls='lsd -l --total-size'
alias tree='lsd --tree'
alias trea='lsd --tree -A'
# mkdir
alias md='mkdir'
# rm
alias rm='trash'
# cat
alias bat='batcat'
# Git
alias g='git'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git pull'
alias glg='git log --pretty=oneline --graph --decorate'
alias gd='git diff'
alias gb='git branch'
alias gco='git checkout'
alias gsw='git switch'
alias gcl='git clone'
alias gm='git merge'
alias gini='git init'
alias grm='git remote'
alias gcf='git config'
alias gstsh='git stash'
alias gstat='git status'
alias gt='git tag'
# cd to a git repository top
zt() {
	toplevel="$(git rev-parse --show-toplevel)" || {
		# failed
		return 1
	}

	cd -- "${toplevel}" || return
	echo "$toplevel"
}
# Tmux
alias t='tmux'
alias ta='tmux attach'
alias tl='tmux ls'
