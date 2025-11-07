require("phjorgensen.config.autocmds")
require("phjorgensen.config.remap")
require("phjorgensen.config.set")
require("phjorgensen.core.lsp")
require("phjorgensen.core.lazy")

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

local links = {
  ["@lsp.type.namespace"] = "@namespace",
  ["@lsp.type.type"] = "@type",
  ["@lsp.type.class"] = "@type",
  ["@lsp.type.enum"] = "@type",
  ["@lsp.type.interface"] = "@type",
  ["@lsp.type.struct"] = "@structure",
  ["@lsp.type.parameter"] = "@parameter",
  ["@lsp.type.variable"] = "@variable",
  ["@lsp.type.property"] = "@property",
  ["@lsp.type.enumMember"] = "@constant",
  ["@lsp.type.function"] = "@function",
  ["@lsp.type.method"] = "@method",
  ["@lsp.type.macro"] = "@macro",
  ["@lsp.type.decorator"] = "@function",
}
for newgroup, oldgroup in pairs(links) do
  vim.api.nvim_set_hl(0, newgroup, { link = oldgroup, default = true })
end

-- Set transparent background
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

-- Set up snipe as vim.ui.select
-- local snipe = require("snipe")
--
-- snipe.ui_select_menu = require("snipe.menu"):new({ position = "center" })
-- snipe.ui_select_menu:add_new_buffer_callback(function(m)
--   vim.keymap.set("n", "<esc>", function()
--     m:close()
--   end, { nowait = true, buffer = m.buf })
-- end)
--
-- vim.ui.select = snipe.ui_select
