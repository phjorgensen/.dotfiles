# .dotfiles

## Prerequisites

1. Install [GNU Stow](https://www.gnu.org/software/stow/)
  - Arch: `sudo pacman -S stow`
  - Debian: `sudo apt install stow`
  - Fedora: `sudo dnf install stow`

## Install

1. Run `git clone https://github.com/phjorgensen/.dotfiles.git`
2. Run `cd .dotfiles/stow_home`
3. Run `stow -vt ~ *`

## Add new configs

1. Navigate to the `stow_home` folder
2. Run `mkdir -p {APPLICATION_NAME}/{PATH_TO_CONFIG_FROM_HOME}
3. Run `mv {PATH_TO_CONFIG} {PATH_TO_STOW_HOME}`

### Example

```bash
# For files in .config
mkdir -p nvim/.config/nvim
mv ~/.config/nvim nvim/.config

# For files not in .config, ex. in $HOME
mkdir -p bash
mv ~/.bashrc bash
```

## References

- [GNU Stow tutorial](https://linustechtips.com/topic/1369746-howto-backup-your-configuration-files-dotfiles-in-linux-using-stow-and-git/)
