" https://github.com/voldikss/vim-floaterm
"

set hidden

hi Floaterm guibg=black
hi FloatermBorder guibg=none guifg=cyan

let g:floaterm_position = 'center'
let g:floaterm_wintype = 'floating'

let g:floaterm_keymap_new = '<Leader>ft'

nnoremap <silent><LEADER>ftn :FloatermNew<CR>
tnoremap <silent><LEADER>ftn <C-\><C-n>:FloatermNew<CR>
nnoremap <silent><LEADER>ftp :FloatermPrev<CR>
tnoremap <silent><LEADER>ftp <C-\><C-n>:FloatermPrev<CR>
nnoremap <silent><LEADER>ftx :FloatermNext<CR>
tnoremap <silent><LEADER>ftx <C-\><C-n>:FloatermNext<CR>
nnoremap <silent><LEADER>ftg :FloatermToggle<CR>
tnoremap <silent><LEADER>ftg <C-\><C-n>:FloatermToggle<CR>


" Set floaterm window background to gray once the cursor moves out from it
hi FloatermNC guibg=gray
" autocmd User FloatermOpen        " triggered after opening a new/existed floaterm

