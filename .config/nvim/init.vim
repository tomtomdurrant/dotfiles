" better tab functionality
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" relative line number
set relativenumber
" line number
set nu
" turn highlight off after searching
set nohlsearch
" keep buffer open
set hidden
" no sound
set noerrorbells
" no wrapping
set nowrap
" smart case searching
set smartcase
set ignorecase
" history
set swapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
" highlight matches so far
set incsearch
" start moving screen at 8 from the end
set scrolloff=8
set completeopt=menuone,noinsert,noselect
" extra column
set signcolumn=yes
" enable mouse
set mouse=a

" plugins
call plug#begin('~/.vim/plugged')
    Plug 'christianchiarulli/nvcode-color-schemes.vim'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-fzy-native.nvim'

call plug#end()

let mapleader = " "
nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>

" configure treesitter
lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { },  -- list of language that will be disabled
  },
}
EOF

" configure nvcode-color-schemes
let g:nvcode_termcolors=256

syntax on
colorscheme nvcode " Or whatever colorscheme you make


" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif


