" -------------------------------------------------------------------------
"  Operational Settings

let mapleader=","
set nocompatible
set ruler

set nowrap
set showmatch

set shiftwidth=4
set tabstop=4
set autoindent smartindent
" set copyindent
set nonumber
nnoremap <F2> :set nonumber!<CR>
filetype on
filetype indent on

set history=1000
set undolevels=1000

" This isn't the 70's anymore
set nobackup
set noswapfile

" -------------------------------------------------------------------------
"  Pretty Things

syntax enable
colorscheme candycode


" -------------------------------------------------------------------------
"  Some Custom Mappings

imap <C-BS> <C-W>
map <F2> :echo 'Current Time: ' . strftime('%c')<CR>
set pastetoggle=<F3>
map! ,h1 <H1></H1><ESC>2ba

map ; :

" Clear highlights
nmap <silent> <space> :nohlsearch<CR>

" Treat long lines as break lines
map j gj
map k gk

map J gT
map K gt

" Confuse everyone
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Find long lines! 
map = /\%>80v.\+<CR>
map - 80<bar>
let w:m1=matchadd('ErrorMsg', '\%>80v.\+', -1)
set colorcolumn=81
