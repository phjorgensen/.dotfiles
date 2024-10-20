return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require("telescope")
    telescope.setup({
      defaults = {
        path_display = {
          filename_first = {
            reverse_directories = true,
          },
        },
        vimgrep_arguments = {
          "rg",
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
          "--smart-case",
          "--hidden",
        },
      },
    })

    local builtin = require("telescope.builtin")

    vim.keymap.set("n", "<leader>sa", builtin.find_files)
    vim.keymap.set("n", "<leader>sf", builtin.git_files)
    vim.keymap.set("n", "<leader>ff", "<cmd>Telescope frecency workspace=CWD theme=ivy<cr>")
    -- Not sure why ThePrimeagen added this instead of using live_grep, but keeping it in case I find out why.
    -- vim.keymap.set("n", "<leader>ps", function()
    --   builtin.grep_string({ search = vim.fn.input("Grep > ") })
    -- end)
    vim.keymap.set("n", "<leader>sg", builtin.live_grep)
    vim.keymap.set("n", "<leader>sr", builtin.resume)
  end,
}
