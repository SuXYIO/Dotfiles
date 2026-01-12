# SSH Config
if [ -n "$SSH_CONNECTION" ] || [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
	# local
	setopt HIST_IGNORE_SPACE
fi

# env
export HISTFILE=~/.zsh_history
export HISTSIZE=512
export SAVEHIST=512

# lang
export LANG=en_US.UTF-8
# zoxide
eval "$(zoxide init zsh)"

# Options
bindkey -v
setopt NO_CLOBBER
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
#setopt SHARE_HISTORY

# Autoloads
# completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' menu select
# lazyload compinit
compinit_lazy_func() {
	# run on first tab press
	autoload -Uz compinit && compinit
	unfunction compinit_lazy_func
	zle -D compinit_lazy
	bindkey "^I" complete-word
}
zle -N compinit_lazy compinit_lazy_func
bindkey "^I" compinit_lazy
# edit cmdline
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey '^X' edit-command-line
# zmv
autoload -Uz zmv

# Plugins
prefix="/usr/share"
# pls clone the repos manually when installing
source ${prefix}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#source ${prefix}/zsh-autosuggestions/zsh-autosuggestions.zsh
source ${prefix}/zsh-history-substring-search/zsh-history-substring-search.zsh
export HISTORY_SUBSTRING_SEARCH_FUZZY=true
# use '^[[A' or anything that fits your emulator
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
unset prefix

# fzf
source <(fzf --zsh)

# Ohmyposh
ohmyposh_config="$HOME/.config/ohmyposh/config.toml"
eval "$(oh-my-posh init zsh --config ${ohmyposh_config})"
unset ohmyposh_config

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
alias grep='grep --color=auto'
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
