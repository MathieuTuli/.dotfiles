" vundle stuff
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'lifepillar/pgsql.vim'
" Plugin 'shougo/deoplete.nvim'
" Plugin 'davidhalter/jedi-vim'
Plugin 'Valloric/YouCompleteMe'
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
Plugin 'tikhomirov/vim-glsl'
Plugin 'scrooloose/nerdTree'
Plugin 'lervag/vimtex'
Plugin 'PontusPersson/pddl.vim'
call vundle#end()
filetype plugin indent on
set clipboard+=unnamedplus
setlocal spelllang=en_ca
