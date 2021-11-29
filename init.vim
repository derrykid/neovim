" <CR> is enter in normal mode
"


syntax on                                                                                                                    
set nocompatible
filetype indent on
filetype plugin on
filetype plugin indent on

set encoding=utf-8

set tabstop=4
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents set clipboard=unnamedplus   " using system clipboard

set laststatus=2
set autoindent              " indent a new line the same amount as the line just typed

set number
set relativenumber
set cursorline
set wrap
set showcmd
set wildmenu
set scrolloff=7
set hlsearch                " highlight search 
set spell spelllang=en_us
set cursorline              " highlight current cursorline
set ignorecase
set smartcase


set showmatch               " show matching 
set incsearch               " incremental search

let mapleader=" "

nnoremap <Leader>o o<Esc>0"_D
nnoremap <Leader>O O<Esc>0"_D
nnoremap <Leader>n :set nonumber<CR>:set norelativenumber<CR>
nnoremap <Leader>N :set number<CR>:set relativenumber<CR>

" markdown shortcut 
inoremap <buffer> ,` ```<Enter>```<Esc>O
inoremap <buffer> ,1 #<Space>
inoremap <buffer> ,2 ##<Space>
inoremap <buffer> ,3 ###<Space>
inoremap <buffer> ,4 ####<Space>
inoremap <buffer> ,5 #####<Space>
inoremap <buffer> ,6 ######<Space>
inoremap <buffer> ,b **** <++><Esc>hhhhhhi
inoremap <buffer> ,i ** <++><Esc>hhhhhi
inoremap <buffer> ,e <Esc>/<++><CR>:nohlsearch<CR>c4l
inoremap <buffer> ,l [](<++>)<Esc>hhhhhhi
inoremap <buffer> ,im ![](<++>) <++><Esc>11hi

" Distraction-free
map <Leader>g :Goyo<CR>

" Markdown preview
    let g:mkdp_path_to_chrome = "/usr/bin/firefox"
    let g:mkdp_browserfunc = ''
    let g:mkdp_auto_start = 0
    let g:mkdp_auto_open = 0
    let g:mkdp_auto_close = 1
    let g:mkdp_refresh_slow = 0
    let g:mkdp_command_for_global = 0
    let g:mkdp_open_to_the_world = 0

                nmap <silent> <F8> <Plug>MarkdownPreview
                nmap <silent> <F9> <Plug>StopMarkdownPreview

call plug#begin('~/.vim/plugged')

" Distraction-free mode
Plug 'junegunn/goyo.vim'

" Markdown preview
Plug 'iamcco/markdown-preview.vim'

"vim-table-mode
Plug 'dhruvasagar/vim-table-mode'

" For Vim-Plug
Plug 'EdenEast/nightfox.nvim'

" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Show color in vim
Plug 'ap/vim-css-color'

call plug#end()


" colorscheme
" Night Fox menu
" https://github.com/EdenEast/nightfox.nvim

colorscheme palefox

