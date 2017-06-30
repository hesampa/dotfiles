" vim-plug {{{1

    call plug#begin('~/.vim/plugged')

    Plug 'breuckelen/vim-resize'
    Plug 'chriskempson/base16-vim'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'godlygeek/tabular',                   { 'on':  'Tab' }
    Plug 'majutsushi/tagbar',                   { 'on': 'TagbarToggle'}
    Plug 'raimondi/delimitmate'
    Plug 'sjl/gundo.vim',                       { 'on':  'GundoToggle' }
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-unimpaired'
    Plug 'vimwiki/vimwiki',                     { 'on': 'VimwikiIndex' }

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
        set laststatus=2            " always show statusline
        set number                  " show line numbers
        set relativenumber
        set noruler
        set rulerformat=%l:%c
        set showcmd                 " show commands in bottom right corner
        set showmatch               " show matching brace temporarily
    " }}}

    " indentation {{{2
        set autoindent " indent same as current line
        " use 4 spaces for tabs
        set expandtab
        " set tabstop=4
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
    set lazyredraw
    set ttyfast
    set ttyscroll=3
" }}}

" keybindings {{{1

    " tmux-navigation {{{2
        let g:tmux_navigator_no_mappings = 1
        nnoremap <silent> h :TmuxNavigateLeft<cr>
        nnoremap <silent> j :TmuxNavigateDown<cr>
        nnoremap <silent> k :TmuxNavigateUp<cr>
        nnoremap <silent> l :TmuxNavigateRight<cr>
        nnoremap <silent> p :TmuxNavigatePrevious<cr>
    " }}}

    " vim-resize {{{2
        let g:vim_resize_disable_auto_mappings = 1
        nnoremap <silent> H :CmdResizeLeft<cr>
        nnoremap <silent> J :CmdResizeDown<cr>
        nnoremap <silent> K :CmdResizeUp<cr>
        nnoremap <silent> L :CmdResizeRight<cr>
    "}}}

    " universal bindings {{{2
        noremap <silent><Leader>t :TagbarToggle<CR>
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
            au FileType python set foldmethod=indent
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
            au FileType vimwiki set spell
            au FileType vimwiki setlocal syntax=on
        " }}}

    "}}}


"}}}

" colors and highlight {{{1
    set t_Co=16
    set background=dark
    colorscheme base16-tomorrow-night

    syntax off

    hi IncSearch ctermbg=15 ctermfg=0
    hi Search ctermbg=NONE ctermfg=1
    hi VertSplit ctermbg=10 ctermfg=10

    " au InsertEnter * hi StatusLine ctermfg=5
    " au InsertLeave * hi StatusLine ctermfg=12
" }}}

" vim: foldmethod=marker
