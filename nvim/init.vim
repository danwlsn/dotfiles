" //
" init.vim

" //
" Section: plugins
" nothing to display

" //
" Section: default

set nocompatible
filetype off

" Set syntax on
syntax on
" Hightlight cursor line
set cursorline
highlight ColorColoumn ctermfg=grey ctermbg=lightgrey
" Show line numbers
set number
" Show command in status bar
set showcmd
" Normal backspace
set backspace=indent,eol,start
" Show cursor position at all times
set ruler
" Set scroll of to 25 lines
set scrolloff=25
" Word wraps and line breaks
set wrap
" Break lines at break
set linebreak
" Better line break on 7.4
set breakindent
set regexpengine=1

" //
" Section: search

" Search as you type
set incsearch
" Highlight search
set hlsearch
" Ignore case while searching
set ignorecase
set smartcase

" //
" Section: indent

set smartindent
set smarttab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
" python tabs
filetype indent plugin on

" //
" Section: keymaps
" Better split movement
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

" Esc with jk
imap jk <Esc>

" Better line movement
nmap j gj
nmap k gk

" No arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <right> <nop>
nnoremap <left> <nop>

" Set leader to space
let mapleader="\<Space>"

" Close buffer
nnoremap <Leader>q :bp\|bd! #<CR>
" Close window
nnoremap <Leader>x :close<CR>
" confirm quit all
nnoremap <C-q>q :confirm qall

" Don't remove indent from #
inoremap # X<C-H>#

" Set buffer movement to ,o ,p
nmap <Leader>p :bnext<CR>
nmap <Leader>o :bprev<CR>

" Clear search highligh on esc
nnoremap <silent> <Leader>/ :nohlsearch<CR>
