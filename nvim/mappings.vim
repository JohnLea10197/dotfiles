" map leader key
let mapleader = " "

" Mappings not using leader key
" Terminal go back to normal mode
tnoremap <Esc> <C-\><C-n>
tnoremap :q! <C-\><C-n>:q!<CR>

"NerdTree Mappings
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Mappings using the leader key
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

"Focus on currently open NerdTree instance
nnoremap <leader>n :NERDTreeFocus<CR>

" Toggle terminal on/off (neovim)
nnoremap <leader>t :call TermToggle(12)<CR>
tnoremap <leader>t <C-\><C-n>:call TermToggle(12)<CR>

