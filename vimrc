set nocompatible
set incsearch
set hlsearch
set number
set cursorline
set cursorcolumn
set tabstop=4
set softtabstop=4
set lazyredraw
set mouse=a
set encoding=utf-8
set t_Co=256
set ttimeoutlen=50
set signcolumn=yes
set scrolloff=3
filetype off
syntax on

if $TERM == 'alacritty'
	set ttymouse=sgr
endif
if $TERM == 'xterm-kitty'
	set ttymouse=sgr
endif
if $TERM == 'foot'
	set ttymouse=sgr
	set t_TI= t_TE=
endif

hi CursorLine term=bold cterm=bold ctermbg=235
hi CursorLineNr term=none cterm=none ctermbg=235 ctermfg=1
hi CursorColumn ctermbg=234 ctermfg=239
hi SignColumn ctermbg=none cterm=bold term=bold
hi Search ctermfg=0 ctermbg=0 cterm=underline term=underline
hi VertSplit ctermbg=0 ctermfg=0
hi Visual ctermbg=14 ctermfg=232
hi LineNr ctermfg=248
hi Folded ctermbg=0 ctermfg=248 cterm=bold term=bold
hi GitGutterAdd ctermfg=2
hi GitGutterAddNr ctermbg=22
hi GitGutterAddLine ctermbg=22
hi GitGutterChange ctermfg=3
hi GitGutterChangeNr ctermbg=94
hi GitGutterChangeLine ctermbg=22
hi GitGutterDelete ctermfg=1
hi GitGutterDeleteNr ctermbg=88
hi GitGutterDeleteLine ctermbg=88

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'jiangmiao/auto-pairs'
Plugin 'ryanoasis/vim-devicons'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'

call vundle#end()
filetype plugin indent on

let g:airline_theme = 'distinguished'
let g:airline_section_x = ' %{&filetype . " " . WebDevIconsGetFileTypeSymbol()} '
let g:airline_section_z = ''
let g:airline_section_y = ' %{&fenc . " " . WebDevIconsGetFileFormatSymbol()} '
let g:airline_section_c_only_filename = 1
let g:airline#extensions#whitespace#checks = ['']
let g:gitgutter_set_sign_backgrounds = 0
let g:gitgutter_highlight_lines = 1
let g:gitgutter_highlight_linenrs = 1

