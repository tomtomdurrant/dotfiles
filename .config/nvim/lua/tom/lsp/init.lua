local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require "tom.lsp.lsp-installer-config"
require("tom.lsp.handlers").setup()
require "tom.lsp.providers.null-ls"
require "tom.lsp.lsputils"
require "tom.lsp.trouble"
