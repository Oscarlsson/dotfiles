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

" Longer history
set history=1000

set showcmd

" NO ARROWS!!
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

" Now im using tabs
set showtabline=2 
imap ,t <Esc>:tabnew<CR>

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
" set listchars=tab:>-,trail:·,eol:$
nmap <silent> <leader>s :set nolist!<CR>

" Supertab
let g:SuperTabDefaultCompletionType = "context"

" syntastics
let g:syntastic_check_on_open=1
" let g:syntastic_python_checker="flake8"


"" Add spelling when compiling tex-files
autocmd FileType tex set spell

" Solarized theme
syntax enable
set t_Co=16
let g:solarized_termcolors=16
set background=light
colorscheme solarized
