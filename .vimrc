"First, set up Vundle
"git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

set nocompatible " be iMproved, required
filetype off     " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" let Vundle manager Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'preservim/nerdtree'


""utility
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'wesQ3/vim-windowswap'
Plugin 'vim-scripts/a.vim'
Plugin 'tpope/vim-commentary'
Plugin 'dense-analysis/ale'
Plugin 'godlygeek/tabular.git'
Plugin 'mattn/emmet-vim'
Plugin 'ctrlpvim/ctrlp.vim'

"Plugin 'valloric/youcompleteme'


Plugin 'Townk/vim-autoclose'
Plugin 'vim-syntastic/syntastic'

""python
Plugin 'tweekmonster/impsort.vim'
Plugin 'nvie/vim-flake8'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'

""theme /interface
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'jnurmine/Zenburn'



call vundle#end()         "required
filetype plugin indent on "required

"autocmd FileType javascript set formatprg=prettier\ --stdin
"autocmd BufWritePre *.js :normal gggqG

" show line numbers
"set number 
set ruler
set encoding=utf-8

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

"Enable Elite mode, no arrows
let g:elite_mode=1

" Disable arrow movement, resize splits instead. 
if get(g:, 'elite_mode')
     nnoremap <Up> :resize +2<CR> nnoremap <Down> :resize -2<CR> nnoremap <Left> :vertical resize +2<CR> nnoremap <Right> :vertical resize -2<CR> 
endif

"enable highlighting of the current line
set cursorline

syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
call togglebg#map("<F5>")

let python_highlight_all=1

"vim airline configuration
let g:airline#etensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g_airline_theme='hybrid'
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_const = 1

" way to change directories
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

"easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Disable Jedi-vim autocompletion and enable call-signatures options
let g:jedi#use_splits_not_buffers = "left"
let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"

" Impsort option
hi pythonImportedObject ctermfg=127
hi pythonImportedFuncDef ctermfg=127
hi pythonImportedClassDef ctermfg=127

" ctrl p options
let g:ctrlp_custom_ignore = '\v\.(npy|jpg|pyc|so|dll)$'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']


map <C-n> :NERDTreeToggle<CR>
" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Pylint configuration file
let g:pymode_lint_ignore = "E501,W"

" ale show errors in airline
let g:airline#extensions#ale#enabled = 1

