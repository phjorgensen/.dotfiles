#!/usr/bin/env bash

cd nix
nix flake update
sudo nixos-rebuild switch --flake ~/.dotfiles/nix#perWork
