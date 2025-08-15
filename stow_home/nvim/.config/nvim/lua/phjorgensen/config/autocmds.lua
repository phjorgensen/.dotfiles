local function augroup(name)
  return vim.api.nvim_create_augroup("pervim_" .. name, { clear = true })
end

-- highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  group = augroup("highlight_yank"),
  callback = function()
    (vim.hl or vim.highlight).on_yank()
  end,
})

-- go to last loc when opening a buffer
vim.api.nvim_create_autocmd("BufReadPost", {
  group = augroup("last_loc"),
  callback = function(event)
    local exclude = { "gitcommit" }
    local buf = event.buf
    if vim.tbl_contains(exclude, vim.bo[buf].filetype) or vim.b[buf].lazyvim_last_loc then
      return
    end
    local mark = vim.api.nvim_buf_get_mark(buf, '"')
    local lcount = vim.api.nvim_buf_line_count(buf)
    if mark[1] > 0 and mark[1] <= lcount then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
})

-- close some filetypes with <q>
vim.api.nvim_create_autocmd("FileType", {
  group = augroup("close_with_q"),
  pattern = {
    "PlenaryTestPopup",
    "checkhealth",
    "dbout",
    "gitsigns-blame",
    "grug-far",
    "help",
    "lspinfo",
    "neotest-output",
    "neotest-output-panel",
    "neotest-summary",
    "notify",
    "qf",
    "spectre_panel",
    "startuptime",
    "tsplayground",
  },
  callback = function(event)
    vim.bo[event.buf].buflisted = false
    vim.schedule(function()
      vim.keymap.set("n", "q", function()
        vim.cmd("close")
        pcall(vim.api.nvim_buf_delete, event.buf, { force = true })
      end, {
        buffer = event.buf,
        silent = true,
        desc = "Quit buffer",
      })
    end)
  end,
})

-- wrap and check for spell in text filetypes
vim.api.nvim_create_autocmd("FileType", {
  group = augroup("wrap_spell"),
  pattern = { "text", "plaintex", "typst", "gitcommit", "markdown" },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.spell = true
  end,
})

-- Fix conceallevel for json files
vim.api.nvim_create_autocmd({ "FileType" }, {
  group = augroup("json_conceal"),
  pattern = { "json", "jsonc", "json5" },
  callback = function()
    vim.opt_local.conceallevel = 0
  end,
})

vim.api.nvim_create_autocmd("LspAttach", {
  group = augroup("lsp"),
  callback = function(e)
    local opts = { buffer = e.buf }

    local function get_opts(desc)
      return {
        buffer = e.buf,
        desc = desc,
      }
    end

    -- Info
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    -- Never used and collided with split navigation, but should find a new bind and start using.
    -- vim.keymap.set({ "n", "i" }, "<C-k>", vim.lsp.buf.signature_help, opts)

    -- Go to
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, get_opts("Go to definition"))
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, get_opts("Go to declaration"))
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, get_opts("Go to implementation"))
    vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, get_opts("Go ty type definition"))

    -- Use Snacks picker instead.
    -- vim.keymap.set("n", "gr", vim.lsp.buf.references, get_opts("List references"))

    -- Actions
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
    vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, opts)

    -- Diagnostics
    vim.keymap.set("n", "<leader>vd", function()
      vim.diagnostic.open_float(opts)
    end, get_opts("Open disgnostics float"))

    vim.keymap.set("n", "<leader>vn", function()
      return vim.diagnostic.jump({ count = 1, float = true, buffer = e.buf })
    end, get_opts("Next diagnostic"))

    vim.keymap.set("n", "<leader>vp", function()
      return vim.diagnostic.jump({ count = -1, float = true, buffer = e.buf })
    end, get_opts("Previous diagnostic"))
  end,
})
