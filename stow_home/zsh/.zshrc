bindkey -v

# Themes and colours
source ~/.config/zsh/themes/droolscar.zsh-theme

# History
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.cache/zsh/history

# Aliases
alias ni="npm install --save "
alias nr="npm remove "

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
