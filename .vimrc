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

set background=dark           " Set dark background
colorscheme sonokai           " Themes

" Lightline
let g:lightline = {'colorscheme': 'sonokai'}

" To fix terminal issue where everything is black and white
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

set number                    " Add numbers to each line on the left-hand side.
" set relativenumber
set cursorline                " Highlight cursor line underneath the cursor horizontally.
set showcmd                   " Show partial command you type in the last line of the screen.
set showmode                  " Show the mode you are on the last line.
set laststatus=2              " Enable status line
set ruler


" ##########################################
" ## General
" ##########################################

set nocompatible              " Enable modern Vim features not compatible with Vi spec.
set encoding=UTF-8
set shiftwidth=4              " Set shift width to 4 spaces.
set tabstop=4                 " Set tab width to 4 columns.
set expandtab                 " Use space characters instead of tabs.
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+  " Strings to use in 'list' mode and for the :list command.
set scrolloff=5               " Vertical offset when scrolling.
set sidescroll=1              " Min number of columns to horizontal scroll.
set sidescrolloff=2           " Horizontal offset when side scrolling.
set backspace=indent,eol,start  " Allow backspacing over autoindent, line breaks and start of insert.

" ##########################################
" ## Filetypes and Syntax
" ##########################################

syntax on                     " Turn syntax highlighting on.>
filetype on                   " Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype plugin on            " Enable plugins and load plugin for the detected file type.
filetype indent on            " Load an indent file for the detected file type.

" Enable file type based indent configuration and syntax highlighting.
" Note that when code is pasted via the terminal, vim by default does not detect
" that the code is pasted (as opposed to when using vim's paste mappings), which
" leads to incorrect indentation when indent mode is on.
" To work around this, use ":set paste" / ":set nopaste" to toggle paste mode.
" You can also use a plugin to:
" - enter insert mode with paste (https://github.com/tpope/vim-unimpaired)
" - auto-detect pasting (https://github.com/ConradIrwin/vim-bracketed-paste)
filetype plugin indent on


" ##########################################
" ## Search
" ##########################################

" Highlight search
set hlsearch
nnoremap <esc><esc> :silent! nohls<cr>

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

set ignorecase                " Ignore capital letters during search.
set showmatch                 " Show matching words during a search.
set incsearch                 " While typing a search command, the matched string is highlighted on the fly.


" ##########################################
" ## Command mode
" ##########################################

" Enable auto completion menu after pressing TAB.
set wildmenu
set wildmode=list:full
