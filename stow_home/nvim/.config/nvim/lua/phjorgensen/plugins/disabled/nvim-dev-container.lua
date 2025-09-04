-- Docs: https://codeberg.org/esensar/nvim-dev-container
return {
  "https://codeberg.org/esensar/nvim-dev-container",
  dependencies = "nvim-treesitter/nvim-treesitter",
  config = function()
    require("devcontainer").setup({})

    vim.keymap.set("n", "<leader>os", "<cmd>DevcontainerStart<CR>", { desc = "Start devcontainer" })
    vim.keymap.set("n", "<leader>oa", "<cmd>DevcontainerAttach<CR>", { desc = "Attatch to devcontainer" })
    vim.keymap.set("n", "<leader>oe", "<cmd>DevcontainerExec ", { desc = "Exec command on devcontainer" })
    vim.keymap.set("n", "<leader>oS", "<cmd>DevcontainerStop<CR>", { desc = "Stop devcontainer" })
    vim.keymap.set("n", "<leader>ol", "<cmd>DevcontainerLogs<CR>", { desc = "Open devcontainer log file" })
    vim.keymap.set(
      "n",
      "<leader>oc",
      "<cmd>DevcontainerEditNearestConfig<CR>",
      { desc = "Edit nearest devcontainer config" }
    )
  end,
}
