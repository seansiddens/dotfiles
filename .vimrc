syntax on

set noerrorbells
set belloff=all
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
autocmd FileType make set noexpandtab
set smartindent
set nu 
set nowrap 
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set clipboard=unnamedplus
filetype plugin on
set laststatus=2          " Use for light line
set completeopt-=preview  " Disable preview window A


" Set theme for lightline
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'https://github.com/preservim/nerdcommenter'
" Plug 'NLKNguyen/papercolor-theme'
Plug 'https://github.com/jiangmiao/auto-pairs'
"Plug 'dense-analysis/ale'
Plug 'https://github.com/ycm-core/YouCompleteMe'
Plug 'https://github.com/itchyny/lightline.vim'

call plug#end()
