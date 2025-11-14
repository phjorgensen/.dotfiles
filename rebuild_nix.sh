#!/usr/bin/env bash

cd nix

skip_update_flag="--skip-update"
skip_stow_flag="--skip-stow"

if [[ $2 != $skip_update_flag ]]; then
  nix flake update
fi

# Not ready yet, need some check if args includes $skip_stow_flag or $skip_update_flag
# if [[ $3 != $skip_stow_flag ]]; then
#   ./run_stow_home.sh
# fi

sudo nixos-rebuild switch --flake ~/.dotfiles/nix#$1
