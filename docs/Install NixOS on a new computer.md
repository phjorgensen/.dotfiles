# Install NixOS on a new computer

Generate new hardware-config if missing: ´sudo nixos-generate-config --root /mnt´.

## Steps

### 1. Get the repo and stow configs

1. Install NixOS from a live installation medium.
2. Add a WiFi network.
   - Run `nmcli device wifi connect "{SSID}" password {password}`.
3. Run `sudoedit /etc/nixos/configuration.nix`.
4. Add `git`, `neovim` and `stow` in packages.
5. Run `sudo nixos-rebuild switch` to install git.
6. In home, run `git clone https://github.com/phjorgensen/.dotfiles.git`.
7. Run `cd .dotfiles && git submodule init && git submodule update`.
8. Run `cd ~/.dotfiles/stow_home && stow -vt ~ *`.

### 2. Add new host (only required for new computers)

1. Run `cd ~/.dotfiles/nix/hosts`.
2. Run `cp -a template_host {new_host}` where `{new_host}` is the name of the new host.
3. Run `sudo cp /etc/nixos/hardware-configuration.nix ~/.dotfiles/nix/hosts/{new_host}`.
4. Add a new entry in `nixosConfigurations` in `flake.nix` that imports the new configuration.

### 3. Apply new config

1. Run `cd ~/.dotfiles && git add .`.
2. Run `sudo nixos-rebuild switch --flake ~/.dotfiles/nix/#{new_host}`.
3. Reboot is probably a good idea.

### 4. Last tweaks

1. Start tmux, install TPM packages by pressing `<prefix> + I`.
2. Start neovim, Lazy packages are installed automatically.
3. Check that audio works.
   - Run `alsamixer` and adjust volume there if it's low.
