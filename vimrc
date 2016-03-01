" Set up vundle
set nocompatible
filetype off 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle Plugins
Plugin 'VundleVim/Vundle.vim'

" Base16 plugin
Plugin 'chriskempson/base16-vim'

" Emmet plugin
Plugin 'mattn/emmet-vim'

" Ctrlp plugin
Plugin 'kien/ctrlp.vim'

" Airlin plugin
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Tmuxline plugin
Plugin 'edkolev/tmuxline.vim'

" Markdown syntax
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" goyo
Plugin 'junegunn/goyo.vim'

" Snippets
Plugin 'SirVer/ultisnips'

" Commentary
Plugin 'tpope/vim-commentary'

" vim-surround
Plugin 'tpope/vim-surround'


call vundle#end()
filetype plugin indent on
" End vundle plugins

" Set background to dark
set background=dark

" Use 256 colours for theme
let base16colorspace=256

" Set theme to base16
colorscheme base16-ocean

" Hightlight cursor line
set cursorline

" Show line numbers
set number

" No swap files
set noswapfile

" Set syntax on
syntax on

" Show cursor position at all times
set ruler

" Better redrawing
set lazyredraw
set ttyfast

" Set scroll of to 15 lines
set scrolloff=15

" Ignore case while searching
set ignorecase

" Search as you type
set incsearch

" Highlight search
set hlsearch

" Enable smart indent
set smartindent

" Enable smart tabs
set smarttab

" Set tabs width to 2 spaces
set tabstop=2

" Set shift width to 2 spaces
set shiftwidth=2

" Set soft tabs to 2 spaces
set softtabstop=2

" Set expandtab
set expandtab

" Word wraps and line breaks
set wrap

" Break lines at break
set linebreak

" Normal backspace
set backspace=indent,eol,start

" Show command in status bar
set showcmd
" Better line break on 7.4
set breakindent
set regexpengine=1

" Better splitting
set splitbelow
set splitright

" Airline settings
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
" let g:airline_theme = 'base16_ocean'


" Keymaps
" Set leader to ,
let mapleader=","

" Better split movement
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

" Esc with ctrl [
:imap <C-[> <Esc>

" Clear search highligh on esc
nnoremap <silent> <Leader>/ :nohlsearch<CR>

" Better line movement
nmap j gj
nmap k gk

" Set buffer movement to ,x ,z
nmap <Leader>x :bnext<CR>
nmap <Leader>z :bprev<CR>

" No arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <right> <nop>
nnoremap <left> <nop>

" paste over selection
vmap  r "_dP

" Ignore files on ctrlp
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$|node_modules',
  \ 'file': '\v\.(exe|so|dll|pyc)$',
  \ }

" tmuxline seperators
let g:tmuxline_separators = {
    \ 'left' : '',
    \ 'left_alt': '>',
    \ 'right' : '',
    \ 'right_alt' : '<',
    \ 'space' : ' '}


" Better Netrw
let g:netrw_liststyle=3
map <leader>e :Explore<cr>

" Markdown settings
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_frontmatter = 1

" Snippet settings
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
set runtimepath+=~/.vim/ultisnips_rep


" Auto load vimrc on save
augroup reload_vimrc " {
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }
