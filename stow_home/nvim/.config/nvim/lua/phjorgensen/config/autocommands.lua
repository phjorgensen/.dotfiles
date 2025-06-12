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

-- autoformat on save
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  group = augroup("format_on_save"),
  pattern = "*",
  command = [[%s/\s\+$//e]],
})

vim.api.nvim_create_autocmd("LspAttach", {
  group = augroup("lsp"),
  callback = function(e)
    local opts = { buffer = e.buf }

    -- Info
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    -- Never used and collided with split navigation, but should find a new bind and start using.
    -- vim.keymap.set({ "n", "i" }, "<C-k>", vim.lsp.buf.signature_help, opts)

    -- Go to
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    -- Use Snacks picker instead.
    -- vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
    vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, opts)

    -- Actions
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

    -- Diagnostics
    vim.keymap.set("n", "<leader>vd", function()
      vim.diagnostic.open_float(opts)
    end, { desc = "Open disgnostics float" })

    vim.keymap.set("n", "<leader>vn", function()
      return vim.diagnostic.jump({ count = 1, float = true, buffer = e.buf })
    end, { desc = "Next diagnostic" })

    vim.keymap.set("n", "<leader>vp", function()
      return vim.diagnostic.jump({ count = -1, float = true, buffer = e.buf })
    end, { desc = "Previous diagnostic" })

    -- vim.diagnostic.config({
    --   float = {
    --     focusable = false,
    --     style = "minimal",
    --     border = "rounded",
    --     source = true,
    --     header = "",
    --     prefix = "",
    --   },
    -- })
  end,
})
