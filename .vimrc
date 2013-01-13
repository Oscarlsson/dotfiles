" Use pathogen
execute pathogen#infect()
filetype plugin indent on

" CloseTag
autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag/plugin/closetag.vim

" Tabstuff
set mouse=a
set number
set autoindent
set expandtab
set smarttab
set tabstop=4
set shiftwidth=4


" Longer history
set history=1000

set showcmd

" Multiple buffers
set hidden

" Mappings
nmap <silent> <F2> :NERDTreeToggle<CR>
nmap <silent> <F3> :TlistToggle<CR>
let mapleader = ","

" Common dir for backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" toggle whitespaces
set listchars=tab:>-,trail:·,eol:$
nmap <silent> <leader>s :set nolist!<CR>

" Supertab
let g:SuperTabDefaultCompletionType = "context"


" Solarized theme
syntax enable
set t_Co=16
let g:solarized_termcolors=16
set background=light
colorscheme solarized
