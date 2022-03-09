-- # Options
-- :help options
-- searching
vim.opt.smartcase = true -- :set smartcase. Ignore-case until a capital
-- vim.opt.hlsearch = false -- :set nohlsearch. Disable highlighting of search after finishing
vim.opt.incsearch = true -- incremental search
vim.opt.ignorecase = true

vim.opt.number = true -- show line numbers
vim.opt.relativenumber = true -- show relative line numbers
vim.opt.wrap = false -- don't wrap lines

vim.opt.termguicolors = true
-- undo
vim.opt.swapfile = false -- no swap file
vim.opt.backup = false -- no backup
vim.opt.undofile = true -- use undo file

--
vim.opt.colorcolumn = "120"
vim.opt.signcolumn = "yes" -- always show the sign column, otherwise it would shift the text each time
vim.opt.clipboard = "unnamedplus" -- use system clipboard
vim.opt.cmdheight = 2 -- more space in the neovim command line for displaying messages
vim.opt.conceallevel = 0 -- so that `` is visible in markdown files
vim.opt.fileencoding = "utf-8" -- the encoding written to a file
vim.opt.cursorline = true -- highlight the current line
vim.opt.scrolloff = 8 -- is one of my fav
vim.opt.hidden = true -- open in the 'background'
vim.opt.updatetime = 50
vim.opt.timeoutlen = 100
vim.opt.mouse = "a"

-- # Indenting
vim.opt.smartindent = true -- Smart indenting
vim.opt.expandtab = true -- Expand tabs to spaces
vim.opt.tabstop = 2 -- Tab width
vim.opt.softtabstop = 2 -- Space width
vim.opt.shiftwidth = 2 -- When indenting in visual mode

vim.cmd "syntax on"
vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.cmd [[set formatoptions-=cro]]
