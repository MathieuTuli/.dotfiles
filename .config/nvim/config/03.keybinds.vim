" BRACKET COMPLETION
"" inoremap (; (<CR>);<C-c>O
" inoremap (, (<CR>),<C-c>O
"" inoremap {; {<CR>};<C-c>O
" inoremap {, {<CR>},<C-c>O
"" inoremap [; [<CR>];<C-c>O
" inoremap [, [<CR>],<C-c>O
" inoremap <> <><Left>
" inoremap () ()<Left>
" inoremap {} {}<Left>
" inoremap [] []<Left>
" inoremap "" ""<Left>
" inoremap '' ''<Left>
" inoremap `` ``<Left>

" CURSOR NAVIGATION
" nnoremap ;l $
" nnoremap ;h ^
nnoremap <M-l> $
nnoremap <M-h> ^
" INSERT MODE RELATED
" imap <Up>    <Nop>
" imap <Down>  <Nop>
" imap <Left>  <Nop>
" imap <Right> <Nop>
inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

" NAVIGATION
nnoremap \] :cn<CR>
nnoremap \[ :cp<CR>
nnoremap \n :cn<CR>
nnoremap \p :cp<CR>
nnoremap \o :copen<CR>
nnoremap \c :cclose<CR>
nnoremap \bq :b#<CR>
nnoremap ]<space> :ALENextWrap<CR>
nnoremap [<space> :ALEPreviousWrap<CR>

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


" REDO LAST COMMAND
" nnoremap ` .

" VIM REPEAT
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

" MACROS
nnoremap Q @q

" EOL COPY - make it consistent with D and C
nnoremap Y y$

" SPLITS
" nnoremap <C-J> <C-W><C-j>
" nnoremap <C-K> <C-W><C-k>
" nnoremap <C-L> <C-W><C-l>
" nnoremap <C-H> <C-W><C-h>

" Nerd Tree
nmap <C-n> :NERDTreeToggle<CR>

" Vimtex
nmap \tex :VimtexCompile<CR>
" nnoremap <C-J> <C-W><C-j>
" nnoremap <C-K> <C-W><C-k>
" nnoremap <C-L> <C-W><C-l>
" nnoremap <C-H> <C-W><C-h>
tnoremap <C-]> <C-\><C-n>
