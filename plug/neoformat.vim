"https://github.com/sbdchd/neoformat

nnoremap <LEADER>fm :Neoformat<CR>

augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END
