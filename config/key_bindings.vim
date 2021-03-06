let mapleader=";"

" 去掉有关vi一致性模式,避免操作习惯上的局限.
set nocompatible

" 以下4行大部分插件都要求，让vim能够识别不同都文件格式
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

" 可以使用鼠标
set mouse=a
set encoding=utf-8

" 设置缩进
set tabstop=4
set shiftwidth=4
set softtabstop=4

" 行首按下退格能够回到行尾
set backspace=indent,eol,start

set number
set showmatch

set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

" 折叠代码
set foldmethod=indent
set foldlevel=99
" 不同模式下光标样式
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" 1=启动显示状态行, 2=总是显示状态行.设置总是显示状态行,方便看到当前文件名. 设置状态栏
set laststatus=2

" 文件关闭后重新打开，关闭回到关闭前的位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

syntax on
set relativenumber
set wrap
set showcmd
set wildmenu

" 搜索
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
noremap <LEADER><CR> :nohlsearch<CR>

" 快速滚动
noremap K 5k
noremap J 5j
noremap W 5w
noremap H 10h

inoremap jj <Esc>

" 快速关闭或保存窗口
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>
" 刷新配置
nnoremap <leader>r :source $MYVIMRC<CR>

" 复制到行尾
noremap Y y$

" 替换$ 为 4, 方便快速切换到行尾
noremap 4 $
" 替换^ 为 6, 方便快速切换到第一个非空的k首
noremap 6 ^

" 分屏
" 我这里的l代表了右，h代表了左，k代表了上，j 代表了下, n 代表new的意思
" sl: 右边分屏，内容从缓冲区读取，和当前文件一样
" snl: 右边分屏，新建一个空白文件
map sl :set splitright<CR>:vsplit<CR> "往右边分屏，并让光标在分屏后处于右边的屏幕
map snl :set splitright<CR>:vnew<CR> "往右边分屏，并让光标在分屏后处于右边的屏幕
map sh :set nosplitright<CR>:vsplit<CR>
map snh :set nosplitright<CR>:vnew<CR>
map sk :set nosplitbelow<CR>:split<CR>
map snk :set nosplitbelow<CR>:new<CR>
map sj :set splitbelow<CR>:split<CR>
map snj :set splitbelow<CR>:new<CR>

" 分屏后移动
map <LEADER>l <C-w>l
map <LEADER>L <C-w>l<C-w>l
map <LEADER>k <C-w>k
map <LEADER>h <C-w>h
map <LEADER>H <C-w>h<C-w>h
map <LEADER>j <C-w>j
" 更改分屏大小
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>
" 分屏位置更改
map sv <C-w>t<C-w>H
map sh <C-w>t<C-w>K

" tab
noremap <leader>th :tabfirst<CR>	" 跳转至第1个标签页
noremap <leader>tl :tablast<CR>		" 跳转至最后的标签页
noremap <leader>tn :tabnext<CR>		" 后一个
noremap <leader>tp :tabprev<CR>		" 前一个
noremap <leader>te :tabedit<CR>		" 新建或更新
noremap <leader>tc :tabclose<CR>	" 关闭当前标签页
noremap <leader>to :tabonly<CR>		" 关闭所有其他的页面
noremap <leader>tm :tabm<CR>		" 移动标签

" tab 间快速移动
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<CR>





