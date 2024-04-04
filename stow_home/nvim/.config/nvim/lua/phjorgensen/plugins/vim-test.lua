return {
    "vim-test/vim-test",
    dependencies = {
        "preservim/vimux",
    },
    config = function()
        vim.keymap.set('n', '<leader>tn', '<cmd>:TestNearest<CR>')
        vim.keymap.set('n', '<leader>tf', '<cmd>:TestFile<CR>')
        vim.keymap.set('n', '<leader>ta', '<cmd>:TestSuite<CR>')
        vim.keymap.set('n', '<leader>tl', '<cmd>:TestLast<CR>')
        vim.keymap.set('n', '<leader>tv', '<cmd>:TestVisit<CR>')

        vim.cmd("let test#strategy = 'vimux'")
    end,
}
