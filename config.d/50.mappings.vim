"------------------------------------------------------------
" Mappings {{{1
"
" Useful mappings

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$
map ; :FZF<CR>

" Map <C-O> (redraw screen) to also turn off search highlighting until the
" next search
" map <C-O> :nohlsearch<return>
map <esc> :noh <CR>

" For ctrl + {h, j, k, l}  instead of ctrl + w then ctrl + {h, j, k, l}
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Ctrl+Tab for tabs ?!
nnoremap <C-Tab> :bn<CR>
nnoremap <C-S-Tab> :tabprevious<CR>

nnoremap <C-y> :filetype detect<CR>

nnoremap j gj
nnoremap k gk

" Save with ctrl + s
map <C-s> :wa<CR>
" imap <C-Space> <Plug>(asyncomplete_force_refresh)

" nnoremap <C-V> :vertical resize 80<CR>

" Annoyingly good
command W wa
command Wa wa
command WQ wq
command Wq wq
command Q q

" Replace all is replaced by S
nnoremap S :%s//g<Left><Left>
vnoremap S :'<,'>s//g<Left><Left>

" Compile current document (pdf, md, etc)
nnoremap <C-U> :w! \| !compiler <c-r>%<CR>

" Oh yeah: Open current document (pdf/html)
nnoremap <C-o> :!opout <c-r>%<CR><CR>

" Clear tex files
autocmd VimLeave *.tex !texclear %

" Copy pasta ! (P for before)
vnoremap <C-c> "+y
map <C-p> "+P

" Automatically delete trailing whitespaces at exit
autocmd BufWritePre * %s/\s\+$//e

" Automaticaly compile the markdown file in html
autocmd BufWritePost *.md silent !cmark-gfm -t html --github-pre-lang % > %:r.html

" Can't because interactive mode
" autocmd BufWritePost *.tex !aspell -t -c %

" nnoremap <F5> :call LanguageClient_contextMenu()<CR>

" Goyo plugin makes text more readable when writing prose:
map <C-f> :Goyo \|set linebreak<CR>

" Spell-check set to <leader>o, 'o' for 'orthography':
map <leader>o :setlocal spell! spelllang=en_us<CR>

" Nerd tree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | Startify | endif
autocmd BufEnter * if winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree() | q | endif
map <C-N> :NERDTreeToggle<CR>

" ervandew/supertab
" let g:SuperTabDefaultCompletionType="<c-n>"

