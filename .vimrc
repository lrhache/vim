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

Plugin 'Shougo/vimproc'
Plugin 'Shougo/unite.vim'

Plugin 'commentop.vim'
Plugin 'digitaltoad/vim-jade'

Plugin 'moll/vim-node'
Plugin 'godlygeek/tabular'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'surround.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'walm/jshint.vim'

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

" Use Control+d to go the method declaration
nmap <C-d> :YcmCompleter GoToDeclaration<CR>

" NerdTree
let g:NERDTreeWinPos = "right"
let NERDTreeQuitOnOpen=1

" Powerline
let g:Powerline_symbols = 'fancy'

" Airline
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

" ControlP config
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc
let g:ctrlp_show_hidden = 1

" Disable preview window
set completeopt-=preview

" Enable php syntax check 
" let g:php_syntax_extensions_enabled = 1

" Shortcut for json
nmap <C-j> :%!python -m json.tool<CR>

" configure expanding of tabs for various file types
au BufRead,BufNewFile *.py set expandtab
au BufRead,BufNewFile *.c set noexpandtab
au BufRead,BufNewFile *.h set noexpandtab
au BufRead,BufNewFile Makefile* set noexpandtab

" --------------------------------------------------------------------------------
" configure editor with tabs and nice stuff...
" --------------------------------------------------------------------------------
set expandtab           " enter spaces when tab is pressed
autocmd FileType python setlocal textwidth=80       " break lines when line length increases
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


autocmd  FileType  php setlocal omnifunc=phpcomplete_extended#CompletePHP
autocmd Filetype json  inoremap <F5> :update<Bar>execute '!python -m json.tool'<CR>
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype jade setlocal ts=2 sts=2 sw=2

" support clipboard copy/paste when over ssh
" vmap "+y :!xclip -f -sel clip
" map "+p :r!xclip -o -sel clip
"

function ExecuteInstall()
    :PluginInstall
    :q
    :q
endfunction
