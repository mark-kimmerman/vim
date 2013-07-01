" -------------------------------------------------------------------------
"  Operational Settings

let mapleader=","
set nocompatible
set ruler
set backspace=indent,eol,start

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
set cursorline
set cursorcolumn

set history=1000
set undolevels=1000

" This isn't the 70's anymore
set nobackup
set noswapfile

" Who needs a mouse?
set mouse-=a

" -------------------------------------------------------------------------
"  Pretty Things

syntax enable
colorscheme candycode


" -------------------------------------------------------------------------
"  Some Custom Mappings
" 		Includes F{1, 2, 3, 4}

map <C-c> "+y
imap <C-BS> <C-W>
map <F1> :echo 'Current Time: ' . strftime('%c')<CR>
"   <F2> line numbers
set pastetoggle=<F3>
map! ,h1 <H1></H1><ESC>2ba

map ; :

" Spell Check toggle: zg-good, zw-incorrect
set spelllang=en_us
map <F4> :set spell!<CR><BAR>:echo "Spell: " . strpart("OffOn", 3 * &spell, 3)<CR>


" Highlight Rules
set hlsearch
nmap <silent> <space> :nohlsearch<CR>

" Treat long lines as break lines
map j gj
map k gk

" Switch between tabs easily
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

" Color lines by keyword
hi doneTask     guifg=#FFFFFF       guibg=#00FF00       gui=bold
            \   ctermfg=white       ctermbg=lightgreen         cterm=bold
:let w:m2=matchadd('doneTask', '^.*:done', -1)
