#!/bin/bash

# Check if stow is installed, and install it if it's not
if ! command -v stow &> /dev/null; then
	echo 'GNU Stow not installed, installing via apt-get'
	sudo apt-get update
	sudo apt-get install -y stow
fi

# Excluded packages
if [[ "$CODESPACES" == true ]]; then
	echo 'In codespace'
	# Check if zsh is installed, and use bash if it's not
	if ! command -v zsh &> /dev/null; then
		excluded_packages=(
			'.git'
			'zshrc'
			'ohmyposh'
			'kitty'
		)
	else
		excluded_packages=(
			'.git'
			'bashrc'
			'ohmyposh'
			'kitty'
		)
	fi
else
	excluded_packages=(
		'.git'
	)
fi

# Stow all dotfiles
for dir in */; do
	dir_name="${dir%/}"
	excluded=false
	for excluded_dir in "${excluded_packages[@]}"; do
		if [[ "$dir_name" == "$excluded_dir" ]]; then
			excluded=true
			break
		fi
	done
	if ! $excluded; then
		stow "$dir_name"
		echo "Stowed $dir_name"
	fi
done
