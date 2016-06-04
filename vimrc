" Standard .vimrc extensions.

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

set runtimepath^=~/.vim/bundle/ctrlp.vim

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
" Original repos on GitHub
Bundle 'ivalkeen/vim-simpledb'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'

color vibrantink
set incsearch
set ignorecase
set smartcase
syntax on
let g:user_emmet_settings = {
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
let g:user_emmet_expandabbr_key = '<c-e>,'
let g:use_emmet_complete_tag = 1

set expandtab
set tabstop=2
" filetype on
au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead *.god set filetype=ruby
au BufRead,BufNewFile *.go set filetype=go

" filetype plugin indent on     " required!
"set nocp
"filetype plugin on     " required!

vmap <silent>sf        <Plug>SQLU_Formatter<CR> 
nmap <silent>scl       <Plug>SQLU_CreateColumnList<CR> 
nmap <silent>scd       <Plug>SQLU_GetColumnDef<CR> 
nmap <silent>scdt      <Plug>SQLU_GetColumnDataType<CR> 
nmap <silent>scp       <Plug>SQLU_CreateProcedure<CR> 

" Enable indent folding
set foldenable
set fdm=indent

" Set space to toggle a fold
nnoremap <space> za

" Taken from
"   http://www.perturb.org/display/Make_Vim_show_hidden_characters.html
" Toggle hidden characters
nmap ,l :set invlist

autocmd BufWritePre *.html.erb,*.rb :%s/\s\+$//e

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Taken from
" http://superuser.com/questions/302186/vim-scrolls-very-slow-when-a-line-is-too-long
set ttyfast " u got a fast terminal
set ttyscroll=3
set lazyredraw " to avoid scrolling problems
