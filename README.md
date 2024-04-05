# .dotfiles

## Set up OS

## Prerequisites

1. Install
   - Arch: `sudo pacman -S stow git kitty thunar curl ripgrep gcc tmux nomacs`
   - Debian: `sudo apt-get install stow git kitty thunar curl ripgrep gcc tmux nomacs`
   - Fedora: `sudo dnf install stow git kitty thunar curl ripgrep gcc tmux nomacs`
   - OpenSuse: `sudo zypper install stow git kitty wezterm thunar curl ripgrep gcc tmux nomacs`
2. Install [wezterm](https://wezfurlong.org/wezterm/install/linux.html)
   - OpenSUSE has a package in zypper, it's added in the list of installs above.
3. Install [lazygit](https://github.com/jesseduffield/lazygit?tab=readme-ov-file#installation)
4. Install [btop](https://github.com/aristocratos/btop?tab=readme-ov-file#installation)
5. [Set up tmux](docs/Set%20up%20tmux.md)
6. [SSH into GitHub](docs/SSH%20into%20GitHub.md)

## Install

1. Run `git clone https://phjorgensen@github.com/phjorgensen/.dotfiles.git`
2. Run `cd .dotfiles`
3. Run `git submodule init`
4. Run `git submodule update`
5. Run `cd stow_home`
6. Run `stow -vt ~ *`
