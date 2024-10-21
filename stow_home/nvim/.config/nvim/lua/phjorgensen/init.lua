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

    vim.keymap.set("n", "<leader>lr", "<cmd>LspRestart<cr>", opts)

    vim.keymap.set("n", "gd", function()
      vim.lsp.buf.definition()
    end, opts)

    vim.keymap.set("n", "K", function()
      vim.lsp.buf.hover()
    end, opts)

    vim.keymap.set("n", "<leader>vws", function()
      vim.lsp.buf.workspace_symbol()
    end, opts)

    vim.keymap.set("n", "<leader>vca", function()
      vim.lsp.buf.code_action()
    end, opts)

    vim.keymap.set("n", "<leader>vrr", function()
      vim.lsp.buf.references()
    end, opts)

    vim.keymap.set("n", "<leader>vrn", function()
      vim.lsp.buf.rename()
    end, opts)

    vim.keymap.set("i", "<C-h>", function()
      vim.lsp.buf.signature_help()
    end, opts)

    vim.keymap.set("n", "<leader>vd", function()
      vim.diagnostic.open_float()
    end, opts)

    vim.keymap.set("n", "]d", function()
      vim.diagnostic.goto_next()
    end, opts)

    vim.keymap.set("n", "[d", function()
      vim.diagnostic.goto_prev()
    end, opts)

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
