" ##########################################
" ## Plugins using vim-plug
" ##########################################

call plug#begin()

Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
Plug 'sainnhe/sonokai'

call plug#end()


" ##########################################
" ## Colorscheme and Visual Elements
" ##########################################

" Set dark background
set background=dark

" Themes
colorscheme sonokai

" Lightline
let g:lightline = {'colorscheme': 'sonokai'}

" To fix terminal issue where everything is black and white
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" Add numbers to each line on the left-hand side.
set number
" set relativenumber

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Enable status line
set laststatus=2


" ##########################################
" ## General
" ##########################################

" Enable modern Vim features not compatible with Vi spec.
set nocompatible

" Enable UTF-8 encoding
set encoding=UTF-8

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab


" ##########################################
" ## Filetypes and Syntax
" ##########################################

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Enable file type based indent configuration and syntax highlighting.
" Note that when code is pasted via the terminal, vim by default does not detect
" that the code is pasted (as opposed to when using vim's paste mappings), which
" leads to incorrect indentation when indent mode is on.
" To work around this, use ":set paste" / ":set nopaste" to toggle paste mode.
" You can also use a plugin to:
" - enter insert mode with paste (https://github.com/tpope/vim-unimpaired)
" - auto-detect pasting (https://github.com/ConradIrwin/vim-bracketed-paste)
filetype plugin indent on

" Turn syntax highlighting on.
syntax on


" ##########################################
" ## Search
" ##########################################

" Highlight search
set hlsearch
nnoremap <esc><esc> :silent! nohls<cr>

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show matching words during a search.
set showmatch


" ##########################################
" ## Command mode
" ##########################################

" Enable auto completion menu after pressing TAB.
set wildmenu
set wildmode=list:full
