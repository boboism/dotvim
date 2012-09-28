"" Use Vim settings, rather then Vi settings (much better!).
set nocompatible

"" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set number " show line numbers

"" pathogen is called before enabling filetype detection,
"" so putting them at the top of vimrc file.
runtime bundle/vim-pathogen/autoload/pathogen.vim
"call pathogen#infect()
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"" set filetype check on
:filetype plugin indent on
syntax on 
set t_Co=256 " 256 colors
"set background=dark 
colorscheme vividchalk
set guifont="Courier New":h12

"set hlsearch
"
"" enable spell check
" :set spell
"" enable mouse
:set mouse=a
"
"" set search ignorecase 
:set ignorecase
"
:set sessionoptions+=unix,slash
"
"" encodings configure
:set fileencoding=utf-8
:set encoding=utf-8
:set fileencodings=ucs-bom,utf-8,gb2312,cp936
"
"" set tabstop value and shift width 
:set ts=2
:set sw=2
:set expandtab
"
""setting about indent
:set autoindent
:set smartindent
"
""setting about old window resizing behavior when open a new window
:set winfixheight
"" not let all windows keep the same height/width
:set noequalalways

:nmap ,o o<Esc>

nnoremap / /\v
vnoremap / /\v 

let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
