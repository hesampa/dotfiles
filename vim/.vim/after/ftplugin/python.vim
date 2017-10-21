setlocal formatprg=par\ -w72j                                    " format using par

setlocal lcs=trail:¬,tab:▸\          " listchars tabs, trail sp
setlocal list

au WinEnter * call matchadd('ColorColumn', '\%>79v', 79)
au BufWinEnter * call matchadd('ColorColumn', '\%>79v', 79)

au WinEnter * call matchadd('Todo', 'TODO')
au BufWinEnter * call matchadd('Todo', 'TODO')

noremap <buffer> <Leader>j :w<CR>:!python3 %<CR>
setlocal foldmethod=indent
