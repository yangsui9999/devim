" https://github.com/vim-airline/vim-airline
"


" 配置解说: https://github.com/Tao-Quixote/vim/blob/master/plugin/vim-airline.md

" enable none extensions for opimization
" let g:airline_extensions = ['tabline', 'hunks', 'branch']

" cache :hi calls for optimization
" let g:airline_highlighting_cache = 1

let g:airline_theme='simple'
" let g:airline_theme = 'wombat'

let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
function! ArilineInit()
    let g:airline_section_a = airline#section#create(['mode', ' ', 'branch'])
    " let g:airline_section_b = airline#section#create_left(['ffenc', 'hunks', '%F'])
    "let g:airline_section_c = airline#section#create(['filetype'])
    let g:airline_section_x = airline#section#create(['%P'])
    let g:airline_section_y = airline#section#create(['%B'])
    let g:airline_section_z = airline#section#create_right(['%l', '%c'])
endfunction
autocmd VimEnter * call ArilineInit()
