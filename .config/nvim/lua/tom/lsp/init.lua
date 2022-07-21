local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require "tom.lsp.lsp-installer-config"
require("tom.lsp.handlers").setup()
require "tom.lsp.providers.null-ls"

local lspsaga = require("lspsaga")
lspsaga.init_lsp_saga()

local trouble_status_ok, trouble = pcall(require, "trouble")
if not trouble_status_ok then
	return
end

trouble.setup()

