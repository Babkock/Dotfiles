"         _                    
"  _   __(_)___ ___  __________
" | | / / / __ `__ \/ ___/ ___/
" | |/ / / / / / / / /  / /__  
" |___/_/_/ /_/ /_/_/   \___/  
"
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
filetype off
syntax on

hi CursorLine term=bold cterm=bold ctermbg=235
hi CursorLineNr term=none cterm=none ctermbg=235 ctermfg=1
hi CursorColumn ctermbg=234 ctermfg=239
hi SignColumn ctermbg=none cterm=bold term=bold
hi Search ctermfg=0 ctermbg=9 cterm=underline term=underline
hi VertSplit ctermbg=0 ctermfg=0
hi Visual ctermbg=14 ctermfg=232
hi LineNr ctermfg=248
hi Folded ctermbg=0 ctermfg=248 cterm=bold term=bold
hi GitGutterAdd ctermfg=2
hi GitGutterAddNr ctermbg=22 ctermfg=2
hi GitGutterAddLine ctermbg=22 ctermfg=2
hi GitGutterChange ctermfg=3
hi GitGutterChangeNr ctermbg=94 ctermfg=3
hi GitGutterChangeLine ctermbg=94 ctermfg=3
hi GitGutterDelete ctermfg=1
hi GitGutterDeleteNr ctermbg=88 ctermfg=1
hi GitGutterDeleteLine ctermbg=88 ctermfg=1

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'jiangmiao/auto-pairs'
Plugin 'ryanoasis/vim-devicons'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
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

nmap [. <Plug>(GitGutterPrevHunk)
nmap ]. <Plug>(GitGutterNextHunk)
nmap <F2> :GitGutterLineHighlightsToggle<CR>

