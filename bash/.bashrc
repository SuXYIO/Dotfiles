# Env
# path
export PATH="$PATH:/home/$USER/.local/bin"
# options
export EDITOR='nvim'
export HISTFILE=~/.zsh_history
export HISTSIZE=2048
export SAVEHIST=2048
# develop
export GOPROXY='https://goproxy.io,direct'
export PATH="$PATH:/home/$USER/.cargo/bin"
# lang
export LANG=en_US.UTF-8

# Tools
# fzf
source <(fzf --bash)
# zoxide
eval "$(zoxide init bash)"

# Aliases & Functions
# Tools
alias lg='lazygit'
alias n='nvim'
alias grep='grep --color=auto'
# File operations
# ls
alias ls='lsd'
alias la='ls -A'
alias ll='ls -l'
alias lla='ls -lA'
# mkdir
alias md='mkdir'
# Git
alias g='git'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git pull'
alias glo='git log --pretty=oneline --graph --decorate'
alias gd='git diff'
alias gb='git branch'
alias gco='git checkout'
alias gsw='git switch'
alias gcl='git clone'
alias gm='git merge'
alias gi='git init'
alias gr='git reset'
alias grm='git remote'
alias gcf='git config'
alias gst='git status'
alias grs='git restore'
alias gf='git fetch'
alias gt='git tag'
# cd to a git repository top
cd_project_top() {
	toplevel="$(git rev-parse --show-toplevel)" || {
		# failed
		return 1
	}

	cd -- "${toplevel}" || return
	echo "$toplevel"
}
alias zt='cd_project_top'
# Tmux
alias t='tmux'
alias ta='tmux attach'
alias tl='tmux ls'
