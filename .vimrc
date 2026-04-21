syntax on
set encoding=utf-8
set expandtab
set hidden
set hlsearch
set incsearch
set nocompatible
set noerrorbells
set nofoldenable
set noswapfile
set novisualbell
set number relativenumber
set scrolloff=999
set shiftround
set shiftwidth=4 tabstop=4 softtabstop=4
set smartcase
set smartindent

" Use a line cursor within insert mode and a block cursor everywhere else.
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

let mapleader = " "

" nnoremap <leader>pv :Vex<CR> " space + pv remaps to :Vex
" nnoremap <leader><CR> :so ~/.vimrc<CR> " space + enter remaps to source .vimrc
