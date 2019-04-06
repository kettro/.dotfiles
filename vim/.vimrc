" VIM Configuration File
"""""""""""""""""""""""""""
" Organization:
" * Basic Config
" * Colors
" * Ctags
" * Folds
" * Leader
" * Indentation
" * Movement Aliases
" * Whitespace
" * Windows and Splits
" * AutoCommands
" * Includes
"""""""""""""""""""""""""""
" * Plugin Management
runtime plugin_management.vim

" * Basic Config
set nocompatible
filetype plugin indent on
syntax enable
set number
set visualbell
set ttyfast
set cursorline
set mouse=a
if !has ('nvim')
    set ttymouse=sgr
endif
set backspace=indent,eol,start

" * Colors
set t_ut=
set termguicolors
function! GetCurrentColor()
    set background=dark
    "g:gruvbox_italics=1
    "colorscheme gruvbox
    "colorscheme Base2Tone_ForestDark
    colorscheme Base2Tone_DesertDark
endfunction

"* Ctags
set tags+=.tags;$HOME

" * Folds
set foldenable
set foldlevelstart=10
set foldnestmax=10
"set foldmethod=indent
set foldmethod=syntax
nnoremap <Space> za

" * Leader
let mapleader=","

" * Indentation
set smarttab
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
" >> Add Language-specific tab rules
au FileType clojure setlocal tabstop=2 shiftwidth=2 softtabstop=2
au FileType python setlocal tabstop=2 shiftwidth=2 softtabstop=2
au FileType c setlocal tabstop=4 shiftwidth=4 softtabstop=4 cc=101
au FileType c++ setlocal tabstop=4 shiftwidth=4 softtabstop=4 cc=101
au FileType cpp setlocal tabstop=4 shiftwidth=4 softtabstop=4 cc=101

" * Movement Aliases
nnoremap j gj
nnoremap k gk
nnoremap B ^
nnoremap E $
nmap <C-j> 5j
nmap <C-k> 5k

" * Status Line
set showcmd
set ruler
set laststatus=2

" * Whitespace
set list
set listchars=tab:>-,trail:·,extends:>,precedes:<,nbsp:·
nnoremap dc cc<Esc>

" * Windows and Splits
set splitright

" * AutoCommands
"   > Color
au VimEnter * :call GetCurrentColor()

" * Includes
runtime plugin_options.vim


