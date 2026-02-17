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
  -- "java_language_server", -- Java
  "jdtls", -- Eclipse version of Java

  "kotlin_language_server", -- Kotlin (unofficial and deprecated, but official is not in nixpkgs and is pre-alpha)
  -- "kotlin_lsp", -- official, but in pre-alpha
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

vim.diagnostic.config({
  virtual_lines = true,
  -- virtual_text = true,
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
