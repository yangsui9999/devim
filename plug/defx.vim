let g:maplocalleader=';'

let g:defx_icons_column_length = 2
let g:defx_icons_mark_icon = ''
let g:defx_icons_parent_icon = ""

" 使用 ;e 切换显示文件浏览, 使用 ;a 查找到当前文件位置
nnoremap <silent> <LocalLeader>e
\ :<C-u>Defx -resume -toggle -buffer-name=tab`tabpagenr()`<CR>
nnoremap <silent> <LocalLeader>a
\ :<C-u>Defx -resume -buffer-name=tab`tabpagenr()` -search=`expand('%:p')`<CR>


call defx#custom#option('_', {
            \ 'columns': 'indent:git:icons:filename',
            \ 'winwidth': 35,
            \ 'split': 'vertical',
            \ 'direction': 'topleft',
            \ 'show_ignored_files': 0,
            \ 'root_marker': '≡ ',
            \ 'ignored_files':
            \     '.mypy_cache,.pytest_cache,.git,.hg,.svn,.stversions'
            \   . ',__pycache__,.sass-cache,*.egg-info,.DS_Store,*.pyc,*.swp'
            \ })


call defx#custom#column('git', {
			\   'indicators': {
			\     'Modified'  : '•',
			\     'Staged'    : '✚',
			\     'Untracked' : 'ᵁ',
			\     'Renamed'   : '≫',
			\     'Unmerged'  : '≠',
			\     'Ignored'   : 'ⁱ',
			\     'Deleted'   : '✖',
			\     'Unknown'   : '⁇'
			\   }
			\ })

call defx#custom#column('mark', { 'readonly_icon': '', 'selected_icon': '' })

augroup user_plugin_defx
	autocmd!
	autocmd FileType defx call <SID>defx_mappings()
	autocmd WinEnter * if &filetype == 'defx' && winnr('$') == 1 | bdel | endif
	autocmd TabLeave * if &filetype == 'defx' | wincmd w | endif
augroup END

function! s:defx_toggle_tree() abort
	if defx#is_directory()
		return defx#do_action('open_or_close_tree')
	endif
	return defx#do_action('multi', ['drop'])
endfunction

function! s:defx_mappings() abort
	setlocal signcolumn=no expandtab
	nnoremap <silent><buffer><expr> <CR>     <SID>defx_toggle_tree()                    " 打开或者关闭文件夹，文件
	nnoremap <silent><buffer><expr> s defx#do_action('drop', 'split')					" 水平打开文件
	nnoremap <silent><buffer><expr> v defx#do_action('drop', 'vsplit')					" 垂直打开文件 
	nnoremap <silent><buffer><expr> t defx#do_action('drop', 'tabe')					" 垂直打开文件 
	nnoremap <silent><buffer><expr> <C-h>     defx#do_action('toggle_ignored_files')    " 显示隐藏文件
	nnoremap <silent><buffer><expr> c defx#do_action('copy')
	nnoremap <silent><buffer><expr> m defx#do_action('move')
	nnoremap <silent><buffer><expr> p defx#do_action('paste')
	nnoremap <silent><buffer><expr> d defx#do_action('open')
	nnoremap <silent><buffer><expr> K defx#do_action('new_directory')
	nnoremap <silent><buffer><expr> N defx#do_action('new_file')
	nnoremap <silent><buffer><expr> M defx#do_action('new_multiple_files')
	nnoremap <silent><buffer><expr> C defx#do_action('toggle_columns', 'mark:indent:icon:filename:type:size:time')
	nnoremap <silent><buffer><expr> S defx#do_action('toggle_sort', 'time')
	nnoremap <silent><buffer><expr> x defx#do_action('remove')
	nnoremap <silent><buffer><expr> r defx#do_action('rename')
	nnoremap <silent><buffer><expr> ! defx#do_action('execute_command')
	nnoremap <silent><buffer><expr> l defx#do_action('execute_system')
	nnoremap <silent><buffer><expr> yy defx#do_action('yank_path')
	nnoremap <silent><buffer><expr> . defx#do_action('toggle_ignored_files')
	nnoremap <silent><buffer><expr> ; defx#do_action('repeat')
	nnoremap <silent><buffer><expr> a defx#do_action('cd', ['..'])
	nnoremap <silent><buffer><expr> ~ defx#do_action('cd')
	nnoremap <silent><buffer><expr> q defx#do_action('quit')
	nnoremap <silent><buffer><expr> <Space> defx#do_action('toggle_select') . 'j'
	nnoremap <silent><buffer><expr> * defx#do_action('toggle_select_all')
	nnoremap <silent><buffer><expr> j line('.') == line('$') ? 'gg' : 'j'
	nnoremap <silent><buffer><expr> k line('.') == 1 ? 'G' : 'k'
	nnoremap <silent><buffer><expr> <C-g> defx#do_action('print')
	nnoremap <silent><buffer><expr> cd defx#do_action('change_vim_cwd')
	nnoremap <silent><buffer><expr> u   defx#do_action('cd', ['..'])
	nnoremap <silent><buffer><expr> 2u  defx#do_action('cd', ['../..'])
	nnoremap <silent><buffer><expr> 3u  defx#do_action('cd', ['../../..'])
	nnoremap <silent><buffer><expr> 4u  defx#do_action('cd', ['../../../..'])
endfunction
