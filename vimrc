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
set scrolloff=8
set scl=yes "Show SignColumn always
highlight clear SignColumn
let g:ale_completion_enabled = 1

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Set theme for lightline
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'https://github.com/preservim/nerdcommenter'  "Easy keybinds for commenting
" Plug 'NLKNguyen/papercolor-theme'
Plug 'https://github.com/jiangmiao/auto-pairs'
Plug 'dense-analysis/ale'
Plug 'https://github.com/ycm-core/YouCompleteMe'    "Autocomplete code
Plug 'https://github.com/itchyny/lightline.vim'     "Fancy bar at bottom
Plug 'tikhomirov/vim-glsl'                          "GLSL syntax highlighting

call plug#end()
