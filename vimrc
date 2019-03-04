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

if filereadable(expand("~/.vimrc.plug"))
	source ~/.vimrc.plug
endif

let g:Powerline_symbols = 'fancy'
let g:Powerline_colorscheme = 'solarized256'
