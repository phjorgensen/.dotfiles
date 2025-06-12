require("phjorgensen.config.autocommands")
require("phjorgensen.config.remap")
require("phjorgensen.config.set")
require("phjorgensen.core.lsp")
require("phjorgensen.core.lazy")

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

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
