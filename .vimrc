" use pathogen

execute pathogen#infect()
filetype plugin indent on
	
set mouse=a
set number
set autoindent
set expandtab
set smarttab
set tabstop=4
set shiftwidth=4

nmap <silent> <F2> :NERDTreeToggle<CR>

syntax enable
set t_Co=16
let g:solarized_termcolors=16
set background=light
colorscheme solarized
