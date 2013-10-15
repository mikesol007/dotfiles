" smart tabbing / autoindenting
set undolevels=100
set nocompatible
set autoindent
set smarttab 

" Allow backspace to back over lines
set backspace=2
set exrc
set tabstop=3
set shiftwidth=3
set expandtab

" Incremental search
set incsearch
set ignorecase
set smartcase

" Autowrite to swap file
set autowrite
set showcmd
if exists('&selection')
    set selection=exclusive
endif

if has("gui_running")
    " Set preferred font
    "set guifont=Courier_New:h10
    " Hide the mouse pointer while typing
    set mousehide
endif

" Silence
set visualbell

" More space for error messages
set cmdheight=2

" Show status line
au VimEnter * set laststatus=2
set ruler

" Use a viminfo file
set viminfo='20,\"50
set backup
set backupext=.bak
set history=100

" Delete previous word (Ctrl-BS)
imap <C-BS> <c-w>
set joinspaces

" Enable 'wild menus'
set wildmenu
set showfulltag
set display+=lastline
set printoptions=syntax:y,wrap:y

" Turn on syntax highlighting
"set t_Co=256
"colorscheme torte
set background=dark
set showmatch
syntax enable

" Word length
map \ veg<C-G><ESC>b

filetype plugin on
