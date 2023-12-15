local harpoon = require("harpoon");

harpoon.setup();

local list = harpoon:list("default");

vim.keymap.set("n", "<leader>a", function() list:append() end);
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(list, {
  title_pos = "center",
  border = "double",
  ui_width_ratio = 0.5,
}) end);

vim.keymap.set("n", "<C-1>", function() harpoon:list():select(1) end);
vim.keymap.set("n", "<C-2>", function() harpoon:list():select(2) end);
vim.keymap.set("n", "<C-3>", function() harpoon:list():select(3) end);
vim.keymap.set("n", "<C-4>", function() harpoon:list():select(4) end);
vim.keymap.set("n", "<C-5>", function() harpoon:list():select(5) end);
vim.keymap.set("n", "<C-6>", function() harpoon:list():select(6) end);
vim.keymap.set("n", "<C-7>", function() harpoon:list():select(7) end);
vim.keymap.set("n", "<C-8>", function() harpoon:list():select(8) end);
vim.keymap.set("n", "<C-9>", function() harpoon:list():select(9) end);
vim.keymap.set("n", "<C-0>", function() harpoon:list():select(10) end);
