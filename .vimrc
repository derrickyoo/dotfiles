" vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
"
" Original repos on github
Bundle 'scrooloose/nerdtree'

syntax on
set number
set smartindent
set shiftwidth=4
set softtabstop=4
set textwidth=79

map <C-n> : NERDTreeToggle<CR>
