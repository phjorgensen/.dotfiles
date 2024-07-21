# Build Nix with configuration

After cloning this repo to your computer, run `sudo nixos-rebuild switch --flake ~/Projects/.dotfiles/nix/#default`.
Change the path to match the location of the .dotfiles repo, it you moved it.
This will build the config with my default flake, change the flake path to build with another flake.
