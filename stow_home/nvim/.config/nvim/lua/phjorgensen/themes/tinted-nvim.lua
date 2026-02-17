return {
  "tinted-theming/tinted-nvim",
  priority = 1000, -- load colorscheme early
  lazy = false, -- apply on startup
  opts = {
    default_scheme = "base16-ayu-dark", -- pick any bundled Base16/Base24
    ui = {
      transparent = true,
      dim_inactive = true,
    },
    -- Change text attributes for certain highlight groups.
    -- Supported attributes: italic, bold, underline, undercurl, strikethrough.
    -- styles = {
    --   comments = { italic = true }, -- default `{ italic = true }`
    --   keywords = { bold = true }, -- default `{}`
    --   functions = { underline = true }, -- default `{}`
    --   variables = { italic = true }, -- default `{}`
    --   types = { bold = true }, -- default `{}`
    -- },
    -- If enabled, the plugin will scan all lazy.nvim specs and merge any
    -- `highlights = { ... }` tables it finds. This lets you keep plugin-specific
    -- highlights close to their plugin definitions instead of in a global
    -- overrides table.
    -- Example:
    -- {
    --   "folke/todo-comments.nvim",
    --   opts = {},
    --   highlights = {
    --     Todo = { fg = "yellow", bg = "#00ff00", bold = true },
    --   },
    -- }
    highlights = {
      use_lazy_specs = true,
      integrations = {
        harpoon = true,
      },
      overrides = function()
        return {
          Comment = { fg = "bright_red" },
          OilDirHidden = { fg = "grey" },
          OilFileHidden = { fg = "grey" },
          OilLinkHidden = { fg = "grey" },
          OilLinkTargetHidden = { fg = "grey" },
        }
      end,
    },
    selector = {
      enabled = true,
      mode = "file",
      path = "~/.local/share/tinted-theming/tinty/current_scheme",
      watch = true,
    },
  },
}

-- return {
--   "tinted-theming/tinted-nvim",
--   config = function()
--     -- Enable true color support (recommended)
--     vim.opt.termguicolors = true

--     -- The colorscheme will be loaded from tinty
--     require("tinted-colorscheme").setup(nil, {
--       supports = {
--         tinty = true,
--         tinted_shell = true,
--         live_reload = true,
--       },
--       highlights = {
--         telescope = true,
--         telescope_borders = true,
--         indentblankline = true,
--         notify = true,
--         ts_rainbow = true,
--         cmp = true,
--         illuminate = true,
--         lsp_semantic = true,
--         mini_completion = true,
--         dapui = true,
--       },
--     })
--   end,
-- }
