" Check if at Google
let google_vimrc = '~/.config/nvim/google/init.vim'
let g:at_google = filereadable( google_vimrc )

" Vim Plug
source ~/.config/nvim/vim-plug.vim

" Configuration
set number   " Show line numbers
set showmatch   " Show matching brackets
set expandtab   " Insert spaces instead of TABs
set tabstop=2   " Render TABS with this many spaces
set shiftwidth=2   " indentation amount for < and > commands
set colorcolumn=81   " Marks past 80 characters
set list listchars=tab:»\ ,trail:°   " Show tabs and trailing spaces
let mapleader=' '   " Sets the Leader to space

" Navigation
if !&scrolloff
  set scrolloff=3   " Show next 3 lines when scrolling
endif
if !&sidescrolloff
  set sidescrolloff=5   " Show next 5 collumns when scrolling
endif

" Opening files
set splitbelow   " Horizontal split below current
set splitright   " Vertical split to right of current

" Set Solarized Colors
" let g:solarized_termcolors=256   " Downgrade solarized colors
" let g:solarized_contrast = "high"   " Makes solarized more visable
set background=dark   " Sets dark background
colorscheme solarized   " Sets colorscheme to solarized

" Source Control Configuration
let g:signify_vcs_list = [ 'git' ]

" Key Mappings
source ~/.config/nvim/key-maps.vim

" NERDTree Stuff
augroup NERDTree
  autocmd!
  autocmd VimEnter * NERDTree
  autocmd VimEnter * wincmd p
  autocmd BufEnter *
    \ if (winnr("$") == 1 && exists("b:NERDTree") && 
    \ b:NERDTree.isTabTree()) | q | endif
augroup END

" Do things specifically for google, including overriding defaults
if g:at_google
  exec 'source ' . google_vimrc
endif
