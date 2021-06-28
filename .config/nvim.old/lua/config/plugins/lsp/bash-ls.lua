local languageServerPath = vim.fn.stdpath('data') .. '/lspinstall/bash/node_modules/.bin/bash-language-server'

require'lspconfig'.bashls.setup{
    cmd = { languageServerPath, "start" },
    on_attach = require('config.utils').default_on_attach,
    filetypes = { "sh", "zsh"}
}

