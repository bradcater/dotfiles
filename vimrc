" Standard .vimrc extensions.

color vibrantink
set incsearch
set ignorecase
set smartcase
syntax on
let g:user_zen_settings = {
  \  'indentation' : '  ',
  \  'perl' : {
  \    'aliases' : {
  \      'req' : 'require '
  \    },
  \    'snippets' : {
  \      'use' : "use strict\nuse warnings\n\n",
  \      'warn' : "warn \"|\";",
  \    }
  \  }
  \}
let g:user_zen_expandabbr_key = '<c-e>,'
let g:use_zen_complete_tag = 1

set expandtab
set tabstop=2
au BufNewFile,BufRead *.ejs set filetype=html

" Enable indent folding
" set foldenable
" set fdm=indent

" Set space to toggle a fold
" nnoremap <space> za
