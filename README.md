# Dotfiles

## Intro :information_source:

A place to put some of my **dotfiles**.  
More complex config (such as `NeoVim`) are in my other repos.

Including:

- Zshrc
- Ohmyposh
- Kitty
- Tmux
- Bashrc
- Git

## Usage :calling:

### Setup.sh

Install **[GNU Stow](https://www.gnu.org/software/stow)**.  
Run the `setup.sh` install script.

```bash
./setup.sh
```

This script also automates **Github Codespaces**, and automatically excludes packages for codespaces.

### Manually

**[GNU Stow](https://www.gnu.org/software/stow)** is recommended.  
Run

```bash
stow foo
```

in this directory

Where `foo` is the package you want to link.  
For example: `stow zshrc` links the `zshrc` package.

## Note :memo:

The `kitty/.config/kitty/theme_ayu.conf` is generated from `kitten themes`.
