"" pathogen is called before enabling filetype detection, so putting them at the top of vimrc file.
runtime bundle/vim-pathogen/autoload/pathogen.vim " load pathogen in the ~/.vim/bundle directory
"call pathogen#infect()        " replace it with the following 2 lines
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set nocompatible               " not compatible to vi
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set history=50                 " keep 50 lines of command line history
set ruler                      " show the cursor position all the time
set cursorline                 " show the cursorline 
set showcmd                    " display incomplete commands
set number                     " show line numbers

"" Searching
set incsearch                  " do incremental searching
set hlsearch                   " highlight searching
set smartcase
set ignorecase                 " set search ignorecase 

:filetype plugin indent on     "set filetype check on
syntax on 
set t_Co=256                   " 256 colors
"set background=dark 
colorscheme vividchalk
set guifont=Menlo:h18
set sessionoptions+=unix,slash

"" encodings configure
set encoding=utf-8
set fileencodings=utf-8,gbk,gb2312,cp936

"" set white space 
"set nowrap
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
set expandtab
set winfixheight
set noequalalways "not let all windows keep the same height/width

:nmap ,o o<Esc>

nnoremap / /\v
vnoremap / /\v 

let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

""set file type indentation
autocmd FileType * set tabstop=2 shiftwidth=2 expandtab  
autocmd FileType python set tabstop=2 shiftwidth=2 expandtab  
autocmd FileType ruby set tabstop=2 shiftwidth=2 expandtab
