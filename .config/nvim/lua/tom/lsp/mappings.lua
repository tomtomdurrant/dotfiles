local M = {}

-- local functions
local opts = { noremap = true, silent = true }

function M.init(client, bufnr)
  -- go to
  vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { buffer = bufnr })
  -- vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
  vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { buffer = bufnr })
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = bufnr })

  -- hover
  vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = bufnr })

  vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = bufnr })
  -- vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
  vim.keymap.set("n", "gr", "<cmd>Telescope lsp_references<CR>", opts)

  -- diagnostics
  vim.keymap.set("n", "[d", function()
    vim.diagnostic.goto_prev({ border = "rounded" })
  end, { buffer = bufnr })

  vim.keymap.set("n", "gl", function()
    vim.lsp.diagnostic.show_line_diagnostics({ border = "rounded" })
  end, { buffer = bufnr })

  vim.keymap.set("n", "]d", function()
    vim.diagnostic.goto_next({ border = "rounded" })
  end, { buffer = bufnr })

  vim.cmd [[ command! Format execute 'lua vim.lsp.buf.formatting()' ]]
  if client.name == "tsserver" then
    -- typescript helpers
  end
end

return M
