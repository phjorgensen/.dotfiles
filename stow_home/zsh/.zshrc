# ZSH HOME
export ZSH=$HOME/.config/zsh

# History config
export HISTFILE=$ZSH/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS

# Keybindings
# bindkey -v

export EDITOR=nvim
export VISUAL=nvim


eval "$(mise activate zsh)"
eval "$(starship init zsh)"

# Config
source $ZSH/remap.sh

export DOTFILES=$HOME/.dotfiles

export PATH="$HOME/.adr-tools/src:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="/usr/local/go/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"

{ alias air="$(go env GOPATH)/bin/air"; } 2>/dev/null

bindkey -s ^f "go-tmux-sessionizer search\n"

[ -f ~/.config/fzf/config.sh ] && source ~/.config/fzf/config.sh
