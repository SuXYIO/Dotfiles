# Env
# path
export PATH="$PATH:/home/$USER/.local/bin"
# options
export EDITOR='nvim'
export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=2048
export SAVEHIST=2048
# develop
export GOPROXY='https://goproxy.io,direct'
export PATH="$PATH:$HOME/.cargo/bin"
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
prefix='/usr/share'
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

# Ohmyposh
ohmyposh_config="$HOME/.config/ohmyposh/config.toml"
eval "$(oh-my-posh init zsh --config ${ohmyposh_config})"
unset ohmyposh_config

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
alias glg='git log --pretty=oneline --graph --decorate'
alias gd='git diff'
alias gb='git branch'
alias gco='git checkout'
alias gsw='git switch'
alias gcl='git clone'
alias gm='git merge'
alias gcp='git cherry-pick'
alias gi='git init'
alias gr='git reset'
alias grm='git remote'
alias grmv='git rm'
alias gcf='git config'
alias gsts='git stash'
alias gstat='git status'
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

# lazyload conda
conda() {
	unfunction conda
	# >>> conda initialize >>>
	# !! Contents within this block are managed by 'conda init' !!
	__conda_setup="$("$HOME/miniconda3/bin/conda" 'shell.zsh' 'hook' 2> /dev/null)"
	if [ $? -eq 0 ]; then
		eval "$__conda_setup"
	else
		if [ -f "$HOME/miniconda3/etc/profile.d/conda.sh" ]; then
			. "$HOME/miniconda3/etc/profile.d/conda.sh"
		else
			export PATH="$HOME/miniconda3/bin:$PATH"
		fi
	fi
	unset __conda_setup
	# <<< conda initialize <<<
	conda "$@"
}
