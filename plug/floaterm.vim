" https://github.com/voldikss/vim-floaterm
"

hi Floaterm guibg=black
hi FloatermBorder guibg=none guifg=cyan
let g:floaterm_position = 'center'
let g:floaterm_wintype = 'floating'
noremap <LEADER>ftn :FloatermNew<CR>
noremap <LEADER>ftk :FloatermKill<CR>


" Set floaterm window background to gray once the cursor moves out from it
hi FloatermNC guibg=gray
autocmd User FloatermOpen        " triggered after opening a new/existed floaterm

