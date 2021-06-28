local g = vim.g
local cmd = vim.cmd
local fn = vim.fn
local opt = vim.opt
local bind = vim.api.nvim_set_keymap

-- Wildmenu
opt.wildmode = {'longest', 'list', 'full'}
opt.wildmenu = true
opt.timeoutlen = 200

-- Hidden buffers to switch buffers without saving
opt.hidden = true
opt.confirm = true

-- Enable mouse support
opt.mouse = 'a'

-- Auto read file changes
opt.autoread = true

-- Backspace
opt.backspace = {'indent', 'eol', 'start'}

-- Make last window always have a status line
opt.laststatus = 2

-- Indent
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

-- Line numbers: Hybrid
opt.number = true
opt.relativenumber = true

-- Search
opt.hlsearch = true
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.gdefault = true

-- Completion
opt.completeopt = "menuone,noselect"
opt.shortmess:append('c')
vim.g.completion_confirm_key = ""

-- Split options
opt.splitbelow = true
opt.splitright = true

-- Highlight current line
opt.cursorline = true

-- Scroll offsets
opt.scrolloff = 10
opt.sidescrolloff = 5

-- Enable syntax highlighting
vim.opt.syntax = "enable"
-- cmd 'syntax enable'

-- Enable filetype plugin
cmd 'filetype plugin on'

-- UI
vim.g.neon_style = "dark"
cmd[[colorscheme neon]]
cmd [[autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()]]


vim.lsp.set_log_level("debug")


