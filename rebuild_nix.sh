#!/usr/bin/env bash

cd nix

skip_update_flag="--skip-update"

if [[ $2 != $skip_update_flag ]]; then
  nix flake update
fi

sudo nixos-rebuild switch --flake ~/.dotfiles/nix#$1
