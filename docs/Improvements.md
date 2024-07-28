# Improvements

## Polybar

- Add catppuccin theme.
- Make bar on main screen and side screen different.
  - There is an issue here, where the tray can only be displayed on one screen, and I need to make sure that it is the main screen.

## Nix

- Create a script in the .dotfiles repo that does all steps after cloning.
- Remove the use for backing up hardeare-config?
  - I don't know if this is possible, try to link it as a module in the flake `nixosConfiguraiton`.
- Try to rebuild the system from a remote flake?
  - Try to create a new repo with just the flake and do `--flake github:phjorgensen/nix-config`.
  - Or find a way to reference a subfolder of the .dotfiles repo.
- Find a good way to authenticate to GitHub.
  - This should be one of the steps of the installation. I can clone the repo, but not push to it.
  - Path of least resistance, I can just add an SSH key. But it's a hassle.
  - Maybe I can get `git-credential-oauth` to work? If not, maybe check out Git Credential Manager again?
- Run `git credential-oauth configure` automatically, or backup the git config.
