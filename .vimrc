syntax on
set guifont=Source\ Code\ Pro\ for\ Powerline\ 16
set grepprg=git\ grep

let g:airline_theme='bubblegum'
let g:airline#extensions#tabline#enabled = 1

set showmatch
set ts=4
set sts=4
set sw=4
set autoindent
set smartindent
set smarttab
set expandtab
set ruler
set backspace=indent,eol,start
filetype plugin indent on
nnoremap ;l $
nnoremap ;h ^
nnoremap \n :cn<CR>
nnoremap \p :cp<CR>
nnoremap \o :copen<CR>
nnoremap \c :cclose<CR>
nnoremap \bq :b#<CR>
