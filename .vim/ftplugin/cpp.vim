" set makeprg=flake8
set ts=2
set sts=2
set sw=2
let b:ale_linters = ['clang', 'g++']
let g:ale_cpp_clang_options = '-std=c++17 -Wall'
let g:ale_cpp_gcc_options = '-std=c++17 -Wall'
" let g:enable_ycm_at_startup = 0
