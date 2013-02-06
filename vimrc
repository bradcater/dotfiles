" Standard .vimrc extensions.

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

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
" filetype on
au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead *.god set filetype=ruby

" filetype plugin indent on     " required!
set nocp
filetype plugin on     " required!

vmap <silent>sf        <Plug>SQLU_Formatter<CR> 
nmap <silent>scl       <Plug>SQLU_CreateColumnList<CR> 
nmap <silent>scd       <Plug>SQLU_GetColumnDef<CR> 
nmap <silent>scdt      <Plug>SQLU_GetColumnDataType<CR> 
nmap <silent>scp       <Plug>SQLU_CreateProcedure<CR> 

" Enable indent folding
" set foldenable
" set fdm=indent

" Set space to toggle a fold
" nnoremap <space> za
