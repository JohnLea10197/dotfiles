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
set smartcase
set ignorecase
set incsearch

"enable mouse support (for when I'm too lazy to think about hotkeys lol)
set mouse=a

" more space for displaying messages
set cmdheight=2

" time for leader commands to execute
set updatetime=750

" time to type in a leader command
set timeoutlen=75

syntax enable

filetype plugin indent on

" Set completeopt to have a better completion experience
" :help completeopt
" menuone: popup even when there's only one match
" noinsert: Do not insert text until a selection is made
" noselect: Do not select, force user to select one from the menu
set completeopt=menuone,noinsert,noselect

" Avoid showing extra messages when using completion
set shortmess+=c
