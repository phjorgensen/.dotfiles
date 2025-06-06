require("phjorgensen.config.remap")
require("phjorgensen.config.set")
require("phjorgensen.core.lsp")
require("phjorgensen.core.lazy")

local yank_group = vim.api.nvim_create_augroup("HighlightYank", {})

vim.api.nvim_create_autocmd("TextYankPost", {
  group = yank_group,
  pattern = "*",
  callback = function()
    vim.hl.on_yank({
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

    -- Info
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set({ "n", "i" }, "<C-k>", vim.lsp.buf.signature_help, opts)

    -- Go to
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    -- Use Snacks picker instead.
    -- vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
    vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, opts)

    -- Actions
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

    -- Diagnostics
    vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)

    vim.keymap.set("n", "<leader>vn", function()
      return vim.diagnostic.jump({ count = 1, float = true, buffer = e.buf })
    end, { desc = "Next diagnostic" })

    vim.keymap.set("n", "<leader>vp", function()
      return vim.diagnostic.jump({ count = -1, float = true, buffer = e.buf })
    end, { desc = "Previous diagnostic" })

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
