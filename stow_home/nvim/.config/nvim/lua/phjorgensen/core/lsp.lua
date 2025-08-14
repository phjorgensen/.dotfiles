vim.lsp.enable({
  "lua_ls",
  "nixd", -- Nix
  "rust_analyzer",
  "eslint",
  "ts_ls", -- TypeScript, wrapping tsserver
  "svelte",
  "tailwindcss",
  "intelephense", -- PHP
  "gopls",
  "marksman", -- Markdown
  "hyprls", -- Hyprland
  "sourcekit", -- Swift
})

-- Restart LSPs
vim.keymap.set("n", "<leader>lsr", "<CMD>LspRestart<CR>", { desc = "Restart LSP" })

vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT",
      },
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = {
          vim.env.VIMRUNTIME,
        },
      },
    },
  },
})

vim.lsp.config("nixd", {
  autostart = true,
  settings = {
    nixd = {
      formatting = {
        command = { "nixfmt" },
      },
    },
  },
})

vim.diagnostic.config({
  -- virtual_lines = true,
  virtual_text = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  float = {
    border = "rounded",
    source = true,
  },
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "󰅚",
      [vim.diagnostic.severity.WARN] = "󰀪",
      [vim.diagnostic.severity.INFO] = "󰋽",
      [vim.diagnostic.severity.HINT] = "󰌶",
    },
    numhl = {
      [vim.diagnostic.severity.ERROR] = "ErrorMsg",
      [vim.diagnostic.severity.WARN] = "WarningMsg",
    },
  },
})
