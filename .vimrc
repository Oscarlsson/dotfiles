set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

let mapleader = ","

" Typos
if has("user_commands")
    command! -bang -nargs=? -complete=file E e<bang> <args>
    command! -bang -nargs=? -complete=file W w<bang> <args>
    command! -bang -nargs=? -complete=file Wq wq<bang> <args>
    command! -bang -nargs=? -complete=file WQ wq<bang> <args>
    command! -bang Wa wa<bang>
    command! -bang WA wa<bang>
    command! -bang Q q<bang>
    command! -bang QA qa<bang>
    command! -bang Qa qa<bang>
endif

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
set laststatus=2
let g:airline_powerline_fonts=1

Plugin 'Raimondi/delimitMate'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'

Bundle 'scrooloose/nerdtree'
nnoremap <Leader>t :NERDTreeToggle<CR>
let g:NERDTreeMinimalUI=1
let g:NERDTreeDirArrows=0


Bundle 'kien/ctrlp.vim'
nnoremap <Leader>p :CtrlP<CR>
nnoremap <Leader>b :CtrlPBuffer<CR>

" Visual
Plugin 'altercation/vim-colors-solarized'
syntax enable
set number
set t_Co=16
set background=dark
let g:solarized_termcolors=16
let g:solarized_termtrans=0
colorscheme solarized

" Longer history
set history=1001
set showcmd

" Tabstuff
set autoindent
set expandtab
set smarttab
set smartcase
set smartindent
set tabstop=2
set shiftwidth=2

autocmd FileType python set tabstop=4 expandtab shiftwidth=4 softtabstop=4


" Config
set noswapfile
" Multiple buffers
set hidden

call vundle#end()            " required
filetype plugin indent on    " required
