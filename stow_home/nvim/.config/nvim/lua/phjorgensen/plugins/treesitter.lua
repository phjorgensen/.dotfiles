return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").install({
      "markdown",
      "markdown_inline",
      "http",
      "json",
      "rust",
      "go",
      "html",
      "css",
      "scss",
      "typescript",
      "javascript",
      "svelte",
      "c",
      "lua",
    })
  end,
  -- From old config, not yet moved over. Unsure how, and not sure if necessary.
  -- configs.setup({
  --   sync_install = false,
  --   auto_install = true,
  --   highlight = {
  --     enable = true,
  --     additional_vim_regex_highlighting = false,
  --   },
  -- })
  -- vim.filetype.add({
  --   pattern = { [".*/hypr/.*%.conf"] = "hyprlang" },
  -- })
}
