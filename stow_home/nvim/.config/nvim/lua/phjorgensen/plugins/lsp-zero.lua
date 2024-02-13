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
    vim.diagnostic.config({
      float = {
        focusable = false,
        style = "minimal",
        border = "rounded",
        source = "always",
        header = "",
        prefix = "",
      },
    })

    vim.api.nvim_create_autocmd('LspAttach', {
      desc = 'LSP actions',
      callback = function(event)
        local opts = { buffer = event.buf }
        vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
        vim.keymap.set("n", "<leader>dp", function() vim.diagnostic.goto_prev() end, opts)
        vim.keymap.set("n", "<leader>dn", function() vim.diagnostic.goto_next() end, opts)

        vim.keymap.set('n', 'K', function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set({ 'n', 'i' }, '<C-h>', function() vim.lsp.buf.signature_help() end, opts);
        vim.keymap.set('n', '<leader>gd', function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set('n', '<leader>gD', function() vim.lsp.buf.declaration() end, opts)
        vim.keymap.set('n', '<leader>gi', function() vim.lsp.buf.implementation() end, opts)
        vim.keymap.set('n', '<leader>go', function() vim.lsp.buf.type_definition() end, opts)
        vim.keymap.set('n', '<leader>vr', function() vim.lsp.buf.references() end, opts);
        vim.keymap.set('n', '<leader>vrn', function() vim.lsp.buf.rename() end, opts);
        vim.keymap.set({ 'n', 'x' }, '<leader>vfm', function() vim.lsp.buf.format({ async = true }) end, opts)
        vim.keymap.set('n', '<leader>vws', function() vim.lsp.buf.workspace_symbol() end, opts);
        vim.keymap.set('n', '<leader>va', function() vim.lsp.buf.code_action() end, opts);
      end
    })

    local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

    local default_setup = function(server_name)
      require('lspconfig')[server_name].setup({
        capabilities = lsp_capabilities,
      })
    end

    require('mason').setup({})
    require('mason-lspconfig').setup({
      ensure_installed = {
        "tsserver",
        "eslint",
        "lua_ls",
        "rust_analyzer",
      },
      handlers = {
        default_setup,
        lua_ls = function()
          require('lspconfig').lua_ls.setup({
            capabilities = lsp_capabilities,
            settings = {
              Lua = {
                runtime = {
                  version = 'LuaJIT'
                },
                diagnostics = {
                  globals = { 'vim' },
                },
                workspace = {
                  library = {
                    vim.env.VIMRUNTIME,
                  }
                }
              }
            }
          })
        end,
      },
    })

    local cmp = require('cmp')

    --local cmp_select = { behavior = cmp.SelectBehavior.Select };
    cmp.setup({
      sources = {
        { name = 'nvim_lsp' },
      },
      mapping = cmp.mapping.preset.insert({
        --['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
        --['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
        --['<C-y>'] = cmp.mapping.confirm({ select = true }),
        --['<Tab>'] = nil,
        --['<S-Tab>'] = nil,

        -- Enter key confirms completion item
        ['<CR>'] = cmp.mapping.confirm({ select = false }),

        -- Ctrl + space triggers completion menu
        ['<C-Space>'] = cmp.mapping.complete(),
      }),
      snippet = {
        expand = function(args)
          require('luasnip').lsp_expand(args.body)
        end,
      },
    })
  end,
}
