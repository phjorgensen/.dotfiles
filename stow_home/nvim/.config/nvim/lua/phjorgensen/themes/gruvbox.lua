-- Source: https://github.com/morhetz/gruvbox
return {
  "morhetz/gruvbox",
  name = "gruvbox-dark",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("gruvbox")
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  end,
}
