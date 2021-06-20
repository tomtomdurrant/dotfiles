local map = function(mode, key, result)
  vim.api.nvim_set_keymap(
    mode,
    key,
    result,
    {noremap = true, silent = true}
  )
end

-- Config
vim.g.mapleader = " "
map('n', '<Space>', '<nop')

-- Telescope
map('n','<C-p>', [[<Cmd>lua require('telescope.builtin').find_files()<CR>]])
map('n','<Leader>fb', [[<Cmd>lua require('telescope.builtin').buffers()<CR>]])
map('n','<leader>fg', [[ <cmd>lua require('telescope.builtin').live_grep()<cr> ]])
map('n','<leader>fh', [[<cmd>lua require('telescope.builtin').help_tags()<cr>]])


-- BufferLine
map('n','<Leader>bn', ':BufferLineCycleNext<CR>')
map('n','<Leader>bp', ':BufferLineCyclePrev<CR>')

-- Nvim Tree
map('n', '<C-n>', ':NvimTreeToggle<CR>')


-- Compe
vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap('i' , '<CR>','v:lua.completion_confirm()', {expr = true , noremap = true})
