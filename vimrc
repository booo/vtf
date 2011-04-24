" pathogen
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

set nocompatible
colorscheme wombat

filetype on
filetype plugin on
filetype indent on
syntax on

set encoding=utf-8
set number

set tabstop=4
set shiftwidth=4
set softtabstop=4
set noexpandtab

nnoremap <tab> %
vnoremap <tab> %

set title
