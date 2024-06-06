return {
  "NeogitOrg/neogit",
  tag = "v0.0.1",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim",
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    local neogit = require("neogit")

    neogit.setup()

    vim.keymap.set("n", "<leader>gs", function()
      neogit.open()
    end)
    vim.keymap.set("n", "<leader>gc", function()
      neogit.open({ "commit" })
    end)
  end,
}
