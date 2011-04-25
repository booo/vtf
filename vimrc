" pathogen
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

set nocompatible
colorscheme wombat
"colorscheme jellyx
"colorscheme mustang

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
set cursorline
set ttyfast

set incsearch
set showmatch
set hlsearch

set wildmenu
set wildmode=list:full

set undofile
set undodir=/tmp/
if has("autocmd")
	autocmd bufwritepost .vimrc source $MYVIMRC
endif

" Start node on F5
autocmd FileType javascript map <F5> :w<CR>:!node "%"<CR>
