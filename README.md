# .dotfiles

## Set up OS

## Prerequisites

1. Install
   - Arch: `sudo pacman -S stow git kitty thunar curl ripgrep gcc`
   - Debian: `sudo apt-get install stow git kitty thunar curl ripgrep gcc`
   - Fedora: `sudo dnf install stow git kitty thunar curl ripgrep gcc`
   - OpenSuse: `sudo zypper install stow git kitty thunar curl ripgrep gcc`
2. [SSH into GitHub](docs/SSH%20into%20GitHub.md)

## Install

1. Run `git clone https://phjorgensen@github.com/phjorgensen/.dotfiles.git`
2. Run `cd .dotfiles`
3. Run `git submodule init`
4. Run `git submodule update`
5. Run `cd stow_home`
6. Run `stow -vt ~ *`
