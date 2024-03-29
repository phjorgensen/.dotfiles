return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    local harpoon = require("harpoon");

    -- local conf = require("telescope.config").values;

    -- local function toggle_telescope(harpoon_files)
    --   local file_paths = {}

    --   for _, item in ipairs(harpoon_files.items) do
    --     table.insert(file_paths, item.value)
    --   end

    --   require("telescope.pickers").new({}, {
    --     prompt_title = "Harpoon",
    --     finder = require("telescope.finders").new_table({
    --       results = file_paths,
    --     }),
    --     previewer = conf.file_previewer({}),
    --     sorter = conf.generic_sorter({}),
    --   }):find()
    -- end

    harpoon.setup();

    vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end);

    -- vim.keymap.set("n", "<C-e>", function()
    --   toggle_telescope(harpoon:list());
    -- end, { desc = "Open harpoon window" });
    --
    vim.keymap.set("n", "<C-e>", function()
      harpoon.ui:toggle_quick_menu(harpoon:list(), {
        title_pos = "center",
        border = "double",
        ui_width_ratio = 0.5,
      })
    end);

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
  end,
}
