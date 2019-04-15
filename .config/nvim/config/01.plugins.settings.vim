" ALE
let g:ale_sign_column_always=1
let g:ale_set_loclist=1
" let g:ale_open_list=1
" let g:ale_keep_list_window_open=1
let g:ale_set_highlights=1
highlight ALEError    ctermbg=9 ctermfg=0
" highlight ALEErrorLine    ctermbg=1 ctermfg=0
highlight ALEErrorSign    ctermbg=9 ctermfg=0
highlight ALEInfo    ctermbg=4 ctermfg=0
highlight ALEInfoSign    ctermbg=4 ctermfg=0
" highlight ALEIfoLine    ctermbg=1 ctermfg=0
highlight ALEStyleError    ctermbg=5 ctermfg=0
highlight ALEStyleErrorSign    ctermbg=5 ctermfg=0
highlight ALEStyleWarning    ctermbg=11 ctermfg=0
highlight ALEStyleWarningSign    ctermbg=11 ctermfg=0
highlight ALEVirtualTextInfo    ctermbg=4 ctermfg=0
highlight ALEVirtualTextStyleError    ctermbg=9 ctermfg=0
highlight ALEVirtualTextWarning    ctermbg=11 ctermfg=0
highlight ALEWarning    ctermbg=11 ctermfg=0
" highlight ALEWarningLine    ctermbg=1 ctermfg=0
highlight ALEWarningSign    ctermbg=11 ctermfg=0

" GIT GUTTER
highlight GitGutterAdd    guifg=#85ca9c guibg=<X> ctermfg=2
highlight GitGutterChange guifg=#FFaF87 guibg=<X> ctermfg=3
highlight GitGutterDelete guifg=#ff8787 guibg=<X> ctermfg=9
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '~'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^^'
let g:gitgutter_sign_modified_removed = '~-'

" YCM
" YCM
let g:ycm_autoclose_preview_window_after_completion = 1
" let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

let g:ycm_path_to_python_interpreter = '/usr/bin/python3'

" TODO: Group
" Since YCM unconditionally remaps <Tab> on VimEnter, we need to remap <Tab>
" on every new buffer here. Fortunately, YCM doesn't map again because of the
" filetype blacklist.
autocmd FileType text inoremap <buffer> <Tab> <C-N>
autocmd FileType text inoremap <buffer> <S-Tab> <C-P>

" RAINBOW
let g:rainbow_active=1

" SMOOTH SCROLL
" noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 5, 1)<CR>
" noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 5, 1)<CR>
" noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 5, 1)<CR>
" noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 5, 1)<CR>
