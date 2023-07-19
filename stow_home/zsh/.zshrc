# ZSH HOME
export ZSH=$HOME/.config/zsh

# Keybindings
bindkey -v

# Theme
source $ZSH/themes/current_theme.zsh

# History config
export HISTFILE=$ZSH/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS

