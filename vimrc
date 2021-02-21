"         _                    
"  _   __(_)___ ___  __________
" | | / / / __ `__ \/ ___/ ___/
" | |/ / / / / / / / /  / /__  
" |___/_/_/ /_/ /_/_/   \___/  
"
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

filetype off
call vundle#rc()

Plugin 'tpope/vim-fugitive.git'
Plugin 'scrooloose/nerdtree.git'
" Plugin 'Lokaltog/vim-powerline.git'
" Plugin 'powerline/powerline.git'
Plugin 'vim-airline/vim-airline.git'
Plugin 'vim-airline/vim-airline-themes.git'
Plugin 'jiangmiao/auto-pairs.git'
Plugin 'rust-lang/rust.vim.git'
Plugin 'edkolev/tmuxline.vim.git'
Plugin 'ryanoasis/vim-devicons.git'
filetype plugin indent on

let g:airline_theme = 'kalisi'
let g:airline_section_z = ''
let g:airline_extensions = ['branch', 'fugitiveline', 'keymap', 'netrw', 'quickfix', 'term', 'tmuxline', 'wordcount']

map <F1> :set background=dark<CR>
map <F2> :color peachpuff<CR>
map <F3> :color slate<CR>
map <F4> :NERDTreeToggle<CR>
map <F5> :echo 'Time: ' . strftime('%c')<CR>
map <F6> :Tmuxline vim_powerline<CR>

let g:Powerline_symbols = 'fancy'
let g:Powerline_colorscheme = 'solarized256'
