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

call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
set background=dark
colorscheme jellybeans

map <C-n> :NERDTreeToggle<CR>
set cc=80
set number

