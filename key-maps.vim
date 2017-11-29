" Plugin Toggles
nnoremap <Leader>d :NERDTreeToggle<CR>   " Activate NERDTree
nmap <Leader>t :TagbarToggle<CR>   " Activate Tagbar

" Terminal Mode
tnoremap <Esc> <C-\><C-n>   " Escape terminal
tnoremap <expr> <C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'   " insert register

" Window Navigation with Alt key
tnoremap <A-h> <C-\><C-N><C-w>h   " Move left
tnoremap <A-j> <C-\><C-N><C-w>j   " Move down
tnoremap <A-k> <C-\><C-N><C-w>k   " Move up
tnoremap <A-l> <C-\><C-N><C-w>l   " Move right
inoremap <A-h> <C-\><C-N><C-w>h   " Move left
inoremap <A-j> <C-\><C-N><C-w>j   " Move down
inoremap <A-k> <C-\><C-N><C-w>k   " Move up
inoremap <A-l> <C-\><C-N><C-w>l   " Move right
nnoremap <A-h> <C-w>h   " Move left
nnoremap <A-j> <C-w>j   " Move down
nnoremap <A-k> <C-w>k   " Move up
nnoremap <A-l> <C-w>l   " Move right
