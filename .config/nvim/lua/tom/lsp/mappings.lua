local M = {}

-- local functions
local opts = { noremap = true, silent = true }
local map = vim.api.nvim_buf_set_keymap

function M.init(client, bufnr)
	-- go to
	map(bufnr, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
	map(bufnr, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
	map(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)

	-- hover
	map(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)

	map(bufnr, "n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
	map(bufnr, "n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
	map(bufnr, "n", "gr", "<cmd>Telescope lsp_references<CR>", opts)

	-- diagnostics
	map(bufnr, "n", "[d", '<cmd>lua vim.diagnostic.goto_prev({ border = "rounded" })<CR>', opts)
	map(bufnr, "n", "gl", '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics({ border = "rounded" })<CR>', opts)
	map(bufnr, "n", "]d", '<cmd>lua vim.diagnostic.goto_next({ border = "rounded" })<CR>', opts)
	vim.cmd [[ command! Format execute 'lua vim.lsp.buf.formatting()' ]]
	if client.name == "tsserver" then
		-- typescript helpers
	end
end

return M
