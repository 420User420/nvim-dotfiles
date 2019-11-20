" Vim settings
set completeopt=noinsert,menuone,noselect
set shortmess+=c

let g:deoplete#enable_at_startup = 1

" SuperTab from TOP to BOTTOM
let g:SuperTabDefaultCompletionType = "<c-n>"

" LanguageClient
let g:LanguageClient_autoStart=1
" let g:LanguageClient_hasSnippetSupport=1
let g:LanguageClient_serverCommands={
            \ 'c':   ['/usr/bin/cquery', '--init={"cacheDirectory": "/home/user420/.cache/cquery"}'],
            \ 'cpp': ['/usr/bin/cquery', '--init={"cacheDirectory": "/home/user420/.cache/cquery"}'],
            \ }

" the suddennly popup of diagnostics sign is kind of annoying
" let g:LanguageClient_diagnosticsSignsMax = 0
let g:LanguageClient_rootMarkers={
            \ 'c':   ['compile_commands.json', 'build', '.git'],
            \ 'cpp': ['compile_commands.json', 'build', '.git'],
            \ }


