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

eval "$(starship init zsh)"

# Config
source $ZSH/remap.sh

# Plugins
source $ZSH/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
fpath=($ZSH/plugins/zsh-completions/src $fpath)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.adr-tools/src:$PATH"
export PATH="/usr/local/go/bin:$PATH"

{ alias air="$(go env GOPATH)/bin/air"; } 2>/dev/null

export JAVA_HOME=/usr/local/android-studio/jbr 2> /dev/null
export ANDROID_HOME="$HOME/Android/Sdk" 2> /dev/null
export NDK_HOME="$ANDROID_HOME/ndk/26.2.11394342" 2> /dev/null

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
