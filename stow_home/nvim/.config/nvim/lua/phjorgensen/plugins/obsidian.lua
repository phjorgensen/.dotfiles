return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  dependencies = {
    -- required
    "nvim-lua/plenary.nvim",

    -- optional
    "hrsh7th/nvim-cmp",
    "nvim-telescope/telescope.nvim",
    "nvim-treesitter/nvim-treesitter",
    "epwalsh/pomo.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "Personal",
        path = "~/Documents/Vaults/Personal",
      },
      {
        name = "Work",
        path = "~/Documents/Vaults/Work",
      },
    },
    -- ui = {
    --   enable = false,
    -- },
  },
}
