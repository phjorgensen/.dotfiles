-- Also have some code for this plugin in phjorgensen/init.lua
return {
  "leath-dub/snipe.nvim",
  keys = {
    {
      "<leader>,",
      function()
        require("snipe").open_buffer_menu()
      end,
      desc = "Open Snipe buffer menu",
    },
  },
  opts = {},
}
