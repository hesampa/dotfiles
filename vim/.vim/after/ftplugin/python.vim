set formatprg=par\ -w72j                                    " format using par

call matchadd('ColorColumn', '\%>79v', 79)                   " higlights nth col
au WinEnter * call matchadd('Todo', 'TODO')
au BufWinEnter * call matchadd('Todo', 'TODO')

noremap <buffer> <Leader>j :w<CR>:!python %<CR>
setlocal foldmethod=indent
