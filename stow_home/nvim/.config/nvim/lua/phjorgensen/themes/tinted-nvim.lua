return {
  "tinted-theming/tinted-nvim",
  config = function()
    -- Enable true color support (recommended)
    vim.opt.termguicolors = true

    -- The colorscheme will be loaded from tinty
    require("tinted-colorscheme").setup(nil, {
      supports = {
        tinty = true,
        tinted_shell = true,
        live_reload = true,
      },
      highlights = {
        telescope = true,
        telescope_borders = true,
        indentblankline = true,
        notify = true,
        ts_rainbow = true,
        cmp = true,
        illuminate = true,
        lsp_semantic = true,
        mini_completion = true,
        dapui = true,
      },
    })
  end,
}
