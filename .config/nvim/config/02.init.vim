" colorscheme OceanicNext
" set termguicolors
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
" source ~/.vimrc
set grepprg=git\ grep\ -n
" set grepformat=%f:%l:%c:%m
let g:python3_host_prog = '/usr/bin/python3.7'

"yaml related
au BufNewFile,BufReadPost *.yaml,*.yml set filetype=yaml

let g:airline_theme='bubblegum'
let g:airline#extensions#tabline#enabled = 1

syntax on

highlight clear SignColumn
set updatetime=100

set switchbuf+=usetab,newtab
set guifont=Source\ Code\ Pro\ for\ Powerline\ 16
set showmatch
set autoindent
set smartindent
set smarttab
set expandtab
set ruler
set backspace=indent,eol,start
set splitright
set splitbelow
filetype plugin indent on

nnoremap ` .
