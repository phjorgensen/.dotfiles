#!/usr/bin/env bash

SKIP_UPDATE_FLAG="--skip-update"
SKIP_STOW_FLAG="--skip-stow"
BOOT_FLAG="--with-boot"

args="$@"

if [[ ! " ${args[*]} " =~ [[:space:]]${SKIP_STOW_FLAG}[[:space:]] ]];
then
  echo "Running stow..."
  ./run_stow_home.sh
  echo "Done!"
else
  echo "Skipping stow"
fi

cd nix

if [[ ! " ${args[*]} " =~ [[:space:]]${SKIP_UPDATE_FLAG}[[:space:]] ]];
then
  echo "Updating flake..."
  nix flake update
  echo "Done!"
else
  echo "Skipping flake update"
fi

if [[ " ${args[*]} " =~ [[:space:]]${BOOT_FLAG}[[:space:]] ]];
then
  echo "Running nixos-rebuild boot..."
  sudo nixos-rebuild boot --flake ~/.dotfiles/nix#perWork
  echo "Done!"
else
  echo "Running nixos-rebuild switch..."
  sudo nixos-rebuild switch --flake ~/.dotfiles/nix#$1
  echo "Done!"
fi
