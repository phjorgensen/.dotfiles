local harpoon = require("harpoon");

harpoon.setup();

local list = harpoon:list("default");

vim.keymap.set("n", "<leader>a", function() list:append() end);
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(list, {
  title_pos = "center",
  border = "double",
  ui_width_ratio = 0.5,
}) end);

vim.keymap.set("n", "<C-1>", function() list:select(1) end);
vim.keymap.set("n", "<C-2>", function() list:select(2) end);
vim.keymap.set("n", "<C-3>", function() list:select(3) end);
vim.keymap.set("n", "<C-4>", function() list:select(4) end);
vim.keymap.set("n", "<C-5>", function() list:select(5) end);
vim.keymap.set("n", "<C-6>", function() list:select(6) end);
vim.keymap.set("n", "<C-7>", function() list:select(7) end);
vim.keymap.set("n", "<C-8>", function() list:select(8) end);
vim.keymap.set("n", "<C-9>", function() list:select(9) end);
vim.keymap.set("n", "<C-0>", function() list:select(10) end);
