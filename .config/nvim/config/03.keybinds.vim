" BRACKET COMPLETION
inoremap (; (<CR>);<C-c>O
" inoremap (, (<CR>),<C-c>O
inoremap {; {<CR>};<C-c>O
" inoremap {, {<CR>},<C-c>O
inoremap [; [<CR>];<C-c>O
" inoremap [, [<CR>],<C-c>O
" CURSOR NAVIGATION
" nnoremap ;l $
" nnoremap ;h ^
nnoremap <M-l> $
nnoremap <M-h> ^

" NAVIGATION
nnoremap \] :cn<CR>
nnoremap \[ :cp<CR>
nnoremap \n :cn<CR>
nnoremap \p :cp<CR>
nnoremap \o :copen<CR>
nnoremap \c :cclose<CR>
nnoremap \bq :b#<CR>

" TABS
nnoremap tbn :tabnext<CR>
nnoremap tbp :tabprev<CR>
nnoremap tbe :tabedit<SPACE>

" BUFFERS
nnoremap gn :bn<CR>
nnoremap gp :bp<CR>
nnoremap gd :bd<CR>

" PLUGIN SPECIFIC
nmap <silent> <space>] <Plug>(ale_next_wrap)
nmap <silent> <space>[ <Plug>(ale_previous_wrap)


" nnoremap ` .
