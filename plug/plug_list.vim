"========
"插件安装
"========
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

call plug#begin('~/.config/nvim/plugged')

" 美化插件
Plug 'vim-airline/vim-airline'
Plug 'rakr/vim-one'
Plug 'mhinz/vim-startify'

"  文件浏览
Plug 'kristijanhusak/defx-git', {'on':'Defx'}
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins'}
Plug 'kristijanhusak/defx-icons'

" 终端
Plug 'vimlab/split-term.vim'

"  view && search
Plug 'liuchengxu/vista.vim'

" 自动补全
Plug 'neoclide/coc.nvim', {'branch':'release'}

" Clap
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary' }

" vim-floaterm
Plug 'voldikss/vim-floaterm'


call plug#end()
