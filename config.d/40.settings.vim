
let g:suda#prefix = ['suda://', '_://']

" doxygen syntax highlighting
let g:load_doxygen_syntax=1

" Setting the colorscheme used
colorscheme onedark

" Gruvbox theme
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_italic=1

" Transparent background
highlight Normal guibg=NONE

" Onedark theme
let g:onedark_terminal_italics = 1
let g:onedark_termcolors = 256

" Startify home screen
" let g:startify_custom_header = ['> Welcome to im!']
let g:startify_files_number = 5

" Entries to show
let g:startify_lists = [
      \ { 'type': 'files',     'header': ['# Recent files'] },
      \ { 'type': 'bookmarks', 'header': ['# Bookmarks'] },
      \ { 'type': 'commands',  'header': ['# Commands'] },
      \ ]

" \ { 'g': '~/.config/git/config' },
let g:startify_bookmarks = [
      \ { 'c': '~/.config/i3/config' },
      \ { 's': '~/.scripts/' },
      \ { 'v': '~/.config/nvim/' },
      \ { 'z': '~/.zshrc' },
      \ ]

let g:startify_commands = [
      \ { 'pu': [' Update all plugins',  'PlugUpdate'] },
      \ { 'pi': [' Install new plugins', 'PlugInstall'] },
      \ { 'pc': [' Clean old plugins',   'PlugClean'] },
      \ ]

" Vertical indent line
let g:indentLine_char = '┃'
let g:indentLine_first_char = '┃'
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_fileTypeExclude = [ 'startify' ]

" Material theme
" let g:material_theme_style='dark'
" let g:material_terminal_italics=1

" airline
let g:airline_theme='onedark'

let g:airline_powerline_fonts=1

let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'

" autopairs
" let g:AutoPairsShortcutToggle = '<C-]'
