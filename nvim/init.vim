" vim: set sw=4 ts=4 sts=4 et tw=78 foldmarker={,} foldlevel=0 foldmethod=marker:

" default settings {
    " default on neovim
    if !has('nvim')
        set nocompatible
        filetype plugin indent on " plugin, indent 형식을 파일타입에 따라 불러온다.
        set autoindent
        set autoread
        set backspace=indent,eol,start
        set backupdir=.,~/.local/share/nvim/backup
        set belloff=all
        set complete-=i
        set cscopeverbose
        set directory=~/.local/share/nvim/swap//
        set display=lastline,msgsep
        set encoding=utf-8
        set fillchars=vert:\|,fold:- "E488: | must be \|(escape form)
        set fsync
        set formatoptions=tcqj
        set history=10000
        set hiserach
        set incsearch
        set langnoremap
        set nolangremap
        set laststatus=2
        set listchars=tab:>,trail:-,nbsp:+
        set nrformats=bin,hex
        set ruler
        set sessionoptions-=options
        set shortmess+=F
        set showcmd
        set sidescroll=1
        set smarttab
        set tabpagemax=50
        set tags=./tags;,tags
        set ttimeoutlen=50
        set ttyfast
        set undodir=~/.local/share/nvim/undo
        set viminfo+=!
        set wildmenu
    endif

    let mapleader = ','
    " backgound color scheme {
        set background=dark

        map <leader>bg :let &background = ( &background == "dark"? "light" : "dark" )<CR>
    " }

    set mouse=a
    set mousehide

    scriptencoding utf-8

    if has('clipboard')
        if has('unnamedplus')
            set clipboard=unnamed,unnamedplus
        else
            set clipboard=unnamed
        endif
    endif

    set autowrite
    " set shortmess+=filemnrxoOtT
    set viewoptions=folds,options,cursor,unix,slash
    set virtualedit=onemore
    set history=10000
    " set spell
    " set hidden
    set iskeyword-=.
    set iskeyword-=#
    set iskeyword-=-

    set backup
    set backupdir=~/.local/share/nvim/backup

    if has('persistent_undo')
        set undofile
        set undolevels=1000
        set undoreload=10000
    endif

    set tabpagemax=50
    set showmode

    set cursorline

    if has('cmdline_info')
        set ruler
        " set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
        set showcmd
    endif

    if has('statusline')
        " set laststatus=2

        " set statusline=%<%f\
        " set statusline+=%w%h%m%r
        " set statusline+=%{fugitive#statusline()}
        " set statusline+=\ [%{&ff}/%Y]
        " set statusline+=\ [%{getcwd()}]
        " set statusline+=%=%-14.(%l,%c%V%)\ %p%%
    endif

    set linespace=0
    set number
    set relativenumber
    set showmatch
    set incsearch
    set hlsearch
    set winminheight=0
    set ignorecase
    set smartcase
    set wildmenu
    set wildmode=list:longest,full
    set whichwrap=b,s,h,l,<,>,[,]
    set scrolljump=5
    set scrolloff=3
    set foldenable
    set list
    set listchars=tab:→\ ,trail:·,precedes:«,extends:»
    set foldenable
" }

" formatting {
    set wrap
    set shiftwidth=4
    set expandtab
    set tabstop=4
    set softtabstop=4
    set nojoinspaces
    set splitright
    set splitbelow
    set pastetoggle=<F12>
" }

" templates {
    augroup templates
        autocmd BufNewFile *.sh 0r ~/.local/share/nvim/templates/skeleton.sh
        autocmd BufNewFile *.html 0r ~/.local/share/nvim/templates/skeleton.html
    augroup END
" }

" key mapping {
    let mapleader = ','
" }

" plugins -- plug-vim {
    call plug#begin('~/.vim/plugged')
        Plug 'nathanaelkane/vim-indent-guides'
        Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
        "Plug 'OmniSharp/omnisharp-vim'
        Plug 'tpope/vim-vinegar'
        Plug 'leafgarland/typescript-vim'
    call plug#end()
" }

" plugin settings {
    " vim-indent-guides
    let g:indent_guides_enable_on_vim_startup = 1
    let g:indent_guides_start_level=2
    let g:indent_guides_guide_size=1

    "netrw settings
    let g:netrw_liststyle = 3
    let g:netrw_banner = 0
    "let g:netrw_browse_split = 2
    "let g:netrw_altv = 1
    "let g:netrw_winsize = 25
" }
