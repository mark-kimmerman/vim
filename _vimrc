" -------------------------------------------------------------------------
"  Operational Settings

let mapleader=","
set nocompatible
set ruler
set backspace=indent,eol,start

set nowrap
set showmatch
set scrolloff=4

set shiftwidth=4
set expandtab
set tabstop=4
set autoindent smartindent
" set copyindent
set number
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
" 		Includes F{1, 2, 3, 4, 5, 10}

map <F1> :echo '<F1>  : Show Help' \| :echo '<F2>  : Toggle Line Numbers' \| :echo '<F3>  : Paste Toggle' \| :echo '<F4>  : Spell Toggle' \| :echo '<F5>  : Insert 80 character divider' \| :echo '<F6>  : ROT13 file' \| :echo '<F10> : Find long lines' \| :echo '-     : Explore adjacent files<CR>

map <C-c> "+y
map <C-v> "+gP
imap <C-BS> <C-W>
"   <F2> line numbers
map - :Explore<CR>
set pastetoggle=<F3>
map! ,h1 <H1></H1><ESC>2ba

map ; :

" Spell Check toggle: zg-good, zw-incorrect
set spelllang=en_us
map <F4> :set spell!<CR><BAR>:echo "Spell: " . strpart("OffOn", 3 * &spell, 3)<CR>
map zz 1z=

"Rotate all text by 13 : ROT13
map <F6> ggg?G''

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
map <F10> /\%>80v.\+<CR>
set colorcolumn=81

" Color lines by keyword
hi doneTask     guifg=#FFFFFF       guibg=#00FF00       gui=bold
            \   ctermfg=white       ctermbg=lightgreen         cterm=bold
let w:m2=matchadd('doneTask', '^.*:done', -1)

hi yellowLine     guifg=#F58EEE       guibg=#FFE303       gui=bold
            \   ctermfg=white       ctermbg=yellow         cterm=bold
let w:m3=matchadd('yellowLine', '\*\{80}', 0)
nmap <F5> 80i*<ESC>^
imap <F5> <ESC><F5>
