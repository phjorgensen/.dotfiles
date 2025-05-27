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
            -- reverse_directories = true,
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
      -- pickers = {
      --   find_files = { theme = "ivy" },
      --   git_files = { theme = "ivy" },
      --   live_grep = { theme = "ivy" },
      --   resume = { theme = "ivy" },
      -- },
    })

    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>f", builtin.git_files, { desc = "Search git files" })
    vim.keymap.set("n", "<leader>F", builtin.find_files, { desc = "Search all files" })
    vim.keymap.set("n", "<leader>/", builtin.live_grep, { desc = "Search in files (grep)" })
    vim.keymap.set("n", "<leader>'", builtin.resume, { desc = "Reusme previous search" })
  end,
}
