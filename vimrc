" pathogen
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

set nocompatible
colorscheme wombat
"colorscheme jellyx
"colorscheme mustang
"stupid fix for coffee-script plugin
filetype off
"stupid fix end

filetype plugin indent on
syntax on

set encoding=utf-8
set number

set tabstop=4
set shiftwidth=4
"set softtabstop=4
set expandtab

set linebreak
set textwidth=80

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
autocmd FileType coffee map <F5> :w<CR>:!coffee "%"<CR>
autocmd FileType ruby map <F5> :w<CR>:!ruby "%"<CR>
autocmd FileType python map <F5> :w<CR>:!python "%"<CR>
autocmd FileType r map <F5> :w<CR>:!Rscript "%"<CR>

" restore cursor position
set viminfo='10,\"100,:20,%,n~/.viminfo

function! ResCur()
    if line("'\"") <= line("$")
        normal! g`"
        return 1
    endif
endfunction

augroup resCur
    autocmd!
    autocmd BufWinEnter * call ResCur()
augroup END
