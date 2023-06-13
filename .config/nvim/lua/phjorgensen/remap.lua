vim.g.mapleader = " ";
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex); -- go back to Ex

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")   -- move selection down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")   -- move selection up

vim.keymap.set("n", "J", "mzJ`z")              -- keep moving line below to the end of current line
vim.keymap.set("n", "<C-d>", "<C-d>zz")        -- when moving half page down, keep cursor in the middle of the screen
vim.keymap.set("n", "<C-u>", "<C-u>zz")        -- when moving halp page up, keep cursor in the middle of the screen
vim.keymap.set("n", "n", "nzzzv")              -- when going to next search, keep cursor in the middle of the screen
vim.keymap.set("n", "N", "Nzzzv")              -- when going to previous search, keep cursor in the middle of the screen

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]]) -- copy to system clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]])          -- copy to system clipboard

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]]) -- delete to void, not to clipboard

vim.keymap.set("i", "<C-c>", "<Esc>") -- exiting insert mode with Ctrl-c will use Esc

vim.keymap.set("n", "Q", "<nop>") -- I don't know what Q does, but It's bad apparently
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>") -- maybe add again if i add tmux at some point
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format) -- formatting the document?

-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz") -- find errors? -- collides with harpoon quick links
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz") -- find errors? -- collides with harpoon quick links
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz") -- find errors?
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz") -- find errors?

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("so")
end)
