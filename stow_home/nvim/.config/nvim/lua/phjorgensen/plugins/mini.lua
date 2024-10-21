return {
  "echasnovski/mini.nvim",
  version = false,
  config = function()
    require("mini.ai").setup({})

    local theme = require("phjorgensen.base16-themes.base16-tomorrow-night")
    require("mini.base16").setup({
      palette = theme,
      use_cterm = true,
    })

    require("mini.clue").setup({})
    require("mini.comment").setup({})
    require("mini.completion").setup({})
    require("mini.git").setup({})
    require("mini.hipatterns").setup({})
    require("mini.icons").setup({})
    require("mini.indentscope").setup({})
    require("mini.notify").setup({})
    require("mini.pairs").setup({})
    require("mini.starter").setup({})
    require("mini.statusline").setup({})
    require("mini.surround").setup({})
    require("mini.trailspace").setup({})
  end,
}
