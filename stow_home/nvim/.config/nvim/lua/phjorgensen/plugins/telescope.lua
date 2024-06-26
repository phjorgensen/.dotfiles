return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.3",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local builtin = require("telescope.builtin")

    vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
    vim.keymap.set("n", "<C-p>", builtin.git_files, {})
    -- Not sure why ThePrimeagen added this instead of using live_grep, but keeping it in case I find out why.
    -- vim.keymap.set('n', '<leader>ps', function()
    -- 	builtin.grep_string({ search = vim.fn.input("Grep > ") });
    -- end);
    vim.keymap.set("n", "<leader>ps", builtin.live_grep, {})
    vim.keymap.set("n", "<leader>pr", builtin.resume, {})
  end,
}
