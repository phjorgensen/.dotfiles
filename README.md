# .dotfiles

## Set up OS

## Prerequisites

1. Install
   - Arch: `sudo pacman -S stow git kitty thunar curl ripgrep gcc fonts-firacode`
   - Debian: `sudo apt-get install stow git kitty thunar curl ripgrep gcc fonts-firacode`
   - Fedora: `sudo dnf install stow git kitty thunar curl ripgrep gcc fonts-firacode`
   - OpenSuse: `sudo zypper install stow git kitty thunar curl ripgrep gcc`
2. [SSH into GitHub](docs/SSH%20into%20GitHub.md)
2. Any prerequisites of each of the configs, e.g. neovim has it's own prerequisites

## Install

1. Run `git clone https://phjorgensen@github.com/phjorgensen/.dotfiles.git`
2. Run `cd .dotfiles`
3. Run `git submodule init`
4. Run `git submodule update`
5. Run `cd stow_home`
6. Run `stow -vt ~ *`

## Add new configs

1. Navigate to the `stow_home` folder
2. Run `mkdir -p {APPLICATION_NAME}/{PATH_TO_CONFIG_FROM_HOME}`
3. Run `mv {PATH_TO_CONFIG} {PATH_TO_STOW_HOME_CONFIG}`
4. Run `stow -vt ~ *`

### Example

```bash
# For files in .config
mkdir -p nvim/.config/nvim
mv ~/.config/nvim nvim/.config

# For files not in .config, e.g. in $HOME
mkdir -p bash
mv ~/.bashrc bash

# Rerun stow
stow -vt ~ *
```

## Add new submodule

Check [Git Tools - Submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules) for more info

1. Run `git submodule add [-b <branch>] <url> [subfolder]`

### Example

```bash
git submodule add https://github.com/chaconinc/DbConnector stow_home/i3/
```

## References

- [GNU Stow tutorial](https://linustechtips.com/topic/1369746-howto-backup-your-configuration-files-dotfiles-in-linux-using-stow-and-git/)
