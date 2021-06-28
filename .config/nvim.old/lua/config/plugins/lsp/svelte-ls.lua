local utils = require('config.utils')

local path = vim.fn.stdpath('data') .. '/lspinstall/svelte/node_modules/.bin/svelteserver'

require'lspconfig'.svelte.setup {
    cmd = {path, "--stdio"},
    on_attach = utils.default_on_attach,
    -- on_new_config = function(new_config,new_root_dir)
    --   new_config.cmd = cmd
    -- end,
}


