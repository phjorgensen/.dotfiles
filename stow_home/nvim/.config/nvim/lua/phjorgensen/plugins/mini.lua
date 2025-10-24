return {
  "echasnovski/mini.nvim",
  version = false,
  dependencies = {
    "JoosepAlviste/nvim-ts-context-commentstring",
  },
  config = function()
    require("mini.ai").setup({})

    -- require("mini.clue").setup({})
    -- require("mini.comment").setup({
    --   options = {
    --     ignore_blank_lines = true,
    --   },
    -- })

    -- require("mini.completion").setup({
    --   delay = {
    --     completion = 10, -- 100,
    --     info = 10, -- 100,
    --     signature = 10, -- 50,
    --   },
    --   window = {
    --     info = {
    --       border = "single",
    --     },
    --     signature = {
    --       border = "single",
    --     },
    --   },
    -- })

    -- require("mini.git").setup({})
    -- require("mini.hipatterns").setup({})
    -- require("mini.icons").setup({})
    -- require("mini.notify").setup({})
    -- require("mini.pairs").setup({})
    require("mini.statusline").setup({})
    -- require("mini.tabline").setup({})
    require("mini.surround").setup({})
    -- require("mini.trailspace").setup({})
  end,
}
