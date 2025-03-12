return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = {
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
      },
      sync_install = false,
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
    })

    vim.filetype.add({
      pattern = { [".*/hypr/.*%.conf"] = "hyprlang" },
    })
  end,
}
