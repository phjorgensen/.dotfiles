#!/usr/bin/env bash

# From: https://keestalkstech.com/named-arguments-in-a-bash-script/
while [ $# -gt 0 ]; do
    if [[ $1 == "--"* ]]; then
        v="${1/--/}"
        declare "$v"="$2"
        shift
    fi
    shift
done

tmux new-window -n front-end 'cd '$fe' && nix develop -c $SHELL'
tmux new-window -n back-end 'cd '$be' && nix develop -c $SHELL'
tmux new-window -n terminal 'nix develop -c $SHELL'
