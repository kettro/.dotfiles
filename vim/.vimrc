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
    set ttymouse=xterm2
endif
"set scrolloff=5
set backspace=indent,eol,start

" * Colors
set t_ut=
set termguicolors
function! GetCurrentColor()
    g:gruvbox_italics=1
    set background=dark
    colorscheme gruvbox
    " if !empty( ( globpath( &rtp, '/colors/zenburn.vim' ) ) )
    "     colorscheme zenburn
    " endif
endfunction

"* Ctags
set tags+=.tags;$HOME
nmap <leader>t g<C-t>

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
au FileType c setlocal tabstop=2 shiftwidth=2 softtabstop=2
au FileType c++ setlocal tabstop=2 shiftwidth=2 softtabstop=2
au FileType cpp setlocal tabstop=2 shiftwidth=2 softtabstop=2

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
source .vim/plugins.vim


