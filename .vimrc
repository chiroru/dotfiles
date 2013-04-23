set nocompatible
filetype off
set rtp+=~/dotfiles/vimfiles/vundle.git/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'opsplorer'
Bundle 'fugitive.vim'
Bundle 'gitv'
Bundle 'open-browser.vim'
Bundle 'AutoComplPop'
Bundle 'Color-Sampler-Pack'
Bundle 'ref.vim'
Bundle 'Fugitive.vim'
"Bundle 'unite.vim'
filetype plugin indent on

" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

" Opsplorer
" --------------------------------------------------
let s:show_hidden_files=1

set shortmess+=I
set number
set tabstop=2
set autoindent
set expandtab
"set fileencodings=iso-2022-jp,sjis,utf-8
"set encoding=utf-8
"set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
"set fileformats=unix,dos,mac
set showcmd
set hlsearch
"set ignorecase
"set smartcase
"set backspace=indent,eol,start
set ruler
set laststatus=2
"set visualbell
"set mouse=a
syntax on

" display 
" --------------------------------------------------
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2

let g:netrw_nogx = 1 " disable netrw's gx mapping.
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)
