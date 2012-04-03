" Standard .vimrc extensions.

color vibrantink
set incsearch
set ignorecase
set smartcase
syntax on
let g:user_zen_expandabbr_key = '<c-e>,'
set expandtab
set tabstop=2
au BufNewFile,BufRead *.ejs set filetype=html

" Enable indent folding
" set foldenable
" set fdm=indent

" Set space to toggle a fold
nnoremap <space> za
