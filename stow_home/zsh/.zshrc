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

eval "$(starship init zsh)"

# Config
source $ZSH/remap.sh
# Disabled since it does not work properly in nix (it can't find the init.zsh since it's in a store)
# Also, it really slows down the start time of the shell.
#source $ZSH/zplug.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export DOTFILES=$HOME/.dotfiles

export PATH="$HOME/.adr-tools/src:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="/usr/local/go/bin:$PATH"


{ alias air="$(go env GOPATH)/bin/air"; } 2>/dev/null

bindkey -s ^f "go-tmux-sessionizer\n"

export JAVA_HOME=/usr/local/android-studio/jbr 2> /dev/null
export ANDROID_HOME="$HOME/Android/Sdk" 2> /dev/null
export NDK_HOME="$ANDROID_HOME/ndk/26.2.11394342" 2> /dev/null

export PATH=$PATH:$HOME/go/bin 2> /dev/null

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
