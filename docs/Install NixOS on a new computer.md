# Install NixOS on a new computer

## Steps

1. Install NixOS from a USB stick.
2. Run `sudoedit /etc/nixos/configuration.nix`.
3. Add `git`, `neovim`, and `stow` in packages.
4. Run `sudo nixos-rebuild switch` to install git.
5. Run `mkdir ~/Projects && cd ~/Projects`.
6. Run `git clone https://github.com/phjorgensen/.dotfiles.git`.
7. Run `cd .dotfiles && git submodules init && git submodules update`.
8. Run `cd ~/Projects/.dotfiles/stow_home && stow -vt ~ *`.
9. Run `cd ~/Projects/.dotfiles/nix/hosts`.
10. Run `cp -a {base_host} {new_host}` where `base_host` is the host to create the new host from, and `new_host` is the name of the new host.
11. Run `cd {new_host} && rm hardware-configuration.nix`.
12. Run `sudo cp /etc/nixos/hardware-configuration.nix ~/Projects/.dotfiles/nix/hosts/{new_host}`.
13. Add a new entry in `nixosConfigurations` in `flake.nix` that imports the new configuration.
14. From `~/Projects/.dotfiles`, run `git add .`.
15. Run `sudo nixos-rebuild switch --flake ~/Project/.dotfiles/nix/#{new_host}`.

## Future improvements

- Create a script in the .dotfiles repo that does all steps after cloning.
- Remove the use for backing up hardeare-config?
  - I don't know if this is possible, try to link it as a module in the flake `nixosConfiguraiton`.
- Try to rebuild the system from a remote flake?
  - Try to create a new repo with just the flake and do `--flake github:phjorgensen/nix-config`.
  - Or find a way to reference a subfolder of the .dotfiles repo.
