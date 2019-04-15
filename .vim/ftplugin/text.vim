setlocal complete+=k,s,kspell
setlocal completeopt+=longest
setlocal spell

"inoremap <Tab> <C-N>
"inoremap <S-Tab> <C-P>
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<C-x>\<C-s>\<C-s>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<C-x>\<C-s>\<C-s>"
