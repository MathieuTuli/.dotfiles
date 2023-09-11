" vundle stuff
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-surround'
" Plugin 'shougo/deoplete.nvim'
" Plugin 'davidhalter/jedi-vim'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'airblade/vim-gitgutter'
Plugin 'w0rp/ale'
" Plugin 'terryma/vim-multiple-cursors'
Plugin 'mattn/emmet-vim'
Plugin 'mhartington/oceanic-next'
Plugin 'joshdick/onedark.vim'
Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'lilydjwg/colorizer'
Plugin 'luochen1990/rainbow'
Plugin 'terryma/vim-smooth-scroll'
call vundle#end()
filetype plugin indent on
set clipboard+=unnamedplus
setlocal spelllang=en_ca
