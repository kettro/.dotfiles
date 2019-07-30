" ViM Plugin Manager
" Via vim-plug

" Retrieve the vim-plug script if not doneso already
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --reate-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Markup
Plug 'Raimondi/delimitMate'
Plug 'Yggdroot/indentLine'

" Syntax
Plug 'agfline/c-syntax.vim' " C Syntax option
Plug 'justinmk/vim-syntax-extra' "Another C Syntax Option

" Features
Plug 'scrooloose/nerdtree'
Plug 'zefei/vim-wintabs'
Plug 'vim-scripts/DoxygenToolkit.vim'

" Color
Plug 'morhetz/gruvbox'
Plug 'mkarmona/colorsbox'
Plug 'atelierbram/Base2Tone-vim'

call plug#end()
