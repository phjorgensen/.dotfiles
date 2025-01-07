# Vim
alias vi='nvim'
alias vim='nvim'
alias svi='sudo nvim'
alias svim='sudo nvim'
alias snvim='sudo nvim'

# Has to be single quotes.
alias fuck='sudo $(fc -ln -1)'

alias ll='ls -l'
alias la='ls -a'
alias switch='sudo nixos-rebuild switch --flake ~/Projects/.dotfiles/nix/#default'
alias configure='nvim ~/Projects/.dotfiles/nix'

# Util
source ~/.config/fav_paths_shared.sh 2> /dev/null
source ~/.config/fav_paths_local.sh 2> /dev/null
alias myip='curl http://ipecho.net/plain; echo'
alias srcconf='source ~/.zshrc'

# Node
alias ni='npm install --save '
alias nid='npm install --save -D '
alias nr='npm remove '
alias dev='npm run dev'
alias build='npm run build'
alias lint='npm run lint'
alias typecheck='npm run test:ts'
alias sveltecheck='npm run test:svelte-only'
alias test='npm run test'
alias format='npm run format'

# Open lazy
alias lgit='lazygit'
alias ldocker='lazydocker'

nu() {
  npm install --save $1@latest
}

nud() {
  npm install --save -D $1@latest
}

mkcd() {
  mkdir -p $1 && cd $1
}
