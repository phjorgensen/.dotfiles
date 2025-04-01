return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local harpoon = require("harpoon")
    local harpoon_extensions = require("harpoon.extensions")

    harpoon:setup()
    harpoon:extend(harpoon_extensions.builtins.highlight_current_file())

    vim.api.nvim_create_autocmd({ "Filetype" }, {
      pattern = "harpoon",
      callback = function()
        vim.opt.cursorline = true
        vim.api.nvim_set_hl(0, "HarpoonWindow", { link = "Normal" })
        vim.api.nvim_set_hl(0, "HarpoonBorder", { link = "Normal" })
      end,
    })

    vim.keymap.set("n", "<leader>a", function()
      harpoon:list():add()
    end, { desc = "Add file to harpoon" })

    vim.keymap.set("n", "<C-e>", function()
      harpoon.ui:toggle_quick_menu(harpoon:list(), {
        border = "rounded",
        title_pos = "center",
        ui_width_ratio = 0.40,
      })
    end, { desc = "Open harpoon quick menu" })

    vim.keymap.set("n", "<leader>1", function()
      harpoon:list():select(1)
    end, { desc = "Harpoon to file 1" })
    vim.keymap.set("n", "<leader>2", function()
      harpoon:list():select(2)
    end, { desc = "Harpoon to file 2" })
    vim.keymap.set("n", "<leader>3", function()
      harpoon:list():select(3)
    end, { desc = "Harpoon to file 3" })
    vim.keymap.set("n", "<leader>4", function()
      harpoon:list():select(4)
    end, { desc = "Harpoon to file 4" })
    vim.keymap.set("n", "<leader>5", function()
      harpoon:list():select(5)
    end, { desc = "Harpoon to file 5" })
    vim.keymap.set("n", "<leader>6", function()
      harpoon:list():select(6)
    end, { desc = "Harpoon to file 6" })
    vim.keymap.set("n", "<leader>7", function()
      harpoon:list():select(7)
    end, { desc = "Harpoon to file 7" })
    vim.keymap.set("n", "<leader>8", function()
      harpoon:list():select(8)
    end, { desc = "Harpoon to file 8" })
    vim.keymap.set("n", "<leader>9", function()
      harpoon:list():select(9)
    end, { desc = "Harpoon to file 9" })
    vim.keymap.set("n", "<leader>0", function()
      harpoon:list():select(10)
    end, { desc = "Harpoon to file 10" })
  end,
}
