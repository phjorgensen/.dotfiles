return {
  "neovim/nvim-lspconfig",
  dependencies = {
    -- LSP Support
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },

    -- Autocompletion
    { "hrsh7th/nvim-cmp" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "L3MON4D3/LuaSnip" },
  },
  config = function()
    local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()

    local default_setup = function(server_name)
      require("lspconfig")[server_name].setup({
        capabilities = lsp_capabilities,
      })
    end

    require("mason").setup({})
    require("mason-lspconfig").setup({
      ensure_installed = {
        "vtsls",
        "eslint",
        "svelte",
        "lua_ls",
        "rust_analyzer",
      },
      handlers = {
        default_setup,
        lua_ls = function()
          require("lspconfig").lua_ls.setup({
            capabilities = lsp_capabilities,
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
        end,
        vtsls = function()
          require("lspconfig").vtsls.setup({
            capabilities = lsp_capabilities,
            settings = {
              javascript = {
                preferences = {
                  useAliasesForRenames = false,
                  importModuleSpecifier = "non-relative",
                },
                suggestionActions = {
                  enabled = false,
                },
              },
              typescript = {
                preferences = {
                  useAliasesForRenames = false,
                  importModuleSpecifier = "non-relative",
                },
                suggestionActions = {
                  enabled = false,
                },
              },
            },
          })
        end,
      },
    })

    local cmp = require("cmp")
    local cmp_select = { behavior = cmp.SelectBehavior.Select }

    cmp.setup({
      sources = {
        { name = "nvim_lsp" },
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
        ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
        ["<C-y>"] = cmp.mapping.confirm({ select = true }),
        ["<C-Space>"] = cmp.mapping.complete(),
      }),
      snippet = {
        expand = function(args)
          require("luasnip").lsp_expand(args.body)
        end,
      },
    })

    vim.diagnostic.config({
      float = {
        focusable = false,
        style = "minimal",
        border = "rounded",
        source = true,
        header = "",
        prefix = "",
      },
    })
  end,
}
