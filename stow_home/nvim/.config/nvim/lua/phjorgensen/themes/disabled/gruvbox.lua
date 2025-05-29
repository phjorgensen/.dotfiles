-- Source: https://github.com/morhetz/gruvbox
return {
  "morhetz/gruvbox",
  lazy = false,
  priority = 1000,
  config = function()
    -- Does not work for some reason, can't find module "gruvbox".
    -- I wanted to add this for transparency.
    -- require("gruvbox").setup({
    --   terminal_colors = true, -- add neovim terminal colors
    --   undercurl = true,
    --   underline = true,
    --   bold = true,
    --   italic = {
    --     strings = true,
    --     emphasis = true,
    --     comments = true,
    --     operators = false,
    --     folds = true,
    --   },
    --   strikethrough = true,
    --   invert_selection = false,
    --   invert_signs = false,
    --   invert_tabline = false,
    --   inverse = true, -- invert background for search, diffs, statuslines and errors
    --   contrast = "", -- can be "hard", "soft" or empty string
    --   palette_overrides = {},
    --   overrides = {},
    --   dim_inactive = false,
    --   transparent_mode = false,
    -- })

    vim.o.background = "dark"
    vim.cmd.colorscheme("gruvbox")
  end,
}
