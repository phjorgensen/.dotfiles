return {
  "vimwiki/vimwiki",
  config = function()
    vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
  end,
}
