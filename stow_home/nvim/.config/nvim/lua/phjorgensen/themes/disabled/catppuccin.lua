-- Source: https://github.com/catppuccin/nvim
return {
  "catppuccin/nvim",
  name = "catppuccin-mocha",
  lazy = false,
  priority = 1000,
  config = function()
    require("catppuccin").setup({ flavour = "mocha" })
    vim.cmd.colorscheme("catppuccin-mocha")
    -- Makes bg of floating windows transparent, but makes it hard to see
    -- code hints and completion.
    -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  end,
}
