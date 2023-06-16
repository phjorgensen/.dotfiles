## Installs

#### Install package manager
https://github.com/wbthomason/packer.nvim

#### Install NVM (For tsserver and eslint LSPs)
https://github.com/nvm-sh/nvm

#### Install Rust (For rust LSP)
https://doc.rust-lang.org/cargo/getting-started/installation.html

#### Install ripgrep
https://github.com/BurntSushi/ripgrep#installation

## Get files
1. From the `.config` folder
2. Run `mkdir nvim`
3. Run ´cd nvim´
4. Run `git init`
5. Run `git remote add -f origin https://github.com/phjorgensen/.dotfiles.git`
6. Run `git config core.sparseCheckout true`
7. Run `echo ".config/nvim/" >> .git/info/sparse-checkout`
8. Run `git pull origin main`

### Init

1. Start neovim.
2. Run `:PackerSync` to install all packages.
3. $$$
