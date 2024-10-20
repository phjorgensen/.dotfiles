cd nix
sudo nix flake update
sudo nixos-rebuild switch --flake ~/.dotfiles/nix#perCode
