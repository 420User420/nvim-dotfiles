" These parameters must be set BEFORE loading the plugins
" AirLine
" let g:python3_host_prog = '/bin/python3'

"------------------------------------------------------------
"   VIM-PLUG SECTION
"
" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
" - Make sure to use single quotes
"
call plug#begin('~/.config/nvim/plugged')

" NERDTree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Icons in NERDTree
Plug 'ryanoasis/vim-devicons'

" Pretty home page
Plug 'mhinz/vim-startify'

" Vertical indent lines
Plug 'Yggdroot/indentLine'

" Git diff in the 'gutter' (left column)
Plug 'airblade/vim-gitgutter'

" Align stuff easily
Plug 'godlygeek/tabular'

"
Plug 'Shougo/deoplete.nvim', {'do': 'UpdateRemotePlugins'}

if !has('nvim')
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'Shougo/neoinclude.vim'
Plug 'ervandew/supertab'
" Plug 'Shougo/neosnippets.vim'
" Plug 'Shougo/neosnippets-snippets'

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" Plug 'neomake/neomake'

" Fuzzy finder (usefull)
Plug '/usr/share/fzf'

" To use sudo within nvim
Plug 'lambdalisue/suda.vim'

" Bottom status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Insert chars in pairs
Plug 'jiangmiao/auto-pairs'
" Manages " and ' surroundings
Plug 'tpope/vim-surround'

" Makes the text vely butiful
Plug 'junegunn/goyo.vim'

" ----------------------------------
"         LANGUAGES SYNTAX
" ----------------------------------
" Language pack
Plug 'sheerun/vim-polyglot'

" Git workflow within nvim
Plug 'jreybert/vimagit'

" May be usefull one day
Plug 'vimwiki/vimwiki'

" Comment block at once
Plug 'tpope/vim-commentary'

" Initialize plugin system
call plug#end()

