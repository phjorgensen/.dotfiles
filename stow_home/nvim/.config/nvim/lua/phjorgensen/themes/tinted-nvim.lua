return {
  "tinted-theming/tinted-nvim",
  priority = 1000, -- load colorscheme early
  lazy = false, -- apply on startup
  opts = {
    -- default_scheme = "base16-ayu-dark", -- pick any bundled Base16/Base24
    -- compile = true, -- optional: precompile for faster startup
  },
  config = function()
    require("tinted-nvim").setup({
      -- Fallback scheme (used when selector cannot resolve a scheme).
      default_scheme = "base16-ayu-dark",

      -- Apply a scheme automatically during startup.
      apply_scheme_on_startup = true, -- default `true`

      -- Compile the scheme for faster startup.
      compile = true, -- default `false`

      capabilities = {
        -- Enable truecolor support (sets `termguicolors`).
        -- If false, cterm colors are used where available.
        truecolor = true, -- default `true`

        -- Some terminal emulators cannot draw undercurls. When disabling
        -- undercurls globally, it falls back to underline.
        undercurl = false, -- default `false`

        -- Set vim.g.terminal_color_0 .. vim.g.terminal_color_17.
        terminal_colors = true, -- default `true`
      },

      ui = {
        -- If true, Normal background is left unset (transparent).
        transparent = true, -- default `false`

        -- Dim background of inactive windows.
        dim_inactive = true, -- default `false`
      },

      -- Change text attributes for certain highlight groups.
      -- Supported attributes: italic, bold, underline, undercurl, strikethrough.
      styles = {
        comments = { italic = true }, -- default `{ italic = true }`
        keywords = { bold = true }, -- default `{}`
        -- functions = { underline = true }, -- default `{}`
        variables = { italic = true }, -- default `{}`
        types = { bold = true }, -- default `{}`
      },

      highlights = {
        -- This plugin bundles highlight definitions for popular Neovim plugins.
        -- Enable/disable them as needed. This only enables highlight groups, not
        -- the plugin itself.
        integrations = {
          telescope = true, -- default `true`
          notify = true, -- default `true`
          cmp = true, -- default `true`
          blink = true, -- default `true`
          dapui = true, -- default `true`
          lualine = true, -- default `true`
        },

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
        use_lazy_specs = true, -- default `true`

        -- This callback function lets you override highlight groups (just like
        -- `use_lazy_specs` does).
        -- overrides = function(palette)
        --   return {
        --     -- Set hex rgb values explicitly.
        --     Normal = { bg = "#ff0000" },

        --     -- Link to another hlgroup.
        --     NormalFloat = { link = "Normal" },

        --     -- Access the current palette and its baseXX colors.
        --     FloatBorder = { fg = palette.base03 },

        --     -- Use color aliases.
        --     CursorLine = { bg = "darkest_grey", fg = "foreground" },

        --     -- Use darken / lighten to change a color.
        --     Search = {
        --       bg = { darken = palette.base07, amount = 0.3 },
        --       fg = { lighten = "#00ff00", amount = 0.1 },
        --     },

        --     -- Any other attribute allowed by nvim.api.nvim_set_hl().
        --     DiagnosticUnderlineError = { undercurl = true, sp = "bright_red" },

        --     -- Clear or reset a group by returning an empty table.
        --     StatusLine = {},
        --   }
        -- end,
      },

      -- schemes = { -- default `{}`
      --   -- Override specific colors of an existing scheme.
      --   ["base16-catppuccin-mocha"] = {
      --     -- Override with explicit color.
      --     base08 = "#ff0000",
      --     -- Use a function callback to define a new color.
      --     base0A = function(palette)
      --       return palette.base0B
      --     end,
      --   },

      --   -- Define a completely new Base16/Base24-style scheme.
      --   -- Custom schemes must start with base16- or base24-.
      --   ["base16-my-theme"] = {
      --     variant = "dark",
      --     base00 = "#000000",
      --     base01 = "#111111",
      --     base02 = "#222222",
      --     base03 = "#333333",
      --     base04 = "#444444",
      --     base05 = "#cccccc",
      --     base06 = "#eeeeee",
      --     base07 = "#ffffff",
      --     base08 = "#ff5555",
      --     base09 = "#ffb86c",
      --     base0A = "#f1fa8c",
      --     base0B = "#50fa7b",
      --     base0C = "#8be9fd",
      --     base0D = "#bd93f9",
      --     base0E = "#ff79c6",
      --     base0F = "#ff5555",
      --   },
      -- },

      -- External scheme selector (resolves scheme names only).
      selector = {
        enabled = true, -- default `false`

        -- "file" | "env" | "cmd"
        mode = "file", -- default `file`

        -- Expects a file that only contains the scheme name.
        path = "~/.local/share/tinted-theming/tinty/current_scheme", -- default ` "~/.local/share/tinted-theming/tinty/current_scheme"`

        -- Reads the scheme name from an environment variable.
        -- env = "TINTED_THEME", -- default `"TINTED_THEME"`

        -- Executes a command that returns the scheme name.
        -- cmd = "tinty current", -- default `"tinty current"`

        -- In "file" mode: watch the file, and reload the scheme on changes.
        watch = true, -- default `true`
      },
    })
  end,
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
