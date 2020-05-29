set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'w0rp/ale'
Plugin 'taglist.vim'
Plugin 'fatih/vim-go'
Plugin 'tpope/vim-sensible'
Plugin 'airblade/vim-gitgutter'
Plugin 'google/vim-searchindex'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdcommenter'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'roman/golden-ratio'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'matchit.zip'
Plugin 'junegunn/vim-easy-align'
Plugin 'bash-support.vim'
Plugin 'morhetz/gruvbox'
Plug 'flazz/vim-colorschemes'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf'
call vundle#end()

filetype plugin indent on

syntax on
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set incsearch
set hlsearch
set ruler
set history=7000
set showcmd
set wildmenu
set scrolloff=32
set ignorecase
set smartcase
set shiftround
set expandtab
set noswapfile
set termguicolors
set paste
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50
" Give more space for displaying messages.
set cmdheight=2

colorscheme gruvbox
set background=dark

" e one space, not two, after punctuation.
set nojoinspaces
" Numbers
set number relativenumber
set numberwidth=4

" Yank file path with line number
nnoremap <leader>yl :let @+=expand("%") . ':' . line(".")<CR>
