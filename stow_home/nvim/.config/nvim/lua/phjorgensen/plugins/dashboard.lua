return {
  "MeanderingProgrammer/dashboard.nvim",
  event = "VimEnter",
  dependencies = {
    { "MaximilianLloyd/ascii.nvim", dependencies = { "MunifTanjim/nui.nvim" } },
  },
  config = function()
    require("dashboard").setup({
      -- header = require("ascii").art.text.neovim.sharp,
      header = require("ascii").get_random_global(),
      directories = {
        "~/.config",
        "~/.dotfiles",
        "~/Projects/notes",
      },
    })
  end,
}
