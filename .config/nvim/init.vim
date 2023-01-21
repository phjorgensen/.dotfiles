set relativenumber

call plug#begin()

" Telescope requirements
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
" sudo dnf install ripgrep
" sudo dnf install fd-find
" End of Telescope requirements

call plug#end()
