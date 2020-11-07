" Thank you https://learnvimscriptthehardway.stevelosh.com

" Remap Core Functionality {{{
let mapleader=","
map ; :
inoremap <esc> <nop>
noremap - :Explore<cr>
nnoremap <leader><leader> :q<cr>
inoremap kj <esc>
inoremap lkj <esc>:w<cr>
set t_BE= " fixes paste issue (https://vimhelp.org/term.txt.html#xterm-bracketed-paste)
" }}}

" Edit and Source vimrc {{{
nnoremap <leader>ev :tabe $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
" }}}

" Uppercase Word Under Cursor {{{
inoremap <c-u> <esc>viwUea
nnoremap <leader>u viwUe
" }}}

" Surround Word With Quotes {{{
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel
" }}}

" Copy and Paste {{{
noremap <C-c> ggvG$:w !pbcopy<CR><CR>
noremap <C-l> ^v$:w !pbcopy<CR><CR>
noremap <C-v> "+gP
" }}}

" Navigate Tabs {{{
map J gT
map K gt
" }}}

" Disable Arrow Keys and Mouse {{{
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
set mouse-=a
" }}}

" Map Operators {{{
onoremap p i(
onoremap b i{
" }}}

" Highlight Rules {{{
set hlsearch
set incsearch
nnoremap <silent> <space> :nohlsearch<CR>
" }}}


"  Vundle Settings {{{
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'othree/yajs.vim'

call vundle#end()
filetype plugin indent on
" }}}

" -------------------------------------------------------------------------
"  Operational Settings

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
filetype on
filetype indent on
set cursorline
set cursorcolumn

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

" Treat long lines as break lines
map j gj
map k gk

" Re-jigger file types
syntax on
filetype on
au BufNewFile,BufRead *.blade.php set filetype=html
au BufNewFile,BufRead *.ejs set filetype=html
highlight LineNr ctermfg=white

call plug#begin('~/.vim/plugged')
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
call plug#end()

" Prettier Setup
augroup prettier
    autocmd!
    autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html Prettier
augroup END
let g:prettier#autoformat = 0
let g:prettier#config#semi = 'true'
let g:prettier#config#single_quote = 'true'
let g:prettier#config#tab_width = 4
let g:prettier#config#trailing_comma = 'es5'
let g:prettier#config#jsx_bracket_same_line = 'false'


