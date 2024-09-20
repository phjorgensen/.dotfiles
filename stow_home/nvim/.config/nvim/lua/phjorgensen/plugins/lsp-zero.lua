return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    vim.opt.signcolumn = "yes"

    local lspconfig = require("lspconfig")
    local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()

    lspconfig.util.default_config.capabilities =
      vim.tbl_deep_extend("force", lspconfig.util.default_config.capabilities, lsp_capabilities)

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

    require("lspconfig").nil_ls.setup({
      autostart = true,
      capabilities = lsp_capabilities,
      settings = {
        ["nil"] = {
          testSetting = 42,
          formatting = {
            command = { "nixpkgs-fmt" },
          },
        },
      },
    })

    require("lspconfig").rust_analyzer.setup({})
    --require("lspconfig").eslint.setup({})
    require("lspconfig").ts_ls.setup({})
    require("lspconfig").svelte.setup({})
    require("lspconfig").tailwindcss.setup({})
    require("lspconfig").intelephense.setup({})

    local cmp = require("cmp")
    local cmp_select = { behavior = cmp.SelectBehavior.Select }

    cmp.setup({
      sources = {
        { name = "nvim_lsp" },
      },
      snippet = {
        expand = function(args)
          vim.snippet.expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
        ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
        ["<C-y>"] = cmp.mapping.confirm({ select = true }),
        ["<C-Space>"] = cmp.mapping.complete(),
      }),
    })

    -- local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()

    -- local default_setup = function(server_name)
    --   require("lspconfig")[server_name].setup({
    --     capabilities = lsp_capabilities,
    --   })
    -- end

    -- require("mason").setup({})
    -- require("mason-lspconfig").setup({
    --   ensure_installed = {
    --     "lua_ls",
    --     "rust_analyzer",
    --     "eslint",
    --     "tsserver",
    --     "svelte",
    --     "tailwindcss",
    --   },
    --   handlers = {
    --     default_setup,
    --     lua_ls = function()
    --       require("lspconfig").lua_ls.setup({
    --         capabilities = lsp_capabilities,
    --         settings = {
    --           Lua = {
    --             runtime = {
    --               version = "LuaJIT",
    --             },
    --             diagnostics = {
    --               globals = { "vim" },
    --             },
    --             workspace = {
    --               library = {
    --                 vim.env.VIMRUNTIME,
    --               },
    --             },
    --           },
    --         },
    --       })
    --     end,
    --     vtsls = function()
    --       require("lspconfig").vtsls.setup({
    --         capabilities = lsp_capabilities,
    --         settings = {
    --           javascript = {
    --             preferences = {
    --               useAliasesForRenames = false,
    --               importModuleSpecifier = "non-relative",
    --             },
    --             suggestionActions = {
    --               enabled = false,
    --             },
    --           },
    --           typescript = {
    --             preferences = {
    --               useAliasesForRenames = false,
    --               importModuleSpecifier = "non-relative",
    --             },
    --             suggestionActions = {
    --               enabled = false,
    --             },
    --           },
    --         },
    --       })
    --     end,
    --   },
    -- })

    -- local cmp = require("cmp")
    -- local cmp_select = { behavior = cmp.SelectBehavior.Select }

    -- cmp.setup({
    --   sources = {
    --     { name = "nvim_lsp" },
    --   },
    --   mapping = cmp.mapping.preset.insert({
    --     ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
    --     ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
    --     ["<C-y>"] = cmp.mapping.confirm({ select = true }),
    --     ["<C-Space>"] = cmp.mapping.complete(),
    --   }),
    --   snippet = {
    --     expand = function(args)
    --       require("luasnip").lsp_expand(args.body)
    --     end,
    --   },
    -- })

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
