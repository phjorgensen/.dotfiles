// sudo dnf install fd-find
// sudo dnf install ripgrep

set relativenumber

call plug#begin()

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
Plug 'nvim-treesitter/nvim-treesitter'

call plug#end()
