-- Source: https://github.com/catppuccin/nvim
return {
  "catppuccin/nvim",
  name = "catppuccin-mocha",
  lazy = false,
  priority = 1000,
  config = function()
    require("catppuccin").setup({ flavour = "mocha" })
    vim.cmd.colorscheme("catppuccin-mocha")
  end,
}
