# .dotfiles

## Prerequisites

1. Install [GNU Stow](https://www.gnu.org/software/stow/)
   - Arch: `sudo pacman -S stow`
   - Debian: `sudo apt-get install stow`
   - Fedora: `sudo dnf install stow`
2. Install a Nerd Font, Fira Code for instance
3. Run `sudo apt install stow git kitty thunar curl ripgrep fonts-firacode`
4. Any prerequisites of each of the configs, e.g. neovim has it's own prerequisites

## Install Git

1. Run `sudo apt-get install git`
2. Install [Git Credential Manager](https://github.com/git-ecosystem/git-credential-manager/blob/release/docs/install.md#linux).
3. Install [pass](https://www.passwordstore.org/).
4. Follow the [install instructions](https://github.com/git-ecosystem/git-credential-manager/blob/release/docs/credstores.md#gpgpass-compatible-files) for gpg.

## Install

1. Run `git clone https://phjorgensen@github.com/phjorgensen/.dotfiles.git`
2. Run `git submodule init`
3. Run `git submodule update`
4. Run `cd .dotfiles/stow_home`
5. Run `stow -vt ~ *`

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

## References

- [GNU Stow tutorial](https://linustechtips.com/topic/1369746-howto-backup-your-configuration-files-dotfiles-in-linux-using-stow-and-git/)
