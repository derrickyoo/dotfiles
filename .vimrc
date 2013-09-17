" vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" original repos on github
Bundle 'scrooloose/nerdtree'

syntax on		" syntax highlighting
set ruler		" show line and column number
set showcmd		" show (prtial) command in status line
set number      " show line number

set expandtab		" enter spaces when tab is pressed
set shiftwidth=4	" number of spaces to use for auto indent
set softtabstop=4
set autoindent		" copy indent from current line for new line
set tabstop=4		" use 4 spaces to represent tab
set textwidth=80
set encoding=utf-8
set fileencoding=utf-8
set hlsearch
set backspace=indent,eol,start


let mapleader=","
nmap <leader>n : NERDTreeToggle<CR>
" map <C-n> : NERDTreeToggle<CR>
