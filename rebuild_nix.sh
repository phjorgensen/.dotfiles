#!/usr/bin/env bash

SKIP_UPDATE_FLAG="--skip-update"
SKIP_STOW_FLAG="--skip-stow"
BOOT_FLAG="--with-boot"

args="$@"
echo "Args: $args"

if [[ ! " ${args[*]} " =~ [[:space:]]${SKIP_STOW_FLAG}[[:space:]] ]];
then
  echo "Running stow"
  ./run_stow_home.sh
else
  echo "Skipping stow"
fi

cd nix

if [[ ! " ${args[*]} " =~ [[:space:]]${SKIP_UPDATE_FLAG}[[:space:]] ]];
then
  echo "Updating flake"
  nix flake update
else
  echo "Skipping flake update"
fi

if [[ " ${args[*]} " =~ [[:space:]]${BOOT_FLAG}[[:space:]] ]];
then
  echo "Running nixos-rebuild boot"
  sudo nixos-rebuild boot --flake ~/.dotfiles/nix#perWork
else
  echo "Running nixos-rebuild switch"
  sudo nixos-rebuild switch --flake ~/.dotfiles/nix#$1
fi
