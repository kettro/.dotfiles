" Vim Plugins
"""""""""""""""""""""""
" * delimitMate
" * indentLine
" * NERDTree
" * WinTabs
"""""""""""""""""""""""
" Vim-plug

" * delimitMate
let delimitMate_expand_cr = 1

" * indentLine
let g:indentLine_setColors = 0

" * NERDTree
nmap <leader>n          :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable="▸"
let g:NERDTreeDirArrowCollapsible="▾"
let NERDTreeNaturalSort=1

" * WinTabs
nmap <C-x>h             <Plug>(wintabs_first)
nmap <C-x>l             <Plug>(wintabs_last)
nmap <C-x>n             <Plug>(wintabs_next)
nmap <C-x>p             <Plug>(wintabs_previous)
nmap <C-x>d             <Plug>(wintabs_close)
nmap <C-x><PageUp>      <Plug>(wintabs_previous)
nmap <C-x><PageDown>    <Plug>(wintabs_next)
nmap <C-F9>             <Plug>(wintabs_undo)
nmap <C-F10>            <Plug>(wintabs_close)
nmap <C-F11>            <Plug>(wintabs_previous)
nmap <C-F12>            <Plug>(wintabs_next)
nmap <C-x>u             <Plug>(wintabs_undo)
nmap <C-x>o             <Plug>(wintabs_only)
nmap <C-x>D             <Plug>(wintabs_close_vimtab)
nmap <C-x>O             <Plug>(wintabs_only_vimtab)
nmap <C-x>M             <Plug>(wintabs_maximize)
let g:wintabs_autoclose_vim=1

