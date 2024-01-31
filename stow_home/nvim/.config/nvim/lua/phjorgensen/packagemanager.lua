vim.g.mapleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme rose-pine]])
 	    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
 	    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end,
  },
  "nvim-lua/plenary.nvim",
  {
    "nvim-telescope/telescope.nvim", tag = "0.1.3",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
	"ThePrimeagen/vim-be-good",
	"mbbill/undotree",
	"tpope/vim-fugitive",
  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v2.x",
    dependencies = {
      -- LSP Support
      {"neovim/nvim-lspconfig"},             -- Required
      {"williamboman/mason.nvim"},           -- Optional
      {"williamboman/mason-lspconfig.nvim"}, -- Optional

      -- Autocompletion
      {"hrsh7th/nvim-cmp"},     -- Required
      {"hrsh7th/cmp-nvim-lsp"}, -- Required
      {"L3MON4D3/LuaSnip"},     -- Required
    },
  },
  "sbdchd/neoformat",
})

