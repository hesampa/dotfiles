noremap <buffer><Leader>j :w<CR>:!latexmk -dvi- -pdf -outdir=outfiles %; latexmk -outdir=outfiles -c %<CR>
set formatprg=par\ -w100j
setlocal spell

syntax manual
setlocal syntax=on
