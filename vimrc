set rtp+=~/.vim/bundle/vundle/
syntax on
color peachpuff
set tabstop=4
set softtabstop=4
set number
set incsearch
set hlsearch
set lazyredraw
set mouse=a
set nocompatible  " Disable vi-compatibility
set laststatus=2  " Always show statusline
set encoding=utf-8  " Necessary to show Unicode glyphs
set t_Co=256

set nocompatible
filetype off
call vundle#rc()

Plugin 'tpope/vim-fugitive.git'
Plugin 'scrooloose/nerdtree.git'
Plugin 'Lokaltog/vim-powerline.git'
Plugin 'powerline/powerline.git'
Plugin 'jiangmiao/auto-pairs.git'
Plugin 'rust-lang/rust.vim.git'
Plugin 'edkolev/tmuxline.vim.git'
Plugin 'ryanoasis/vim-devicons.git'
filetype plugin indent on

let g:tmuxline_preset = 'full'

let g:Powerline_symbols = 'fancy'
let g:Powerline_colorscheme = 'solarized256'
