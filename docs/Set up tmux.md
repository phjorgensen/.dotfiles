# Set up tmux

1. Install [tmux](https://github.com/tmux/tmux), if not already installed from the initial install command in the README.
2. Run `git submodule init` and `git submodule update` to get [TPM](https://github.com/tmux-plugins/tpm).
3. Run `stow -vt ~ *` from `stow_home` to move the tmux config file to the correct place.
4. Open tmux in a terminal and install TPM packages with `<prefix> + I` (prefix is <C-a> in my config).
