return {
  "sbdchd/neoformat",
  config = function()
    vim.g.neoformat_try_node_exe = 1

    vim.keymap.set({ "n", "x" }, "<leader>f", function()
      vim.cmd("Neoformat")
    end)

    -- vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    --   pattern = { "*" },
    --   command = "Neoformat",
    -- })
  end,
}
