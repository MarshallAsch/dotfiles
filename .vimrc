

"
" Basic vim settings
"
"
"

" ==== general settings == {{
set history=1000
set visualbell
set fileformats=unix,dos,mac
set hidden
" }}}


" === visual settings == {{{
syntax on
set showmode
set showcmd
set nowrap
set linebreak
set colorcolumn=120
" set cursorline
set number
set relativenumber
" set list
" }}}


" === indentation == {{{
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set shiftround
" }}}


" === searching and quickfix == {{{
set incsearch
set hlsearch
set ignorecase
set smartcase

" }}}




"set spell
set encoding=UTF-8


" === Plugins using vim-plug == {{{
call plug#begin('~/.vim/plugged')

Plug 'mhinz/vim-signify'                    " VCS gutter
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdtree'
Plug 'flazz/vim-colorschemes'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()
" }}}



" === Plugin configurations ===
" ------------------------------
"  vim-signify
set updatetime=100


" vim-colorscheme
" colorscheme zenburn
" colorscheme Revolution
" colorscheme Tomorrow-Night

set background=dark    " Setting dark mode
let g:gruvbox_italic = '1'

autocmd vimenter * ++nested colorscheme gruvbox



" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#themes#gruvbox#palette = {}

