" vim-plug {{{1

    call plug#begin('~/.vim/plugged')

    Plug 'breuckelen/vim-resize'
    Plug 'chriskempson/base16-vim'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'godlygeek/tabular',               { 'on':  'Tab' }
    Plug 'raimondi/delimitmate'
    Plug 'sjl/gundo.vim',                   { 'on':  'GundoToggle' }
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-unimpaired'
    Plug 'vimwiki/vimwiki',                 { 'on': 'VimwikiIndex' }

    call plug#end()

" }}}

" behaviour {{{1

    filetype plugin indent on

    set autoindent
    set backspace=indent,eol,start  " backapsce behaviour
    set encoding=utf8
    set formatprg=par\ -w72j
    set hidden                      " switch between unsaved buffers
    set lcs=trail:¬,tab:▸\          " listchars tabs, trail sp
    set list
    set nocompatible                " be iMproved, required
    set nostartofline               " Scroll to non-blank lines
    set path+=**                    " :find for files in subdirs

    " search {{{2
        set hlsearch            " highlights search
        set ignorecase
        set incsearch           " search begins without hitting enter
        set smartcase           " case insensitive if search word is lowercase
    " }}}

    " ruler and statusline {{{2
        set laststatus=2
        " set noshowmode                  " do not duplicate to statusline
        set number                      " show line numbers
        set relativenumber              " relative line numbers
        set ruler
        set rulerformat=%l,%c
        set showcmd                     " show commands in bottom left corner
        set showmatch                   " show matching brace temporarily
    " }}}

    " indentation {{{2
        set autoindent " indent same as current line
        " use 4 spaces for tabs
        set expandtab
        set shiftwidth=4
        set softtabstop=4
    " }}}

    " timeout {{{2
        " timeout on keycodes, not on mappings
        set ttimeoutlen=0
        set timeoutlen=1000
    "}}}

" }}}

" netrw settings {{{1
    let netrw_liststyle = 3
    let g:netrw_banner = 0
" }}}

" performance {{{1
    syntax off
    " set synmaxcol=80
    set ttyfast
    set ttyscroll=3
" }}}

" term settings {{{1
    set t_Co=16
    set background=dark
    colorscheme base16-tomorrow-night
" }}}

" keybindings {{{1

    " tmux-navigation {{{2
        if has('mac')
            let g:tmux_navigator_no_mappings = 1
            nnoremap <silent> ˙ :TmuxNavigateLeft<cr>
            nnoremap <silent> ∆ :TmuxNavigateDown<cr>
            nnoremap <silent> ˚ :TmuxNavigateUp<cr>
            nnoremap <silent> ¬ :TmuxNavigateRight<cr>
            nnoremap <silent> π :TmuxNavigatePrevious<cr>
        endif
    " }}}

    " vim-resize {{{2
        if has('mac')
            let g:vim_resize_disable_auto_mappings = 1
            nnoremap <silent> Ó :CmdResizeLeft<cr>
            nnoremap <silent> Ô :CmdResizeDown<cr>
            nnoremap <silent>  :CmdResizeUp<cr>
            nnoremap <silent> Ò :CmdResizeRight<cr>
        endif
    "}}}

    " universal bindings {{{2
        noremap ; :
        noremap <silent><Leader>l :set hls!<CR>
        noremap Q gqip
        noremap <silent><Leader>vw :VimwikiIndex<CR>
        noremap <silent><Leader>gt :GundoToggle<CR>
    " }}}

" }}}

" filetype settings {{{1

    " programtype {{{2

    " universal programtype {{{3
        function ProgramType()
            set formatprg=par\ -w72j        " format using par
            hi ColorColumn ctermfg=1
            call matchadd('ColorColumn', '\%74v', 74) " higlights nth col
        endfunction
    " }}}

        " python {{{3
            au FileType python call ProgramType()
            au FileType python noremap <buffer> <Leader>j :w<CR>:!python %<CR>
        " }}}

        " tex {{{3
            function TexSettings()
                noremap <buffer><Leader>j :w<CR>:!latexmk -dvi- -pdf -outdir=outfiles %; latexmk -outdir=outfiles -c %<CR>
                set formatprg=par\ -w100j
                setlocal spell
            endfunction

            au FileType tex,plaintex call TexSettings()

        " }}}

        " vimwiki {{{3
            let g:vimwiki_list = [{'path' : '~/Dropbox/vimwiki/files/', 'path_html' : '~/Dropbox/vimwiki/html/'}]
            syntax manual
            au FileType vimwiki setlocal spell
            au FileType vimwiki setlocal syntax=on
        " }}}

    "}}}


"}}}

" vim: foldmethod=marker

