
let g:suda#prefix = ['suda://', '_://']

" doxygen syntax highlighting
let g:load_doxygen_syntax=1

" Setting the colorscheme used
colorscheme gruvbox

" Transparent background
" highlight Normal guibg=NONE

" Gruvbox theme
" let g:gruvbox_contrast_dark='hard'
" let g:gruvbox_italic=1
" Onedark theme
let g:onedark_terminal_italics = 1
let g:onedark_termcolors = 256
" Material theme
" let g:material_theme_style='dark'
" let g:material_terminal_italics=1

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

" airline
" let g:airline_theme='wombat'
" let g:airline_powerline_fonts=1
" let g:airline#extensions#tabline#enabled=1
" let g:airline#extensions#tabline#formatter='unique_tail'

" Lightline
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'filename': 'LightlineFilename',
      \   'cocstatus': 'coc#status'
      \ },
      \ }
function! LightlineFilename()
  return expand('%:t') !=# '' ? @% : '[No Name]'
endfunction

" Use auocmd to force lightline update.
autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()

" rust
let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0
let g:rust_clip_command = 'xclip -selection clipboard'

" autopairs
" let g:AutoPairsShortcutToggle = '<C-]'

" Jump to last edit position on opening file
if has("autocmd")
  " https://stackoverflow.com/questions/31449496/vim-ignore-specifc-file-in-autocommand
  au BufReadPost * if expand('%:p') !~# '\m/\.git/' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Open zipped files
function! OpenZippedFile(f)
  " get number of new (empty) buffer
  let l:b = bufnr('%')
  " construct full path
  let l:f = substitute(a:f, '.zip/', '.zip::', '')
  let l:f = substitute(l:f, '/zip:', 'zipfile:', '')
  " swap back to original buffer
  b #
  " delete new one
  exe 'bd! ' . l:b
  " open buffer with correct path
  sil exe 'e ' . l:f
  " read in zip data
  call zip#Read(l:f, 1)
endfunction
au BufReadCmd /zip:*.yarn/cache/*.zip/* call OpenZippedFile(expand('<afile>'))1~

