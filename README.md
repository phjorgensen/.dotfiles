# .dotfiles

## Set up OS

## Prerequisites

1. Install
   - Debian: `sudo apt install stow git thunar curl ripgrep gcc`
   - OpenSuse: `sudo zypper in stow git thunar curl ripgrep gcc`
2. [Set up flatpak](https://flathub.org/setup)
3. Install [nomacs](https://flathub.org/apps/org.nomacs.ImageLounge)
4. [Set up terminal](docs/Set%20up%20terminal.md)
5. [Set up Neovim](docs/Set%20up%20neovim.md)
6. [SSH into GitHub](docs/SSH%20into%20GitHub.md)

## Install

1. Run `git clone https://phjorgensen@github.com/phjorgensen/.dotfiles.git`
2. Run `cd .dotfiles`
3. Run `git submodule init`
4. Run `git submodule update`
5. Run `cd stow_home`
6. Run `stow -vt ~ *`
