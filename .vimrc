set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
""Bundle 'rdnetto/YCM-Generator' 
Plugin 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs' 


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set exrc
set secure


set tags=./tags;/,tags;/


""let g:ycm_confirm_extra_conf='~/.ycm_extra_conf.py'

"" turn on completion in comments
let g:ycm_complete_in_comments=1
"" load ycm conf by default
let g:ycm_confirm_extra_conf=0
"" turn on tag completion
let g:ycm_collect_identifiers_from_tags_files=1
"" only show completion as a list instead of a sub-window
set completeopt-=preview
"" start completion from the first character
let g:ycm_min_num_of_chars_for_completion=1
"" don't cache completion items
let g:ycm_cache_omnifunc=0
"" complete syntax keywords
let g:ycm_seed_identifiers_with_syntax=1
""let g:ycm_enable_diagnostic_highlighting=0 

"	+----------+
"	| behavior |
"	+----------+

set expandtab ts=4 sw=4 ai
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent

set clipboard=unnamedplus

nnoremap <C-l> gt
nnoremap <C-h> gT

map <Leader>n <plug>NERDTreeTabsToggle<CR>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd vimenter * NERDTree
set tags=./tags;/


"	+------------+
"	| appearance |
"	+------------+

set background=dark											"tell vim how background looks like, for tmux
set t_Co=256												"enable 256 colors in vim, for tmux
syntax on										
set number

highlight YcmErrorSign ctermfg=white ctermbg=darkgray
highlight YcmErrorSection ctermfg=white 
"highlight YcmWarningSign ctermbg=235 
"highlight YcmWarningSection ctermbg=235 guibg=#000000
highlight Pmenu ctermfg=15 ctermbg=0 guifg=#ffffff guibg=#000000 


set colorcolumn=120
set cursorline
highlight ColorColumn ctermbg=235 guibg=#2c2d27 
highlight CursorLine cterm=NONE ctermbg=235 guibg=#2c2d27 guifg=white
