" https://github.com/voldikss/vim-floaterm
"

hi Floaterm guibg=black
hi FloatermBorder guibg=none guifg=cyan

let g:floaterm_position = 'center'
let g:floaterm_wintype = 'floating'

let g:floaterm_keymap_new = '<Leader>ft'

noremap <silent><LEADER>ftn :FloatermNew<CR>
nnoremap <silent><LEADER>ftg :FloatermToggle<CR>
nnoremap <silent><LEADER>ftk :FloatermKill<CR>
"noremap <LEADER>ftk :FloatermKill<CR>
"noremap <LEADER>ftp :FloatermPrev<CR>
"tnoremap <LEADER>ftg <C-\><C-n>:FloatermToggle<CR>


" Set floaterm window background to gray once the cursor moves out from it
hi FloatermNC guibg=gray
autocmd User FloatermOpen        " triggered after opening a new/existed floaterm

