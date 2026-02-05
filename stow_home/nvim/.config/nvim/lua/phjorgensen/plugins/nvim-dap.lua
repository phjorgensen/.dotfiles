return {
  "mfussenegger/nvim-dap",
  lazy = false,
  dependencies = {
    "leoluz/nvim-dap-go",
    "theHamsta/nvim-dap-virtual-text",
    "igorlfs/nvim-dap-view",
  },
  keys = {
    { "<leader>db", "<cmd>DapToggleBreakpoint<cr>" },
    { "<leader>dc", "<cmd>DapContinue<cr>" },
    { "<leader>di", "<cmd>DapStepInto<cr>" },
    { "<leader>do", "<cmd>DapStepOver<cr>" },
    { "<leader>dO", "<cmd>DapStepOut<cr>" },

    { "<leader>dt", "<cmd>DapViewToggle<cr>" },
    { "<leader>dw", "<cmd>DapViewWatch<cr>" },
  },
  config = function()
    require("dap-go").setup({
      dap_configurations = {
        {
          type = "go",
          name = "Attach remote",
          mode = "remote",
          request = "attach",
        },
      },
    })
    require("nvim-dap-virtual-text").setup()
  end,
}
