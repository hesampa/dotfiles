" vim-plug {{{1

    call plug#begin('~/.vim/plugged')

    Plug 'breuckelen/vim-resize'
    Plug 'chriskempson/base16-vim'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'godlygeek/tabular',                   { 'on':  'Tab' }
    Plug 'majutsushi/tagbar',                   { 'on': 'TagbarToggle'}
    Plug 'raimondi/delimitmate'
    Plug 'rakr/vim-one'
    Plug 'sjl/gundo.vim',                       { 'on':  'GundoToggle' }
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-unimpaired'
    Plug 'vimwiki/vimwiki',                     { 'on': 'VimwikiIndex' }
    Plug 'wellle/targets.vim'

    call plug#end()

" }}}

" behaviour {{{1

    filetype plugin indent on

    set autoindent
    set backspace=indent,eol,start  " backapsce behaviour
    set encoding=utf8
    " set formatprg=par\ -w72j
    set hidden                      " switch between unsaved buffers
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
        " set number                  " show line numbers
        " set relativenumber        " might cause slow performance
        set ruler
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
        set timeoutlen=500
    "}}}

" }}}

" netrw settings {{{1
    let netrw_liststyle = 3
    let g:netrw_banner = 0
" }}}

" performance {{{1
    " set lazyredraw
    set ttyfast
    set ttyscroll=3
" }}}

" keybindings {{{1
"
    " scroll {{{2
        nnoremap <C-e> 5<C-e>
        nnoremap <C-y> 5<C-y>

    " }}}

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
        noremap <C-g> <C-[>
        noremap <silent><Leader>l :set hls!<CR>
        noremap Q gqip
        noremap <silent><Leader>vw :VimwikiIndex<CR>
        noremap <silent><Leader>gt :GundoToggle<CR>
        noremap <Leader>rc :e ~/.vimrc <CR>
        noremap <silent><Leader>r :set rnu!<CR>
        noremap <Leader>so :so %<CR>
    " }}}

" }}}

" filetype settings {{{1
    au BufRead,BufNewFile * setfiletype conf
    let g:vimwiki_list = [{'path' : '~/Dropbox/vimwiki/files/', 'path_html' : '~/Dropbox/vimwiki/html/'}]
"}}}

" colors and highlight {{{1
    " syntax off

    set t_Co=8
    colorscheme base16-onedark
    set background=dark

    hi ColorColumn ctermfg=3 ctermbg=0
    hi IncSearch ctermbg=14 ctermfg=0
    hi Search cterm=bold,reverse ctermbg=14 ctermfg=0
    hi Todo cterm=NONE ctermfg=3 ctermbg=0
    hi VertSplit ctermbg=10 ctermfg=10

    au WinEnter * call matchadd('Todo', 'TODO')
    au BufWinEnter * call matchadd('Todo', 'TODO')

    au WinEnter * call matchadd('Question', 'NOTE')
    au BufWinEnter * call matchadd('Question', 'NOTE')

    " otherwise text black in GNOME because these are in bold
    " hi ModeMsg cterm=NONE
    " hi DiffText cterm=NONE
" }}}

" set shell=/bin/bash\ -i
" vim: foldmethod=marker
