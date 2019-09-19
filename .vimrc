set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'w0rp/ale'
Plugin 'taglist.vim'
Plugin 'fatih/vim-go'
Plugin 'tpope/vim-sensible'
Plugin 'itchyny/lightline.vim'
Plugin 'junegunn/seoul256.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'google/vim-searchindex'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'roman/golden-ratio'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'matchit.zip'
Plugin 'junegunn/vim-easy-align'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'bash-support.vim'

" C++
Plugin 'c.vim'
Plugin 'OmniCppComplete'
Plugin 'bfrg/vim-cpp-modern'
Plugin 'Valloric/YouCompleteMe'
Plugin 'octol/vim-cpp-enhanced-highlight'

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


highlight Comment ctermfg=green
hi Search ctermfg=Red
" hi Search ctermbg=DarkBlue

" Set relative numbers
set number relativenumber


" Use one space, not two, after punctuation.
set nojoinspaces
" Numbers
set number
set numberwidth=4

" Yank file path with line number
nnoremap <leader>yl :let @+=expand("%") . ':' . line(".")<CR>

" hardmode
let g:hardmodemsg = "VIM: hard Mode [ ':call EasyMode()' to exit]"


nnoremap <buffer> <Left> <Esc>:echo g:hardmodemsg<CR>
nnoremap <buffer> <Right> <Esc>:echo g:hardmodemsg<CR>
nnoremap <buffer> <Up> <Esc>:echo g:hardmodemsg<CR>
nnoremap <buffer> <Down> <Esc>:echo g:hardmodemsg<CR>
nnoremap <buffer> <PageUp> <Esc>:echo g:hardmodemsg<CR>
nnoremap <buffer> <PageDown> <Esc>:echo g:hardmodemsg<CR>

inoremap <buffer> <Left> <Esc>:echo g:hardmodemsg<CR>
inoremap <buffer> <Right> <Esc>:echo g:hardmodemsg<CR>
inoremap <buffer> <Up> <Esc>:echo g:hardmodemsg<CR>
inoremap <buffer> <Down> <Esc>:echo g:hardmodemsg<CR>
inoremap <buffer> <PageUp> <Esc>:echo g:hardmodemsg<CR>
inoremap <buffer> <PageDown> <Esc>:echo g:hardmodemsg<CR>

vnoremap <buffer> <Left> <Esc>:echo g:hardmodemsg<CR>
vnoremap <buffer> <Right> <Esc>:echo g:hardmodemsg<CR>
vnoremap <buffer> <Up> <Esc>:echo g:hardmodemsg<CR>
vnoremap <buffer> <Down> <Esc>:echo g:hardmodemsg<CR>
vnoremap <buffer> <PageUp> <Esc>:echo g:hardmodemsg<CR>
vnoremap <buffer> <PageDown> <Esc>:echo g:hardmodemsg<CR>
