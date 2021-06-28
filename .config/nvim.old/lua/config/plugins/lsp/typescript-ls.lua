local path = vim.fn.stdpath('data') .. '/lspinstall/typescript/node_modules/typescript-language-server/lib/cli.js'
local utils = require('config.utils')

require'lspconfig'.tsserver.setup{
   cmd = { "node", path, "--stdio" },
   on_attach = utils.default_on_attach
}

