" Install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Begin plugin stuff
call plug#begin('~/.config/nvim/plugged')

" Interface
Plug 'scrooloose/nerdtree'   " File system sidebar navigation
Plug 'bling/vim-airline'   " Vim status
Plug 'mhinz/vim-signify'   " Display version control mondifications
Plug 'majutsushi/tagbar'   " Class outline viewer, uses CTags

" Colorschemes
Plug 'altercation/vim-colors-solarized'   " Solarized colorscheme

" Utilities
Plug 'kien/ctrlp.vim'   " Fuzzy matching

" Languages
Plug 'scrooloose/syntastic'   " General Syntax Checking

" Specific things for Non-Google use
if !g:at_google
  Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
endif

call plug#end()
