all: ycm term git xmonad
vim: ~/.vimrc ~/.vim/bundle/vundle ~/.vim/bundle/install
ycm: vim ~/.vim/bundle/YouCompleteMe
term: ~/.zshrc ~/.bashrc ~/.aliases ~/.Xmodmap ~/.xsession ~/.oh-my-zsh ~/.dircolors
xmonad: ~/.xmonad
git: ~/.gitconfig

~/.oh-my-zsh:
	ln -s $(PWD)/oh-my-zsh $@

~/.xmonad:
	ln -s $(PWD)/xmonad $@

~/.gitconfig:
	ln -s $(PWD)/git/gitconfig $@

# TERM
~/.zshrc:
	ln -s $(PWD)/term/zshrc $@

~/.bashrc:
	ln -s $(PWD)/term/bashrc $@

~/.aliases:
	ln -s $(PWD)/term/aliases $@

~/.dircolors:
	ln -s $(PWD)/term/dircolors $@

~/.Xmodmap:
	ln -s $(PWD)/term/Xmodmap	$@

# XMONAD
~/.xsession:
	ln -s $(PWD)/term/xsession $@

# VIM
~/.vimrc: 
	ln -s $(PWD)/vim/.vimrc $@

~/.vim/bundle/vundle:
	git clone git://github.com/gmarik/vundle $@

~/.vim/bundle/install:
	vim +PluginInstall +qall
	mkdir -p ~/.vim/colors
	ln -s ~/.vim/bundle/vim-colors-solarized/colors/solarized.vim ~/.vim/colors
	touch $@

~/.vim/bundle/YouCompleteMe: ~/.vim/bundle/install
	cd ~/.vim/bundle/YouCompleteMe && ./install.sh