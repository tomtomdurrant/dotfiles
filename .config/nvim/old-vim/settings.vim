
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
" turn highlight off after searching set nohlsearch
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
" colours 
syntax on
colorscheme nvcode " Or whatever colorscheme you make
"configure nvcode-color-schemes
let g:nvcode_termcolors=256
