vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", "<cmd>Ex<CR>")

-- Move between splits
vim.keymap.set("n", "<C-h>", "<cmd>wincmd h<CR>", { silent = true })
vim.keymap.set("n", "<C-j>", "<cmd>wincmd j<CR>", { silent = true })
vim.keymap.set("n", "<C-k>", "<cmd>wincmd k<CR>", { silent = true })
vim.keymap.set("n", "<C-l>", "<cmd>wincmd l<CR>", { silent = true })

-- Helix style goto binds
vim.keymap.set({ "n", "v" }, "gl", "$", { desc = "Go to end of line" })
vim.keymap.set({ "n", "v" }, "gh", "0", { desc = "Go to start of line" })
vim.keymap.set({ "n", "v" }, "gs", "^", { desc = "Go to first character of line" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")       -- move selection down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")       -- move selection up

vim.keymap.set("n", "J", "mzJ`z")                  -- move line below to the end of current line
vim.keymap.set("n", "<C-d>", "<C-d>zz")            -- when moving half page down, keep cursor in the middle of the screen
vim.keymap.set("n", "<C-u>", "<C-u>zz")            -- when moving half page up, keep cursor in the middle of the screen
vim.keymap.set("n", "n", "nzzzv")                  -- when going to next search, keep cursor in the middle of the screen
vim.keymap.set("n", "N", "Nzzzv")                  -- when going to previous search, keep cursor in the middle of the screen

vim.keymap.set("x", "<leader>p", [["_dP]])         -- paste without replacing paste buffer
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]]) -- delete removed to void, not to clipboard
vim.keymap.set({ "n", "v" }, "<leader>c", [["_c]]) -- delete changed to void, not to clipboard

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]]) -- copy to system clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]])          -- copy to system clipboard

vim.keymap.set("i", "<C-c>", "<Esc>")              -- exiting insert mode with Ctrl-c will use Esc

vim.keymap.set("n", "Q", "@a")                     -- Bind Q to run the macro stored in the A register, instead of entering Ex mode

-- Not sure what this does, test to figure it out
vim.keymap.set("n", "<leader>cn", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<leader>cp", "<cmd>cprev<CR>zz")

-- Not sure what this does, test to figure it out
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>sr", ":%s/<C-r><C-w>/<C-r><C-w>/gI<Left><Left><Left>", { desc = "Search and replace" })
vim.keymap.set("v", "<leader>sr", ":s///gI<Left><Left><Left><Left>", { desc = "Search and replace selection" })

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
vim.keymap.set("n", "<leader>X", "<cmd>!chmod -x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>so", "<cmd>so<CR>")
