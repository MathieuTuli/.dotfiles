" colorscheme OceanicNext
" set termguicolors
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
" source ~/.vimrc
set grepprg=grep\ -n
" set grepformat=%f:%l:%c:%m
let g:python3_host_prog = '/home/mat/.pyenv/shims/python'

"yaml related
au BufNewFile,BufReadPost *.yaml,*.yml set filetype=yaml

let g:airline#extensions#tabline#enabled = 1

syntax on

highlight clear SignColumn
set updatetime=100

set switchbuf+=usetab,newtab
set guifont=Source\ Code\ Pro
set showmatch
set autoindent
set smartindent
set smarttab
set expandtab
set ruler
set backspace=indent,eol,start
set splitright
set splitbelow
set synmaxcol=200
filetype plugin indent on

let g:python3_host_prog = "/home/mat/.pyenv/shims/python"

set path+=include,./include,.
cnoreabbrev Pytest Pytest file verbose
