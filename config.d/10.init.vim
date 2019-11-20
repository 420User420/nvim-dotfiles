" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" set hidden
set clipboard=unnamedplus
set encoding=utf-8

" Better command-line completion
set wildmode=longest,list,full

" Show partial commands in the last line of the screen
set showcmd

" Highlight search results, must map something (<C-o>) to :nohl
set incsearch
set hlsearch

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Split to the right to the bottom
set splitright
set splitbelow

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

set copyindent
" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" No need to show the under status bar info now
set noshowmode

set confirm
" disable visual bell
set visualbell
" set t_vb=

" Enable mouse in all modes
set mouse=a

" Command line height
set cmdheight=2
" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype plugin on

" Enable syntax highlighting
syntax on

" Highlight the line if in insert mode
autocmd InsertEnter,InsertLeave * set cul!

set notimeout ttimeout ttimeoutlen=200
" Avoiding error

" Line numbers
set number
set relativenumber

"
set scrolloff=10
set modeline
set modelines=5

set t_Co=256
set background=dark

set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab

"
set list

set listchars=tab:▸\ ,trail:-,precedes:←,extends:→

" Highlight column 110 !
set colorcolumn=110
highlight ColorColumn ctermbg=darkgray
highlight Comment cterm=italic

set cursorline

"  let &t_SI="\<Esc>]12;orange\x7"
" Thin in Insert vs Block in Normal (cursor shape)
" let &t_SI.="\e[5 q"
" let &t_SR.="\e[4 q"
" let &t_EI.="\e[1 q"
" set guicursor="n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20"
set guicursor=n-v-c:block,
        \i-ci-ve:ver25,
        \r-cr:hor20,
        \o:hor50,
        \a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,
        \sm:block-blinkwait175-blinkoff150-blinkon175


if (has("termguicolors"))
        set termguicolors
endif

" Disables automaticcommenting on newline
" autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" File template
autocmd BufNewFile *.c* r ~/.config/nvim/templates/source.c.cpp
autocmd BufNewFile *.h* r ~/.config/nvim/templates/header.c.cpp
autocmd BufNewFile *.py r ~/.config/nvim/templates/source.py
