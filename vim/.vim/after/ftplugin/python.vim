set formatprg=par\ -w72j                                    " format using par

au WinEnter * call matchadd('ColorColumn', '\%>79v', 79)
au BufWinEnter * call matchadd('ColorColumn', '\%>79v', 79)

au WinEnter * call matchadd('Todo', 'TODO')
au BufWinEnter * call matchadd('Todo', 'TODO')

noremap <buffer> <Leader>j :w<CR>:!python %<CR>
setlocal foldmethod=indent
