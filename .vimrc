"First, set up Vundle
"git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

set nocompatible " be iMproved, required
filetype off     " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" let Vundle manager Vundle, required
Plugin 'VundleVim/Vundle.vim'


"utility

"Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
"Plugin 'majutsushi/tagbar'
Plugin 'wesQ3/vim-windowswap'
Plugin 'vim-scripts/a.vim'
"Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
"Plugin 'honza/vim-snippets'

"generic programming support
"Plugin 'jakedouglas/exuberant-ctags'
Plugin 'Townk/vim-autoclose'
"Plugin 'Valloric/YouCompleteMe'



"theme /interface
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ajh17/Spacegray.vim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'altercation/vim-colors-solarized'



call vundle#end()         "required
filetype plugin indent on "required

" show line numbers
set number 
set ruler

let mapleader=","

set nowrap
set tabstop=4
set backspace=indent,eol,start
set autoindent
set copyindent
set shiftwidth=4
set shiftround
set showmatch
set ignorecase
set smartcase
set smarttab
set hlsearch
set incsearch

set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc,*.class
set title
set visualbell
set noerrorbells

set nobackup
set noswapfile

"Always display the status line
set laststatus=2

"Enable Elite mode, no arros
let g:elite_mode=1

" Disable arrow movement, resize splits instead. 
if get(g:, 'elite_mode')
     nnoremap <Up> :resize +2<CR> nnoremap <Down> :resize -2<CR> nnoremap <Left> :vertical resize +2<CR> nnoremap <Right> :vertical resize -2<CR> 
endif

"enable highlighting of the current line
set cursorline

"theme and styling
set t_Co=256
set background=dark

if (has("termguicolors"))
    set termguicolors
endif

let base16colorspace=256 "access colors present in 256 colorspace
syntax enable
set background=dark
colorscheme solarized

let g:spacegray_underline_search = 1
let g:spacegray_italicize_comments = 1

"vim airline configuration
let g:airline#etensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g_airline_theme='hybrid'
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_const = 1

" mappings configuration
map <C-n> :NERDTreeToggle<CR>
map <C-m> :TagbarToggle<CR>

" way to change directories
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

"easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l




