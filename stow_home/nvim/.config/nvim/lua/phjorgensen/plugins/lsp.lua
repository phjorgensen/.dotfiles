return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")

    lspconfig.lua_ls.setup({
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

    lspconfig.nil_ls.setup({
      autostart = true,
      settings = {
        ["nil"] = {
          formatting = {
            command = { "nixpkgs-fmt" },
          },
        },
      },
    })

    lspconfig.rust_analyzer.setup({})
    lspconfig.ts_ls.setup({})
    lspconfig.svelte.setup({})
    lspconfig.tailwindcss.setup({})
    lspconfig.intelephense.setup({})
    lspconfig.gopls.setup({})
    lspconfig.marksman.setup({})
  end,
}
