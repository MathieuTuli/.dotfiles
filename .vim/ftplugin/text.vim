setlocal complete+=k,s,kspell
setlocal completeopt+=longest
setlocal spell

"inoremap <Tab> <C-N>
"inoremap <S-Tab> <C-P>
" inoremap <expr> <Tab> pumvisible() ? "\<C-p>" : "\<C-x>\<C-s>\<C-s>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<C-x>\<C-s>\<C-s>"
highlight SpellBad ctermbg=9 ctermfg=0
highlight SpellCap ctermbg=5 ctermfg=0
highlight SpellRare ctermbg=11 ctermfg=0
highlight SpellLocal ctermbg=2 ctermfg=0
