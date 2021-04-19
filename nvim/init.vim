" line number stuff
set exrc
set relativenumber
set nu

" eyecandy options
set nohlsearch
set nowrap
set termguicolors
set colorcolumn=95

" graphical stuff that's useful
set scrolloff=8
set signcolumn=yes

" tab stuff
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" convenient search options
set ignorecase
set smartcase
set incsearch

" more space for displaying messages
set cmdheight=2

" time for leader commands
set updatetime=50

" plugins
call plug#begin(stdpath('data') . '/plugged')
Plug 'nvim-telescope/telescope.nvim'
Plug 'vim-airline/vim-airline'
Plug 'bling/vim-bufferline'
Plug 'preservim/nerdtree'
Plug 'sainnhe/edge'
call plug#end()

if has ('termguicolors')
    set termguicolors
endif

let g:edge_cursor = 'red'
let g:edge_transparent_background = 1

colorscheme edge
