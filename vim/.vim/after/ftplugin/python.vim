set formatprg=par\ -w72j                                    " format using par

call matchadd('Todo', 'TODO')
call matchadd('ColorColumn', '\%74v', 80)                   " higlights nth col

noremap <buffer> <Leader>j :w<CR>:!python %<CR>
setlocal foldmethod=indent
