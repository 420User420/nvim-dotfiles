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

" ----------------------------------
"            FEATURES
" ----------------------------------
" NERDTree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
" Pretty home page
Plug 'mhinz/vim-startify'
" Vertical indent lines
Plug 'Yggdroot/indentLine'
" To use sudo within nvim
Plug 'lambdalisue/suda.vim'
" Fuzzy finder (usefull)
Plug '/usr/share/fzf'
" Insert chars in pairs
Plug 'jiangmiao/auto-pairs'
" Manages " and ' surroundings
Plug 'tpope/vim-surround'
" Git workflow within nvim
Plug 'jreybert/vimagit'
" May be usefull one day
Plug 'vimwiki/vimwiki'
" Comment block at once
Plug 'tpope/vim-commentary'

" ----------------------------------
"            APPEARENCE
" ----------------------------------
" Gruvbox theme
Plug 'morhetz/gruvbox'
" Icons in NERDTree
Plug 'ryanoasis/vim-devicons'
"Highlight yanked text
Plug 'machakann/vim-highlightedyank'
" Bottom status bar
Plug 'itchyny/lightline.vim'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Makes the text vely butiful
Plug 'junegunn/goyo.vim'

" Git diff in the 'gutter' (left column)
" Plug 'airblade/vim-gitgutter'
" Align stuff easily
" Plug 'godlygeek/tabular'
" Use tab to insert prediction
" Plug 'ervandew/supertab'

" ----------------------------------
"         LANGUAGES SYNTAX
" ----------------------------------
" Language semantic support
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Rust support
" Plug 'rust-lang/rust.vim'
Plug 'fannheyward/coc-rust-analyzer', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-lists', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-yank', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-git', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile'}

Plug 'tpope/vim-fugitive'

" TOML support
Plug 'cespare/vim-toml'

" Initialize plugin system
call plug#end()

" If we are setting up nvim, run this file once
if !empty($SETUP_420)
  runtime config.d/update.vim
endif

