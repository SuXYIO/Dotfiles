# Dotfiles

## Intro :information_source:

A place to put some of my __dotfiles__.  
More complex config (such as `NeoVim`) are in my other repos.  

Including:  
- Zshrc
- Ohmyposh
- Kitty

## Usage :calling:

The __[GNU Stow](https://www.gnu.org/software/stow)__ is recommended.  
Run
```bash
stow foo
```
in this directory

Where `foo` is the package you want to link.  
For example: `stow zshrc` links the `zshrc` package.  

## Note :memo:

The `kitty/.config/kitty/theme_ayu.conf` is generated from `kitten themes`.  

