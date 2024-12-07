# Dotfiles

## Intro :information_source:

A place to put some of my __dotfiles__.  
More complex config (such as `NeoVim`) are in my other repos.  

Including:  
- Zshrc
- Ohmyposh
- LazyGit
- Kitty
- Tmux
- Bashrc
- Git

## Usage :calling:

### Setup.sh

Install __[GNU Stow](https://www.gnu.org/software/stow)__.  
Run the `setup.sh` install script.  
```bash
./setup.sh
```

This script also automates __Github Codespaces__, and automatically excludes packages for codespaces.  

### Manually

__[GNU Stow](https://www.gnu.org/software/stow)__ is recommended.  
Run
```bash
stow foo
```
in this directory

Where `foo` is the package you want to link.  
For example: `stow zshrc` links the `zshrc` package.  

## Note :memo:

The `kitty/.config/kitty/theme_ayu.conf` is generated from `kitten themes`.  
The `tmux/` config files are cloned from [gpakosz/.tmux](https://github.com/gpakosz/.tmux), `tmux/.tmux.conf.local` is edited by myself.  

