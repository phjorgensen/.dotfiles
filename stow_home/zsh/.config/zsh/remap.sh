# Vim
alias vi="nvim"
alias vim="nvim"
alias svi="sudo nvim"
alias svim="sudo nvim"
alias snvim="sudo nvim"

alias fuck="sudo !!"

# Util
source ~/.config/fav_paths_shared.sh 2> /dev/null
source ~/.config/fav_paths_local.sh 2> /dev/null

# Node
alias ni="npm install --save "
alias nid="npm install --save -D "
alias nr="npm remove "

alias yi="yarn add "
alias yid="yarn add -D "
alias yr="yarn remove "

# Util
alias myip="curl http://ipecho.net/plain; echo"
alias srcconf="source ~/.zshrc"

# Open lazygit
alias lgit="lazygit"
alias ldocker="lazydocker"

mkcd() {
    mkdir -p $1 && cd $1
}

