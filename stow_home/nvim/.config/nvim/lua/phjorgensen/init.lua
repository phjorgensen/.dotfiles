require("phjorgensen.remap")
require("phjorgensen.set")
require("phjorgensen.lazy")

local yank_group = vim.api.nvim_create_augroup("HighlightYank", {})

vim.api.nvim_create_autocmd("TextYankPost", {
  group = yank_group,
  pattern = "*",
  callback = function()
    vim.highlight.on_yank({
      higroup = "IncSearch",
      timeout = 40,
    })
  end,
})

local phorgensenGroup = vim.api.nvim_create_augroup("phjorgensen", {})

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  group = phorgensenGroup,
  pattern = "*",
  command = [[%s/\s\+$//e]],
})

vim.api.nvim_create_autocmd("LspAttach", {
  group = phorgensenGroup,
  callback = function(e)
    local opts = { buffer = e.buf }

    -- LSP server
    vim.keymap.set("n", "<leader>lsr", "<cmd>LspRestart<cr>", opts)

    -- Info
    vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<cr>", opts)
    vim.keymap.set({ "n", "i" }, "<C-k>", vim.lsp.buf.signature_help, opts)

    -- Peek
    vim.keymap.set("n", "<leader>pd", "<cmd>Lspsaga peek_definition<cr>", opts)
    vim.keymap.set("n", "<leader>pt", "<cmd>Lspsaga peek_type_definition<cr>", opts)

    -- Go to
    vim.keymap.set("n", "gd", "<cmd>Lspsaga goto_definition<cr>", opts)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
    vim.keymap.set("n", "gt", "<cmd>Lspsaga goto_type_definition<cr>", opts)

    -- Actions
    vim.keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<cr>", opts)
    vim.keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<cr>", opts)

    -- Diagnostics
    vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
    vim.keymap.set("n", "<leader>vn", "<cmd>Lspsaga diagnostic_jump_next<cr>", opts)
    vim.keymap.set("n", "<leader>vp", "<cmd>Lspsaga diagnostic_jump_prev<cr>", opts)

    vim.diagnostic.config({
      float = {
        -- focusable = false,
        -- style = "minimal",
        -- border = "rounded",
        -- source = true,
        -- header = "",
        -- prefix = "",
      },
    })
  end,
})

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

-- Set up snipe as vim.ui.select
-- local snipe = require("snipe")
--
-- snipe.ui_select_menu = require("snipe.menu"):new({ position = "center" })
-- snipe.ui_select_menu:add_new_buffer_callback(function(m)
--   vim.keymap.set("n", "<esc>", function()
--     m:close()
--   end, { nowait = true, buffer = m.buf })
-- end)
--
-- vim.ui.select = snipe.ui_select
