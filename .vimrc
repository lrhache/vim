set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-repeat'
Plugin 'sjl/gundo.vim'
Plugin 'fs111/pydoc.vim'
Plugin 'vim-scripts/pep8'
Plugin 'kevinw/pyflakes-vim'
Plugin 'wincent/Command-T'
Plugin 'plasticboy/vim-markdown'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/powerline'
Plugin 'nanotech/jellybeans.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'python.vim'
Plugin 'elzr/vim-json'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'bling/vim-airline'
Plugin 'rking/ag.vim'

call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
set background=dark
colorscheme jellybeans

map <C-n> :NERDTreeToggle<CR>

" Move around in panes
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Save shortcut
" map <C-w> :w<CR>

" Use tab to switch buffers
map <Tab> :bnext<cr>
map <S-Tab> :bprevious<cr>

" Shortcut to close buffer
map <C-c> :bd<CR>
"map <C-c> ! :bd!<CR>

" Powerline
let g:Powerline_symbols = 'fancy'

" Airline
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

" ControlP config
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc
let g:ctrlp_show_hidden = 1

" configure expanding of tabs for various file types
au BufRead,BufNewFile *.py set expandtab
au BufRead,BufNewFile *.c set noexpandtab
au BufRead,BufNewFile *.h set noexpandtab
au BufRead,BufNewFile Makefile* set noexpandtab

" --------------------------------------------------------------------------------
" configure editor with tabs and nice stuff...
" --------------------------------------------------------------------------------
set expandtab           " enter spaces when tab is pressed
set textwidth=80       " break lines when line length increases
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line

" make backspaces more powerfull
set backspace=indent,eol,start

set ruler                           " show line and column number
syntax on   			" syntax highlighting
set showcmd 			" show (partial) command in status line
set cc=80
set number


autocmd Filetype json  inoremap <F5> :update<Bar>execute '!python -m json.tool'<CR>
