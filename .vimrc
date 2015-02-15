set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Plugin 'gmarik/vundle'

Plugin 'rodjek/vim-puppet'
Plugin 'vim-scripts/HTML-AutoCloseTag'
Plugin 'vim-scripts/matchit.zip'
Plugin 'vim-scripts/scratch.vim'
Plugin 'vim-scripts/indenthtml.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'mattn/emmet-vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-scripts/django.vim'
Plugin 'klen/python-mode'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'majutsushi/tagbar'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'ervandew/supertab'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'coaxmetal/humblevundlebundle'
Plugin 'tilljoel/vim-automatic-ctags'
Plugin 'mnoble/tomorrow-night-vim'
Plugin 'nosami/Omnisharp'
Plugin 'tpope/vim-dispatch'
Plugin 'jnwhiteh/vim-golang'
Plugin 'nsf/gocode'

Plugin 'taglist.vim'
Plugin 'L9'

filetype plugin indent on

syntax on
set noswapfile
set encoding=utf-8
set hidden
set smartcase
set mouse=a
set noerrorbells
set visualbell
set guioptions-=T
set guioptions-=r
set guioptions-=L

set nofoldenable

set wildmenu
set wildmode=longest:full,full

set hlsearch
set incsearch
set smartindent
set expandtab
set shiftwidth=4 ts=8 softtabstop=4
set shiftround

set number
set laststatus=2
set guifont=meslo\ lg\ s\ for\ powerline:h13
let g:molokai_original = 1
colorscheme tomorrow-night-eighties

" key mappings
let mapleader = ","
nnoremap ' `
nnoremap ` '
nnoremap \ :NERDTreeToggle<CR>
nnoremap <leader>b :TMiniBufExplorer<CR>
nnoremap <leader>u :GundoToggle<CR>
nnoremap <leader>t :TagbarToggle<CR>
nnoremap <space> :nohls<CR>
nmap <leader><C-q> <plug>Kwbd

" python mode settings
let g:pymode_options = 0 " disable the global options because we want textwrap
let g:pymode_lint = 0 " let syntastic do linting
let g:pymode_virtualenv = 0
let g:pymode_breakpoint = 0
let g:pymode_syntax_print_as_function = 1
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_highlight_string_format = 1
let g:pymode_syntax_highlight_builtin_objs = 1
let g:pymode_indent = 1
let g:pymode_run = 1

" syntastic settings
let g:syntastic_always_populate_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_mode_map = { 'mode': 'active',
                          \ 'active_filetypes': ['javascript', 'python'],
                          \ 'passive_filetypes': ['html'] }
let g:syntastic_python_checkers=['pyflakes','flake8']
let g:syntastic_python_flake8_args='--ignore=E501,E128,E231,E261,E401'

" zencoding
let g:use_zen_complete_tag = 1

" NERDTree
let NERDTreeIgnore = ['\.pyc$']

" strip trailing whitespace on save
function! <SID>StripTrailingWhitespaces()
    "preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    "do the business:
    %s/\s\+$//e
    "restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

set wildignore+=*/tmp*,*.so,*.swp,*.pyc,*.DS_STORE,*.db

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

let g:automatic_ctags_files=".git,Gemfile,requirements.txt"
let g:automatic_ctags_cmd="ctags"
let g:atomatic_ctags_filename="tags"

set tags=./tags;/

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
let g:miniBufExplSplitBelow=1

au BufNewFile,BufRead *.go setlocal noet ts=4 sw=4 sts=4
autocmd BufWritePre *.go Fmt
