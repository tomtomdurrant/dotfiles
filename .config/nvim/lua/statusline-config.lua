local lualine = require('lualine')
local lsp_status = require('lsp-status')

function LspStatus()
    if #vim.lsp.buf_get_clients() < 1 then return "" end

    return lsp_status.status()
end

lualine.setup {
    options = {
        theme = "horizon",
        section_separators = {'', ''},
        component_separators = {'', ''},
        icons_enabled = true
    },
    sections = {
        lualine_a = {{'mode', upper = true}},
        lualine_b = {{'branch', icon = ''}, 'diff'},
        lualine_c = {'filename', 'LspStatus()'},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    },
    extensions = {'fzf'}
}
