syntax on

set expandtab 
set hlsearch
set incsearch
set ignorecase
set shiftwidth=4
set softtabstop=4
set smartcase 
set smartindent 
set tabstop=4 
set nobackup
set noerrorbells
set noswapfile 
set nowrap
set number
set undodir=~/.vim/undodir

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

call plug#end()

if executable('rg')
    let g:rg_derive_root='true'
endif

