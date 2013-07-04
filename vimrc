set nocompatible
filetype off
set rtp+=~/dotfiles/vimfiles/vundle.git/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'https://github.com/Shougo/unite.vim.git'
Bundle 'https://github.com/Shougo/vimfiler.git'
Bundle 'fugitive.vim'
Bundle 'gitv'
Bundle 'open-browser.vim'
Bundle 'AutoComplPop'
Bundle 'Color-Sampler-Pack'
Bundle 'ref.vim'
Bundle 'Fugitive.vim'
Bundle 'ZenCoding.vim'
Bundle 'Align'
"Bundle 'unite.vim'
filetype plugin indent on

" Vundler Plugin ---------------------------------------------- [Brief help]
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
" --------------------------------------------------------------------------

" ZenCoding Plugin ---------------------------------------------- [Settings]
let g:user_zen_settings = {
  \ 'lang':'ja',
  \ 'indentation' :" ",
  \}
"  \ 'html': {
"  \   'snippets': {
"  \     'html:4t': "aaa\n"
"  \   },
"  \ }
"  \}
let g:user_zen_expandabbr_key = '<c-e>'
" --------------------------------------------------------------------------

set shortmess+=I
set number
set tabstop=2
set noautoindent
set expandtab
set showcmd
set hlsearch
set ruler
set laststatus=2
set shiftwidth=2
set expandtab
set modifiable
set write
set nobackup
syntax on
"set autoindent
"set visualbell
"set mouse=a
"set ignorecase
"set smartcase
"set backspace=indent,eol,start
"set encoding=utf-8
"set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
"set fileformats=unix,dos,mac

let g:indent_guides_enable_on_vim_startup=1
"let g:indent_guides_auto_colors = 0;
"autocmd VimEnter,Colorscheme * : highlight IndentGuidesOdd  ctermbg=236
"autocmd VimEnter,Colorscheme * : highlight IndentGuidesEven ctermbg=black

set cursorline
autocmd VimEnter,ColorScheme * : highlight CursorLine cterm=underline ctermbg=234


set statusline=%F%m%r%h%w\ [ENC=%{&enc}]\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2

let g:netrw_nogx = 1 " disable netrw's gx mapping.
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

hi StatusLine gui=None guifg=White guibg=DarkGray cterm=None ctermfg=White ctermbg=DarkGray
au InsertEnter *  hi StatusLine gui=None guifg=DarkBlue guibg=Gray cterm=None ctermfg=Blue ctermbg=Gray
au InsertLeave * hi StatusLine gui=None guifg=White guibg=DarkGray cterm=None ctermfg=White ctermbg=DarkGray
