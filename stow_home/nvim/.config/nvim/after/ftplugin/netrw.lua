-- Overwrite netrw <C-l> shortcut, with shortcut for navigating between neovim and tmux
-- https://github.com/christoomey/vim-tmux-navigator/issues/189#issuecomment-1937834137
vim.keymap.set('n', '<C-l>', '<cmd>TmuxNavigateRight<CR>', {
  silent = true, buffer = true
})
