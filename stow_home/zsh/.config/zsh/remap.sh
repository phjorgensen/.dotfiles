# Vim
alias vi="nvim"
alias vim="nvim"
alias svi="sudo nvim"
alias svim="sudo nvim"
alias snvim="sudo nvim"

# Has to be single quotes.
alias fuck='sudo $(fc -ln -1)'

# Util
source ~/.config/fav_paths_shared.sh 2> /dev/null
source ~/.config/fav_paths_local.sh 2> /dev/null

# Node
alias ni="npm install --save "
alias nid="npm install --save -D "
alias nr="npm remove "
alias dev="npm run dev"
alias build="npm run build"
alias lint="npm run lint"
alias typecheck="npm run check-types"
alias sveltecheck="npm run svelte-check"
alias test="npm run test"

# Util
alias myip="curl http://ipecho.net/plain; echo"
alias srcconf="source ~/.zshrc"

# Open lazygit
alias lgit="lazygit"
alias ldocker="lazydocker"

mkcd() {
    mkdir -p $1 && cd $1
}

