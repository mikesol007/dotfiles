" smart tabbing / autoindenting
set undolevels=100
set nocompatible
set autoindent
inoremap # X<BS>#
set smarttab 
set nrformats=hex
set scrolloff=2 sidescrolloff=2
set shortmess=aOt

" Allow backspace to back over lines
set backspace=indent,eol,start
set exrc
set tabstop=3
set shiftwidth=3
set expandtab

" Incremental search
set incsearch
set ignorecase infercase smartcase
set smartcase
set hlsearch

" Autowrite to swap file
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
"set viminfo='20,\"50
set viminfo='100,f1,:200,/200
set autowrite
set backup
set backupext=.bak
set history=100

" Delete previous word (Ctrl-BS)
imap <C-BS> <c-w>
set joinspaces

" Enable 'wild menus'
set wildmenu
set wildignore+=*.o,*.so,*.swp,*.bak
set suffixes+=.a
set wildignore+=*/.git/*,*/.svn/*
set showfulltag
set display+=lastline
set printoptions=syntax:y,wrap:y

if match($TERM, "screen")!=-1
  set term=xterm
endif

if &term =~ '^screen'
  " tmux will send xterm-style keys when its xterm-keys option is on
  execute "set <Up>=\e[A"
  execute "set <Down>=\e[B"
  execute "set <Right>=\e[C"
  execute "set <Left>=\e[D"
  execute "set <xUp>=\e[1;*A"
  execute "set <xDown>=\e[1;*B"
  execute "set <xRight>=\e[1;*C"
  execute "set <xLeft>=\e[1;*D"
endif

" Turn on syntax highlighting
"set t_Co=256
"colorscheme torte
set background=dark
set showmatch
syntax enable

"  Movement between windows with ^hjkl 
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
nmap <C-Left> <C-w>h
nmap <C-Down> <C-w>j
nmap <C-Up> <C-w>k
nmap <C-Right> <C-w>l

" v_K is really really annoying; disable 
vmap K k

" Word length
map \ veg<C-G><ESC>b

filetype plugin on
